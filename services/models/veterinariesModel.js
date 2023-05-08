const db = require ('../db/index')

module.exports={
get:(callback)=>{
    const sql=`select * from veterinaries`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
add:(cb,name,email,password,phone,address,city,state,zip,image,license_number,years_of_experience)=>{
    const sql=`insert into veterinaries (name,email,password,phone,address,city,state,zip,image,license_number,years_of_experience) values ("${name}","${email}","${password}","${phone}","${address}","${city}","${state}","${zip}","${image}","${license_number}","${years_of_experience}")`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
update:(cb,id,name,email,password,phone,address,city,state,zip,image,license_number,years_of_experience)=>{
    const sql=`update veterinaries set name="${name}" ,email="${email}",password="${password}",phone="${phone}",address="${address}",city="${city}",state="${state}",zip="${zip}",image="${image}",license_number="${license_number}",years_of_experience="${years_of_experience}" where id="${id}"`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
getOne:(callback,id)=>{
    const sql=`select * from veterinaries where id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
deletevet:(callback,id)=>{
    const sql=`DELETE FROM veterinaries WHERE id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
}


}