from flask import Flask, request, jsonify
import h5py
import numpy as np
from tensorflow import keras
from PIL import Image
import io

app = Flask(__name__)

model = None  # Global variable to store the model

def load_model():
    global model
    model = keras.models.load_model('Model.h5')

load_model()  # Load the model when the application starts

@app.route('/predict', methods=['GET', 'POST'])
def predict():
    if request.method == 'POST':
        # Get the uploaded image from the request
        uploaded_file = request.files['file']

        # Read and preprocess the image
        image = Image.open(uploaded_file)
        image = image.resize((256, 256))  # Resize the image if necessary
        image = np.array(image) / 255.0  # Normalize the image pixels
        image = np.expand_dims(image, axis=0)  # Add an extra dimension

        # Perform the prediction using the loaded model
        prediction = model.predict(image)

        # Get the predicted class and confidence score
        predicted_class = np.argmax(prediction)
        confidence = prediction[0][predicted_class]

        # Map the predicted class index to the class names
        class_names = ['brownspot', 'healthy', 'hispa', 'leafblast']
        predicted_class_name = class_names[predicted_class]

        # Return the prediction result as a JSON response
        result = {'predicted_class': predicted_class_name, 'confidence': float(confidence)}
        return jsonify(result)
    elif request.method == 'GET':
        return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True)
