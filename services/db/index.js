const mysql = require("mysql2")

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password : "baxadha16",
    database: "petzy"
})

db.connect((err)=>{
    if(err){
        console.log(err)
    }else
   { console.log("connected to petzy")}
})

module.exports=db