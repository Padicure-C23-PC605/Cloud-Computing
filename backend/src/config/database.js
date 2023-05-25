import mysql2 from "mysql2";
//connect database
//masi coba coba db local
export const pool = mysql2.createPool({
    connectionLimit : 10,
    host : 'localhost',
    user : 'root',
    password :'',
    database :'infokan'
})