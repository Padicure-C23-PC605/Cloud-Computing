import { Sequelize } from "sequelize";
//connect database

//connect to mysql gcp
const db = new Sequelize('padicure_db', 'root', '', {
    host: 'localhost',
    dialect: "mysql"
})

export default db;