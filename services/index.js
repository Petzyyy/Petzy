const express = require("express");
const cors = require("cors");
const app = express();
const conn = require("./db")
app.use(cors());
app.use(express.json());

///////////////////////////////////////////////////
const userRouter=require("./routes/userRouter");
const shopRouter=require("./routes/shopRouter");
const petsRouter=require("./routes/petsRouter");
const vetRouter=require("./routes/veterinariesRouter");
const freelencerRouter=require("./routes/freelencerRouter")
//////////////////////////////////////////////////
app.use('/user',userRouter);
app.use('/shop',shopRouter);
app.use('/pets',petsRouter);
app.use('/vet',vetRouter);
app.use('/freelencer',freelencerRouter);
app.listen(3000,()=>{
    console.log("listening on 3000");
})