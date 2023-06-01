//blm fix

import item from "../models/homepage.js";

export const getPadi = async (req, res) => {
    try {
        const response = await item.findAll({
            attributes: ["id", "name", "image"],
        });
        res.json(response);
    }
    catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal Server Error" });
    }
}

export const detail = async (req, res) => {
    try {
        const response = await item.findOne({
            attributes: ["name", "image", "description", "howtocure"],
            where: {
                id: req.params.id
            }
        });
        res.json(response);
    }
    catch (error) {
        console.log(error);
        res.status(500).json({ message: "Internal Server Error" });
    }
    /* db.getConnection((err, connection) => {
        if(err) throw err
        console.log('connected as id ' + connection.threadId)
        connection.query('SELECT item from item WHERE id=?', [req.params.id], (err, rows) => {
            connection.release() // return the connection to pool

            if (!err) {
                res.send(rows)
            } else {
                console.log(err)
            }

            // if(err) throw err
            console.log('The data from menu table are: \n', rows)
        })
    }) */
}

export const history = async (req, res) => {
    try {
        res.status(200).json({
            msg: 'tes history'
        });
    } catch (error) {
        res.status(500).send(`Error, ${error}`);
    }
};

