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
}


