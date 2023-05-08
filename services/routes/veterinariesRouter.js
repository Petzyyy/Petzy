const express = require("express")
const router=express.Router()
const{getAll,addVet,updateVet,getOne,deletevet}=require("../controller/veterinariesControler")


router.get("/getAll",getAll)
router.post("/addVet",addVet)
router.put("/updateVet/:id",updateVet)
router.get("/getOne/:id",getOne)
router.delete("/deletevet/:id",deletevet)
module.exports = router