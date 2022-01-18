import {v4 as uuidv4} from 'uuid'
//import users from '../models/User.js'
import mysql from 'mysql'

//konekcija sa bazom
const pool = mysql.createPool({
    connectionLimit: 100,
    host: 'localhost',
    user: 'root',
    password: 'root54',
    database: 'skript_projekat'
})

//create user
export const createZaposleni = (req, res) => {
    let query = "insert into zaposleni (ime, prezime, email, tip) values (?, ?, ?, ?)";
    let formated = mysql.format(query, [req.body.ime, req.body.prezime, req.body.email, req.body.tip]);

    pool.query(formated, (err, response) => {
        if (err)
            res.status(500).send(err.sqlMessage);
        else {
            // Ako nema greske dohvatimo kreirani objekat iz baze i posaljemo ga korisniku
            query = 'select * from zaposleni where id=?';
            formated = mysql.format(query, [response.id]);

            pool.query(formated, (err, rows) => {
                if (err)
                    res.status(500).send(err.sqlMessage);
                else
                    res.send(rows[0]);
            });
        }
    });
}

//Get all users
export const getAllZaposleni = (req, res) => {
    pool.query('select * from zaposleni', (err, rows) => {
        if (err)
            res.status(500).send(err.sqlMessage);  // Greska servera
        else
            res.send(rows);
    })
}

//Get one user
export const getOneZaposleni = (req, res) => {
    let query = 'select * from zaposleni where id=?';
    let formated = mysql.format(query, [req.params.id]);

    pool.query(formated, (err, rows) => {
        if (err)
            res.status(500).send(err.sqlMessage);
        else
            res.send(rows[0]);
    });
}

//Update user
export const updateZaposleni = (req, res) => {
    let query = "update zaposleni set ime=?, prezime=?, email=?, tip=? where id=?";
    let formated = mysql.format(query, [req.body.ime, req.body.prezime, req.body.email, req.body.tip, req.params.id]);

    pool.query(formated, (err, response) => {
        if (err)
            res.status(500).send(err.sqlMessage);
        else {
            query = 'select * from zaposleni where id=?';
            formated = mysql.format(query, [req.params.id]);

            pool.query(formated, (err, rows) => {
                if (err)
                    res.status(500).send(err.sqlMessage);
                else
                    res.send(rows[0]);
            });
        }
    });
}

//Delete user
export const deleteZaposleni = (req, res) => {
    let query = 'select * from zaposleni where id=?';
    let formated = mysql.format(query, [req.params.id]);

    pool.query(formated, (err, rows) => {
        if (err)
            res.status(500).send(err.sqlMessage);
        else {
            let poruka = rows[0];

            let query = 'delete from zaposleni where id=?';
            let formated = mysql.format(query, [req.params.id]);

            pool.query(formated, (err, rows) => {
                if (err)
                    res.status(500).send(err.sqlMessage);
                else
                    res.send(poruka);
            });
        }
    });
}