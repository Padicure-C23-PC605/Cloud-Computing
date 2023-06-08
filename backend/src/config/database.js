import { Sequelize } from "sequelize";


// Connect to MySQL GCP
const db = new Sequelize('padicure_db', 'root', '', {
    host: '',
    dialect: "mysql"
})

export default db;