import express from "express"
import router from "./routes/route.js";

const app = express();

app.get("/", (req, res)=>{
    res.send("Welcome to Padicure API");
})

app.use(router);

app.listen(4000,()=>{
    console.log('Server berhasil dijalankan pada port 4000');
})