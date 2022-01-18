import express from 'express'

//importi svih controllera
import { createUser } from '../controllers/user_controller.js'
import { getAllUser } from '../controllers/user_controller.js'
import { getOneUser } from '../controllers/user_controller.js'
import { updateUser } from '../controllers/user_controller.js'
import { deleteUser } from '../controllers/user_controller.js'

import { createZaposleni } from '../controllers/zaposleni_controller.js'
import { getAllZaposleni } from '../controllers/zaposleni_controller.js'
import { getOneZaposleni } from '../controllers/zaposleni_controller.js'
import { updateZaposleni } from '../controllers/zaposleni_controller.js'
import { deleteZaposleni } from '../controllers/zaposleni_controller.js'

import { createProstorije } from '../controllers/prostorija_controller.js'
import { getAllProstorije } from '../controllers/prostorija_controller.js'
import { getOneProstorije } from '../controllers/prostorija_controller.js'
import { updateProstorije } from '../controllers/prostorija_controller.js'
import { deleteProstorije } from '../controllers/prostorija_controller.js'

import { createTrening } from '../controllers/trening_controller.js'
import { getAllTrening } from '../controllers/trening_controller.js'
import { getOneTrening } from '../controllers/trening_controller.js'
import { updateTrening } from '../controllers/trening_controller.js'
import { deleteTrening } from '../controllers/trening_controller.js'

import { createMasaza } from '../controllers/masaza_controller.js'
import { getAllMasaza } from '../controllers/masaza_controller.js'
import { getOneMasaza } from '../controllers/masaza_controller.js'
import { updateMasaza } from '../controllers/masaza_controller.js'
import { deleteMasaza } from '../controllers/masaza_controller.js'

const router = express.Router()


//rute za user-a

router.get('/user', getAllUser)

//get single user
router.get('/user/:id', getOneUser)

//create user
router.post('/user', createUser)

// //update member
router.put('/user/:id', updateUser)

// //delete user
router.delete('/user/:id', deleteUser)


//rute za zaposlene

router.get('/zaposleni', getAllZaposleni)

//get single zaposleni
router.get('/zaposleni/:id', getOneZaposleni)

//create zaposleni
router.post('/zaposleni', createZaposleni)

// //update zaposleni
router.put('/zaposleni/:id', updateZaposleni)

// //delete zaposleni
router.delete('/zaposleni/:id', deleteZaposleni)


//rute za prostorije

router.get('/prostorije', getAllProstorije)

//get single prostorije
router.get('/prostorije/:id', getOneProstorije)

//create prostorije
router.post('/prostorije', createProstorije)

//update prostorije
router.put('/prostorije/:id', updateProstorije)

//delete prostorije
router.delete('/prostorije/:id', deleteProstorije)


//rute za treninge

router.get('/trening', getAllTrening)

//get single trening
router.get('/trening/:id', getOneTrening)

//create trening
router.post('/trening', createTrening)

//update trening
router.put('/trening/:id', updateTrening)

//delete trening
router.delete('/trening/:id', deleteTrening)


//rute za masaze

router.get('/masaza', getAllMasaza)

//get single masaza
router.get('/masaza/:id', getOneMasaza)

//create masaza
router.post('/masaza', createMasaza)

//update masaza
router.put('/masaza/:id', updateMasaza)

//delete masaza
router.delete('/masaza/:id', deleteMasaza)


export default router