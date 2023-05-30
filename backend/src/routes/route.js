import express from "express";
import {getPadi, detail, history} from "../controllers/homepage.js"
import {upload, getListFiles, download} from "../controllers/item.js"


const router = express.Router();

router.get("/homepage", getPadi);
router.get("/detail/:id", detail);
router.get("/history",history);


router.post("/upload",upload);
router.get("/files", getListFiles);
router.get("/files/:name", download);
export default router;