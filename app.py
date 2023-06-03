from flask import Flask, request, jsonify
import numpy as np
import tensorflow as tf
from keras.models import load_model
from tensorflow.keras.preprocessing.image import load_img,img_to_array
import tempfile
import h5py
import gcsfs
from google.cloud import storage
import uuid
import mysql.connector
import requests


app = Flask(__name__)
# Config Database (incase kalo butuh)
try:
    mydb = mysql.connector.connect(
  host = "localhost",
  user = "root",
  password = "",
  database = "padicure_db"
)
    print(mydb)
    mycursor = mydb.cursor()
except OSError as e:
    print(e)

# Get Model from Google Cloud Storage
PROJECT_NAME = 'capstone-project'
CREDENTIALS = 'gcloud.json'
MODEL_PATH = 'gs://contoh_padicure/model/Model.h5'
FS = gcsfs.GCSFileSystem(project=PROJECT_NAME, token=CREDENTIALS)
with FS.open(MODEL_PATH, 'rb') as model_file:
     model_gcs = h5py.File(model_file, 'r')

model = load_model(model_gcs)

client = storage.Client.from_service_account_json(CREDENTIALS)

bucket = storage.Bucket(client, 'contoh_padicure')

@app.route('/predict', methods=['POST'])
def predict():
    class_names = ['BrownSpot', 'Healthy', 'Hispa', 'LeafBlast']
    # Get the uploaded image from the request
    if 'file' not in request.files:
        return 'No file part in the request'
    
    file = request.files['file']

    if file.filename == '':
        return 'No selected file'   

    # Save file to temp folder & Upload to Google Cloud Storage
    id1 = uuid.uuid1()
    s = str(id1)
    temp_file = tempfile.NamedTemporaryFile(delete=False)
    file.save(temp_file.name)
    blob = bucket.blob('public/uploads/padicure-' + s + '-' + file.filename)
    blob.cache_control = 'no-cache'
    blob.upload_from_filename(temp_file.name, content_type='image')
    image_url = blob.public_url

    # Read and preprocess the image
    image = load_img(temp_file.name,target_size=(224,224,3))
    x = img_to_array(image)
    x = x/255.0
    x = np.expand_dims(x, axis=0)
    images = np.vstack([x])

    # Perform the prediction using the loaded model
    pred = model.predict(images)

    # Get the predicted class and confidence score
    if np.max(pred) > 0.6:
        conf = round(np.max(pred)*100)
        pred = class_names[np.argmax(pred)]
    else:
        conf = round(np.max(pred)*100) 
        pred = "Label is Unknown"

    # Insert image url to sql
    sql = "INSERT INTO upload (id, image, createdAt, updatedAt) VALUES (%s, %s, %s, %s)"
    val = ('',image_url,'','')
 
    mycursor.execute(sql, val)
    mydb.commit()
 
    print(mycursor.rowcount, "details inserted")
 
    # Disconnecting from server
    mydb.close()

    # Return the prediction result as a JSON response
    result = {
        'predicted_class': pred, 
        'confidence': str(conf) + '%',
        'image_url' :image_url
        }
   
    return jsonify(result)

if __name__ == '__main__':
    app.run(port = 5000, debug=True)