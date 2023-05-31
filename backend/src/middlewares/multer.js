import multer from "multer";
import util from "util";
import path from "path";
import { Storage } from "@google-cloud/storage";

export const cloudStorage = new Storage({
    projectId: "radiant-voyage-387409",
    keyFilename: "../gcloud.json",
});

//TODO : ganti nama bucket
export const bucket = cloudStorage.bucket("contoh_padicure");

const processFile = multer({
    storage: multer.memoryStorage(),
    limits: { fileSize: 5 * 1024 * 1024 },
}).single("file");

export const uploadGoogleStorage = util.promisify(processFile);





