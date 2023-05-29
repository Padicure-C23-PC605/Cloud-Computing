import multer from "multer";
import path from "path";
import fs from "fs";
import { Storage } from "@google-cloud/storage";

const pathKey = path.resolve('./gcloud.json')

// TODO: Sesuaikan konfigurasi Storage
const gcs = new Storage({
    projectId: 'radiant-voyage-387409',
    keyFilename: pathKey
})

// TODO: Tambahkan nama bucket yang digunakan
const bucketName = 'contoh_padicure'
const bucket = gcs.bucket(bucketName)

function getPublicUrl(filename) {
    return 'https://storage.googleapis.com/' + bucketName + '/' + filename;
}

export let ImgUpload = {}

ImgUpload.uploadToGcs = (req, res, next) => {
    if (!req.file) return next()

    const gcsname = dateFormat(new Date(), "yyyymmdd-HHMMss")
    const file = bucket.file(gcsname)

    const stream = file.createWriteStream({
        metadata: {
            contentType: req.file.mimetype
        }
    })

    stream.on('error', (err) => {
        req.file.cloudStorageError = err
        next(err)
    })

    stream.on('finish', () => {
        req.file.cloudStorageObject = gcsname
        req.file.cloudStoragePublicUrl = getPublicUrl(gcsname)
        next()
    })

    stream.end(req.file.buffer)
}



export const uploadGoogleStorage = multer({
  storage: multer.MemoryStorage,
  fileSize: 5 * 1024 * 1024
})

export const uploadImage = async (req, res) => {
  const data = req.body
  if (req.file && req.file.cloudStoragePublicUrl) {
      data.imageUrl = req.file.cloudStoragePublicUrl
  }

  res.send(data)
}

