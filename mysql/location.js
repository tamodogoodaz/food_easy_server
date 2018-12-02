exports.locationList = (mysql) =>  new Promise((res , rej) => {
    mysql.query("SELECT * FROM tb_location")
    .then(([rows]) => res(rows) )
    .catch(err => rej(err))
   })
