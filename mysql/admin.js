exports.login = (mysql , {username , password}) => new Promise((res , reje) => {
    mysql.query("SELECT * FROM admin WHERE user_name = ? AND passwoed = ?" , [username , password])
    .then(([rows]) => {
        res(rows)
    }).catch(err => reje(err))
})