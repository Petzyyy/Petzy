const freelencer =require ("../models/freelencerModel")
module.exports ={
getAll:(req,res)=>{
    freelencer.get((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    })
},
addfreelencer: (req, res) => {
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
      years_of_experience,
      price_per_hour
    } = req.body;
  
    freelencer.add((err, rslt) => {
      if (err) {
        res.status(500).send(err);
      } else {
        console.log(req.body);
        res.status(200).json(rslt);
      }
    }, name, email, password, phone, address, city, state, zip, image,years_of_experience,price_per_hour);
  },

  updatefreelencer:(req,res)=>{
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
      years_of_experience,
      price_per_hour
      } = req.body;
    freelencer.update((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id,name, email, password, phone, address, city, state, zip, image,years_of_experience,price_per_hour)
},
  getOne:(req,res)=>{
    freelencer.getOne((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

deletefreelencer:(req,res)=>{
    freelencer.deletefreelencer((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

}