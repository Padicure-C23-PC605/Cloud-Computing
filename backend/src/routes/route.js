import express from "express";
import {getPadi, detail, history} from "../controllers/homepage.js"
const router = express.Router();

router.get("/homepage", getPadi);
router.get("/detail/:id", detail);
router.get("/history",history)

export default router;