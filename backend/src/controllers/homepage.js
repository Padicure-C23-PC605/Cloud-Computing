//blm fix

import {db} from "../config/database.js"

export const getPadi = async (req,res)=>{
    try{
        res.status(200).json ({
            msg:'tes getPadi'
        })
    }
    catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal Server Error" });
    }
}

export const detail = async (req,res)=>{
    db.getConnection((err, connection) => {
        if(err) throw err
        console.log('connected as id ' + connection.threadId)
        connection.query('SELECT * from item WHERE id=?', [req.params.id], (err, rows) => {
            connection.release() // return the connection to pool

            if (!err) {
                res.send(rows)
            } else {
                console.log(err)
            }

            // if(err) throw err
            console.log('The data from menu table are: \n', rows)
        })
    })
}

export const history = async (req, res) => {
    try {
      res.status(200).json({
        msg:'tes history'
      });
    } catch (error) {
      res.status(500).send(`Error, ${error}`);
    }
  };