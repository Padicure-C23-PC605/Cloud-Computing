import mysql2 from "mysql2";
import { Sequelize } from "sequelize";
//connect database
//masi coba coba db local
export const db = mysql2.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'padicure_db'
})
//connect to mysql gcp
/* cost db = new Sequelize('padicure_db', 'user', 'password', {
    host: 'localhost',
    dialect: "mysql"
})

export default db; */