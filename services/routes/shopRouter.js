const express = require("express")
const router=express.Router()
const{getAll,addProduct,updateProduct,getOne,deleteProduct}=require("../controller/shopController")


router.get("/getAll",getAll)
router.post("/addProduct",addProduct)
router.put("/updateProduct/:id",updateProduct)
router.get("/getOne/:id",getOne)
router.delete("/deleteProduct/:id",deleteProduct)
module.exports = router