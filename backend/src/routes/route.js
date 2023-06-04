import express from "express";
import {getPadi, detail} from "../controllers/homepage.js"

const router = express.Router();

router.get("/homepage", getPadi);
router.get("/detail/:id", detail);

export default router;