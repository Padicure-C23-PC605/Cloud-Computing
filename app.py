from flask import Flask, request, jsonify
import numpy as np
import tensorflow as tf
from keras.models import load_model
from tensorflow.keras.preprocessing.image import load_img,img_to_array
import tempfile

app = Flask(__name__)

model = load_model('ML/Model/Model.h5')

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
    temp_file = tempfile.NamedTemporaryFile(delete=False)
    file.save(temp_file.name)

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

    # Return the prediction result as a JSON response
    result = {
        'predicted_class': pred, 
        'confidence': str(conf) + '%'
        }
    
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)
