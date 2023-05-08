const db = require ('../db/index')

module.exports={
get:(callback)=>{
    const sql=`select * from freelencer`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
add:(cb,name,email,password,phone,address,city,state,zip,image,years_of_experience,price_per_hour)=>{
    const sql=`insert into freelencer (name,email,password,phone,address,city,state,zip,image,years_of_experience,price_per_hour) values ("${name}","${email}","${password}","${phone}","${address}","${city}","${state}","${zip}","${image}",years_of_experience,price_per_hour)`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
update:(cb,id,name,email,password,phone,address,city,state,zip,image,years_of_experience,price_per_hour)=>{
    const sql=`update freelencer set name="${name}" ,email="${email}",password="${password}",phone="${phone}",address="${address}",city="${city}",state="${state}",zip="${zip}",image="${image}",years_of_experience="${years_of_experience}",price_per_hour=price_per_hour where id="${id}"`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
getOne:(callback,id)=>{
    const sql=`select * from freelencer where id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
deletefreelencer:(callback,id)=>{
    const sql=`DELETE FROM freelencer WHERE id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
}


}