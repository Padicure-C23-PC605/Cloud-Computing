import express from "express"
import router from "./routes/route.js";
import bodyParser from "body-parser";
import cors from "cors";


const app = express();

app.use (cors());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.get("/", (req, res) => {
    res.send("Welcome to Padicure API");
})

app.use(router);

app.listen(4000, () => {
    console.log('Server berhasil dijalankan pada port 4000');
})