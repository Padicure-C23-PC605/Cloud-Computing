import { Sequelize } from "sequelize";
import db from "../config/database.js";

const {DataTypes} = Sequelize;

const item = db.define('item', {
    name: DataTypes.STRING,
    image: DataTypes.STRING, 
    description: DataTypes.STRING, 
    howtocure: DataTypes.STRING
}, {
    freezeTableName: true
});



export default item;

(async()=>{
    await db.sync();
})