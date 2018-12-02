
exports.listOfShowLink = (mysql , id_location) => new Promise((res , rej) =>{
    mysql.query("SELECT * FROM tb_shop WHERE id_location = ? order by shop_like desc" , [id_location])
    .then(([rows]) => res(rows))
    .catch(err => rej(err))
})
exports.getOneShop = (mysql  , id_shop) => new Promise((res , rej) => {
    mysql.query("SELECT * FROM tb_shop WHERE id = ? " , [id_shop])
    .then(([rows]) => res(rows) )
    .catch(err => rej(err) )
})
exports.likeAdd = (mysql , id  , like) => new Promise((res  ,rej) => {
    mysql.query("UPDATE tb_shop SET shop_like = ? WHERE id = ?" , [like , id])
    .then(data => res("Update like data"))
    .catch(err => rej(err))

})
exports.allShop  = mysql => new Promise((res , rej)=> {
    mysql.query(`SELECT * FROM tb_shop`).then(data => res(data)).catch(err => rej(err))
})
exports.addNewShow = (myqsl , shop) => new Promise((res , rej) => {
    const {name_shop , img_shop , id_location} = shop
    myqsl.query("INSERT INTO tb_shop(name_shop , img_shop , id_location) VALUES (?,? , ?)" , [name_shop , img_shop , id_location])
    .then(data => res("Uploads new shop is success/.")).catch(err => rej(err))
})