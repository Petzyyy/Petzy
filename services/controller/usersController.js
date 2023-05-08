const user =require ("../models/userModel")
module.exports ={
getAll:(req,res)=>{
    user.get((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    })
},
adduser: (req, res) => {
    const {
      name,
      email,
      password,
      phone,
      address,
      city,
      state,
      zip,
      image
    } = req.body;
  
    user.add((err, rslt) => {
      if (err) {
        res.status(500).send(err);
      } else {
        console.log(req.body);
        res.status(200).json(rslt);
      }
    }, name, email, password, phone, address, city, state, zip, image);
  },

  updateUser:(req,res)=>{
    const {
        
        name,
        email,
        password,
        phone,
        address,
        city,
        state,
        zip,
        image
      } = req.body;
    user.update((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id,name, email, password, phone, address, city, state, zip, image)
},
  getOne:(req,res)=>{
    user.getOne((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

deleteUser:(req,res)=>{
    user.deleteUser((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

}