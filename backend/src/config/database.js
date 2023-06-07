import { Sequelize } from "sequelize";


// Connect to MySQL GCP
const db = new Sequelize('padicure_db', 'root', 'root', {
    host: '34.101.67.98',
    dialect: "mysql"
})

export default db;