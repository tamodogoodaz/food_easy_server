const lMysql = require("./mysql/location")
const sMysql = require("./mysql/shop")
const fMysql = require("./mysql/food")
const adminMysql = require("./mysql/admin")
exports.idParamLocation = (req , res  , next ,  id) => {
    if(id) {
        // console.log(id)
        const mysql = req.mysql
        sMysql.listOfShowLink(mysql,id).then(data => {
            req.listShop = data
            next()
        }).catch(err => {
            console.log("Error " , err)
            res.status(500).json(JSON.stringify(err))
        })
    }
}
exports.idParamShop  = (req , res , next , id) => {
    if(id) {
        const mysql = req.mysql 
        sMysql.getOneShop(mysql , id).then(data => {
            req.getOneShop = data[0]
            next()

        }).catch(err => {

            console.log("Error " , err)
            res.status(500).json(JSON.stringify(err))
        })
    }
}
exports.idParamFood = (req ,res  ,next ,  id) =>{
    if(id) {
        const mysql = req.mysql 
        fMysql.foodListLink(mysql , id)
        .then(data => {
            req.listFood = data
            next()
        }).catch(err => {
            res.status(500).json(JSON.stringify(err))

        })
    }    
}
exports.listOfLocation = (req , res  ) => {
    lMysql.locationList(req.mysql)
    .then(data => res.json(data))
    .catch(err => console.log(err))
}
exports.listOfFood = (req , res ) => {
    res.json(req.listFood)
}
exports.listOfShop = (req , res ) => {
    res.json(req.listShop)
}
exports.loginAdmin = (req , res ) => {
    const {username , password} = req.body
    // console.log(req.body)
    adminMysql.login(req.mysql , {username : username  , password : password})
    .then(data => res.json(data))
    .catch(err => res.status(500).json(JSON.stringify(err)))
}
exports.likeShop = (req ,res) => {

    const id_shop = req.getOneShop.id
    console.log(req.getOneShop.id)
    const like = req.getOneShop.shop_like + 1
    console.log('like' , like)
    sMysql.likeAdd(req.mysql , id_shop , like)
    .then(data =>  {
        sMysql.listOfShowLink(req.mysql , req.getOneShop.id_location).then(data => {
            res.json(data)
        })
    }).catch(err => {
        console.log(err)
        res.status(500).send(JSON.stringify(err))
    })
}
exports.allShop = (req , res) => {
    sMysql.allShop(req.mysql).then(data => res.json(data ) ).catch(err => res.status(500).send(JSON.stringify(err)))
}
exports.addNewShop = (req , res , next) => {
    const mysql = req.mysql
    const file = req.files[0]
    const {filename} = file
    console.log(file)
    const {data}  = req.body
    const shop = JSON.parse(data)
    shop.img_shop = filename
    console.log(shop)
    sMysql.addNewShow(mysql , shop).then(data => res.json(data)).catch(err => res.status(500).send(JSON.stringify(err)))
}
exports.addNewFood = (req , res , next) => {
    const mysql = req.mysql
    const file = req.files[0]
    console.log(file)
    const {filename} = file
    const {data} = req.body
    const  food = JSON.parse(data)
    food.img_food = filename
    fMysql.addNewFOod(mysql , food).then(data => res.json(data)).catch(err => res.status(500).send(JSON.stringify(err)))
}