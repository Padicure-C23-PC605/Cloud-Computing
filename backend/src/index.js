import express from "express"
import router from "./routes/route.js";
import bodyParser from "body-parser";

import path from 'path'; //perlu hapus
import { fileURLToPath } from 'url';

//perlu hapus
const __filename = fileURLToPath(import.meta.url);

const __dirname = path.dirname(__filename);
//----------------------------------------------------
const app = express();


app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: false}))

app.get("/", (req, res) => {
    res.send("Welcome to Padicure API");
})

//hapus
/* app.get("/", (req, res) => {
    res.sendFile('index.html', { root: path.join(__dirname, '../../frontend') });
}) */
//-------------------------
app.use(router);

app.listen(4000, () => {
    console.log('Server berhasil dijalankan pada port 4000');
})