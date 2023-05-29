import express from "express";
import {getPadi, detail, history} from "../controllers/homepage.js"
import {ImgUpload,uploadImage, uploadGoogleStorage} from "../controllers/item.js";

const router = express.Router();

router.get("/homepage", getPadi);
router.get("/detail/:id", detail);
router.get("/history",history);


router.post("/uploadImage", uploadGoogleStorage.single('image'), ImgUpload.uploadToGcs, uploadImage);
export default router;