# Cloud-Computing

Endpoint Homepage  
https://home-dqo6vd65jq-et.a.run.app  
https://home-dqo6vd65jq-et.a.run.app/homepage  
https://home-dqo6vd65jq-et.a.run.app/detail/1-4  

Endpoint Predict  
https://predict-dqo6vd65jq-et.a.run.app/predict  


## API Documentation

### Padicure Homepage API
#### Endpoint :
> https://home-dqo6vd65jq-et.a.run.app

### Homepage:
* URL
    - /homepage
* Method
    - GET
* Request Body
    * 
* Response
    > 200 OK
    ```json
    {
            "id": 1,
            "name": "Brown Spot",
            "image": "https://storage.googleapis.com/cs_padicure/public/items/BrownSpot.jpg"
        },
        {
            "id": 2,
            "name": "Healthy",
            "image": "https://storage.googleapis.com/cs_padicure/public/items/BrownSpot.jpg"
        },
        {
            "id": 3,
            "name": "Hispa",
            "image": "https://storage.googleapis.com/cs_padicure/public/items/Hispa.jpg"
        },
        {
            "id": 4,
            "name": "Leaf Blast",
            "image": "https://storage.googleapis.com/cs_padicure/public/items/LeafBlast.jpg"
        }
    ```
(Ini Gambar)    
    
### Detail:
* URL
    - /detail/1
* Method
    - GET
* Request Body
    * 
* Response
    > 200 OK
    ```json
    {
    "name": "Brown Spot",
    "image": "https://storage.googleapis.com/cs_padicure/public/items/BrownSpot.jpg",
    "description": "ini Brown Spot",
    "howtocure": "- Use resistant varieties. \r\n- Contact your local agriculture office for up-to-date lists of varieties available.\r\n- Use fungicides (e.g., iprodione, propiconazole, azoxystrobin, trifloxystrobin, and carbendazim) as seed treatments.\r\n- Treat seeds with hot water (53−54°C) for 10−12 minutes before planting, to control primary infection at the seedling stage. To increase effectiveness of treatment, pre-soak seeds in cold water for eight hours."  
    }
    ```  
    
 
