from flask import Flask, request, jsonify
import numpy as np
import tensorflow as tf
from keras.models import load_model
from tensorflow.keras.preprocessing.image import load_img,img_to_array
import tempfile
import h5py
import gcsfs
from google.cloud import storage
from google.oauth2 import service_account


app = Flask(__name__)

PROJECT_NAME = 'capstone-project'
CREDENTIALS = 'gcloud.json'
# MODEL_PATH = 'gs://contoh_padicure/model/Model.h5'
# FS = gcsfs.GCSFileSystem(project=PROJECT_NAME, token=CREDENTIALS)
# with FS.open(MODEL_PATH, 'rb') as model_file:
#      model_gcs = h5py.File(model_file, 'r')

model = load_model('Model.h5')

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
    

    # Save file to temp folder
    # temp_file = tempfile.NamedTemporaryFile(delete=False)
    # file.save(temp_file.name)
    blob = bucket.blob('public/uploads/'+ file.filename)
    blob.upload_from_filename(file.name)
    image_url = blob.public_url

    # Read and preprocess the image
    image = load_img(file.name,target_size=(224,224,3))
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

    # Return the prediction result as a JSON response
    result = {
        'predicted_class': pred, 
        'confidence': str(conf) + '%',
        'image_url' :image_url
        }
    
    return jsonify(result)
    

if __name__ == '__main__':
    app.run(debug=True)