import { Sequelize } from "sequelize";
import db from "../config/database.js";

const {DataTypes} = Sequelize;

const uploadFromUser = db.define('upload', {
    image: DataTypes.STRING, 
}, {
    freezeTableName: true
});


export default uploadFromUser;

(async()=>{
    await db.sync();
})