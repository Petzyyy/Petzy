const pet =require ("../models/petsModel")
module.exports ={
getAll:(req,res)=>{
    pet.get((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    })
},
addpet: (req, res) => { 
    const {
      name,
      user_id,
      species,
      breed,
      age,
      gender,
      image
    } = req.body;
  
    pet.add((err, rslt) => {
      if (err) {
        res.status(500).send(err);
      } else {
        console.log(req.body);
        res.status(200).json(rslt);
      }
    }, name,user_id,species,breed,age,gender,image);
  },

  updatepet:(req,res)=>{
    const {
        name,
      species,
      breed,
      age,
      gender,
      image
      } = req.body;
    pet.update((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id,name,species,breed,age,gender,image)
},
getUserPets:(req,res)=>{
    pet.getUserPets((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.user_id)
},

deletepet:(req,res)=>{
    pet.deletepet((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

}