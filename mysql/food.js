exports.foodListLink = (mysql, id_shop) =>
  new Promise((res, rej) => {
    mysql
      .query("SELECT * FROM tb_food WHERE id_shop = ?", [id_shop])
      .then(([rows]) => res(rows))
      .catch(err => rej(err))
  })

exports.foodOne = (mysql, id_shop) =>
  new Promise((res, rej) => {
    mysql
      .query("SELECT * FROM tb_food where id_food = ?", [id_shop])
      .then(data => res(data))
      .catch(err => rej(err))
  })
exports.addNewFOod = (mysql, food) =>
  new Promise((res, rej) => {
    const { name_food, id_shop, img_food, price_food_l, price_food_m } = food
    mysql
      .query(
        "INSERT INTO tb_food(name_food , id_shop , img_food ,price_food_m , price_food_l) VALUES(?,?,?,?,?)",
        [name_food, id_shop, img_food, price_food_l, price_food_m]
      )
      .then(data => res(data))
      .catch(err => rej(err))
  })
exports.deleteFoodDB = (mysql, id) =>
  new Promise((res, rej) => {
    mysql
      .query(`DELETE FROM tb_food WHERE id_food = ?`, [id])
      .then(data => res("Deleted food success."))
      .catch(err => rej(JSON.stringify(err)))
  })
