const apiC = require("./api_controller")
const uploads = require("./multer")
exports.totalApi = router => {
    router.get("/listOfLocation" , apiC.listOfLocation)
    router.get('/listOfShop/:id_location' , apiC.listOfShop)
    router.get("/listOfFood/:id_food" , apiC.listOfFood)
    router.get('/likeShop/:id_shop' , apiC.likeShop )
    router.get('/allShop' , apiC.allShop)
    router.post("/login" , apiC.loginAdmin)
    router.post("/addNewShop" , uploads.uploads.array("imgShop" , 12) , apiC.addNewShop)
    router.post('/addNewFood' , uploads.uploads.array("imgFood" , 12) , apiC.addNewFood)
    router.param("id_food" , apiC.idParamFood)
    router.param('id_location' , apiC.idParamLocation)
    router.param("id_shop" , apiC.idParamShop)
        
    return router
}