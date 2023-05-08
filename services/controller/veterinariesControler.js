const vet =require ("../models/veterinariesModel")
module.exports ={
getAll:(req,res)=>{
    vet.get((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    })
},
addVet: (req, res) => {
    const {
      name,
      email,
      password,
      phone,
      address,
      city,
      state,
      zip,
      image,
      license_number,
      years_of_experience
    } = req.body;
  
    vet.add((err, rslt) => {
      if (err) {
        res.status(500).send(err);
      } else {
        console.log(req.body);
        res.status(200).json(rslt);
      }
    }, name, email, password, phone, address, city, state, zip, image,license_number,years_of_experience);
  },

  updateVet:(req,res)=>{
    const {
        
        name,
        email,
        password,
        phone,
        address,
        city,
        state,
        zip,
        image,
        license_number,
      years_of_experience
      } = req.body;
    vet.update((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id,name, email, password, phone, address, city, state, zip, image,license_number,years_of_experience)
},
  getOne:(req,res)=>{
    vet.getOne((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

deletevet:(req,res)=>{
    vet.deletevet((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

}