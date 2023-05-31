import express from "express";
import {getPadi, detail, history} from "../controllers/homepage.js"
import {upload, getListFiles, getUploadFiles} from "../controllers/item.js"


const router = express.Router();

router.get("/homepage", getPadi);
router.get("/detail/:id", detail);
router.get("/history",history);


router.post("/upload",upload);
router.get("/files", getUploadFiles);

export default router;