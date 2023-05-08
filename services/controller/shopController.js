const shop =require ("../models/shopModel")
module.exports ={
getAll:(req,res)=>{
    shop.get((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    })
},
addProduct: (req, res) => {
    const {
      name,
      descripction,
      image,
      price
    } = req.body;
  
    shop.add((err, rslt) => {
      if (err) {
        res.status(500).send(err);
      } else {
        console.log(req.body);
        res.status(200).json(rslt);
      }
    }, name,descripction,image,price);
  },

  updateProduct:(req,res)=>{
    const {
        name,
        descripction,
        image,
        price
      } = req.body;
    shop.update((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id,name,descripction,image,price)
},
  getOne:(req,res)=>{
    shop.getOne((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

deleteProduct:(req,res)=>{
    shop.deleteProduct((err,result)=>{
        if (err) res.status(500).send(err)
        else res.status(200).json(result)
    },req.params.id)
},

}