import { format } from "util";
import { uploadGoogleStorage, bucket } from "../middlewares/multer.js";
import uploadFromUser from "../models/upload.js";
import { getAuth, onAuthStateChanged } from "@firebase/auth";

export const upload = async (req, res) => {
    try {   
        await uploadGoogleStorage(req, res);
        
        if (!req.file) {
            return res.status(400).send({ message: "Please upload a file!" });
        }
        const blob = bucket.file("public/uploads/" + req.file.originalname.replace("",  `padicure-${Date.now()}-`));
        const blobStream = blob.createWriteStream({
            metadata:{contentType: req.file.mimetype} ,
            resumable: false,
        });
        blobStream.on("error", (err) => {
            res.status(500).send({ message: err.message });
        });

        blobStream.on("finish", async (data) => {
            const publicUrl = format(
                `https://storage.googleapis.com/${bucket.name}/${blob.name}`
            );
            await uploadFromUser.create({
                //butuh user id dari firebase auth
                image: publicUrl,
            });
            
            res.status(200).send({
                message: "Uploaded the file successfully: " + req.file.originalname.replace("",  `padicure-${Date.now()}-`),
                url: publicUrl,
            });
        });

        blobStream.end(req.file.buffer);
    } catch (err) {
        console.log(err);
    
        if (err.code == "LIMIT_FILE_SIZE") {
          return res.status(500).send({
            message: "File size cannot be larger than 5MB!",
          });
        }
    
        res.status(500).send({
          message: `Could not upload the file ${err}`,
        });
      }
    };

export const getUploadFiles = async(req, res) =>{
    try {
        const response = await uploadFromUser.findAll({
            attributes: ["image"],
        });
        res.json(response);
    }
    catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal Server Error" });
    }
};

/* const auth = getAuth();
onAuthStateChanged(auth, (user) => {
    if (user) {
        console.log('user logged in: ', user);
        db.collection('guides').get().then(snapshot => {
          setupGuides(snapshot.docs);
        });
      } else {
        console.log('user logged out');
        setupGuides([]);
      }
    }) */

/* export const getListFiles = async (req, res) => {
    try {
        const [files] = await bucket.getFiles();
        let fileInfos = [];

        files.forEach((file) => {
            fileInfos.push({
                name: file.name,
                url: file.metadata.mediaLink,
            });
        });

        res.status(200).send(fileInfos);
    } catch (err) {
        console.log(err);

        res.status(500).send({
            message: "Unable to read list of files!",
        });
    }
}; */
