const express = require("express")
const router=express.Router()
const{getAll,addfreelencer,updatefreelencer,getOne,deletefreelencer}=require("../controller/freelencerController")


router.get("/getAll",getAll)
router.post("/addfreelencer",addfreelencer)
router.put("/updatefreelencer/:id",updatefreelencer)
router.get("/getOne/:id",getOne)
router.delete("/deletefreelencer/:id",deletefreelencer)
module.exports = router