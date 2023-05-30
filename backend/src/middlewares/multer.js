import multer from "multer";
import util from "util";
import { Storage } from "@google-cloud/storage";

export const storage = new Storage({
    projectId: "radiant-voyage-387409",
    keyFilename: "../gcloud.json",
});

const processFile = multer({
    storage: multer.memoryStorage(),
    limits: { fileSize: 5 * 1024 * 1024 },
}).single("file");

export const uploadGoogleStorage = util.promisify(processFile);






