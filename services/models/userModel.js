const db = require ('../db/index')

module.exports={
get:(callback)=>{
    const sql=`select * from users`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
add:(cb,name,email,password,phone,address,city,state,zip,image)=>{
    const sql=`insert into users (name,email,password,phone,address,city,state,zip,image) values ("${name}","${email}","${password}","${phone}","${address}","${city}","${state}","${zip}","${image}")`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
update:(cb,id,name,email,password,phone,address,city,state,zip,image)=>{
    const sql=`update users set name="${name}" ,email="${email}",password="${password}",phone="${phone}",address="${address}",city="${city}",state="${state}",zip="${zip}",image="${image}" where id="${id}"`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
getOne:(callback,id)=>{
    const sql=`select * from users where id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
deleteUser:(callback,id)=>{
    const sql=`DELETE FROM users WHERE id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
}


}