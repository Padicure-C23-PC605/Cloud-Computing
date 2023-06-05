import { Sequelize } from "sequelize";


// Connect to MySQL GCP
const db = new Sequelize('padicure_db', 'root', 'root', {
    host: '34.128.75.27',
    dialect: "mysql"
})

export default db;