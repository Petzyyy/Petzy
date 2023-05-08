const express = require("express")
const router=express.Router()
const{getAll,addpet,updatepet,getUserPets,deletepet}=require("../controller/petsController")


router.get("/getAll",getAll)
router.post("/addpet",addpet)
router.put("/updatepet/:id",updatepet)
router.get("/getUserPets/:user_id",getUserPets)
router.delete("/deletepet/:id",deletepet)
module.exports = router