import express from "express";
import {getPadi, detail, history} from "../controllers/homepage.js"
/* import { predict } from "../controllers/upload.js"; */
/* import {upload, getUploadFiles} from "../controllers/upload.js" */


const router = express.Router();

router.get("/homepage", getPadi);
router.get("/detail/:id", detail);
router.get("/history",history);


/* router.post("/predict", predict) */
/* router.post("/upload",upload);
router.get("/files", getUploadFiles); */

export default router;