const db = require ('../db/index')

module.exports={
get:(callback)=>{
    const sql=`select * from shop`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
add:(cb,name,descripction,image,price)=>{
    const sql=`insert into shop (name,description,image,price) values ("${name}","${descripction}","${image}","${price}")`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
update:(cb,id,name,descripction,image,price)=>{
    const sql=`update shop set name="${name}" ,description="${descripction}",price="${price}"  where id="${id}"`
    db.query(sql,(err,rslt)=>{
        cb(err,rslt)
    })
},
getOne:(callback,id)=>{
    const sql=`select * from shop where id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
},
deleteProduct:(callback,id)=>{
    const sql=`DELETE FROM shop WHERE id="${id}"`
    db.query(sql,(err,res)=>{
        callback(err,res)
    })
}


}