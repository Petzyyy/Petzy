const express = require("express")
const router=express.Router()
const{getAll,adduser,updateUser,getOne,deleteUser}=require("../controller/usersController")


router.get("/getAll",getAll)
router.post("/addUser",adduser)
router.put("/updateUser/:id",updateUser)
router.get("/getOne/:id",getOne)
router.delete("/deleteUser/:id",deleteUser)
module.exports = router