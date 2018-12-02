const express = require('express')
const app = express()
const http = require('http')
const api = require("./totalApi")
const cors = require("cors")
const mysql = require('mysql2')
const morgan = require("morgan")
const bodyParser = require('body-parser')
let mysqlQuery
const Router = express.Router()
const mysqlQ = () => {
    if(!mysqlQuery) {
        mysqlQuery = mysql.createPool({
            host: 'localhost',
            user: 'root',
            password: "",
            database: 'food_easy'
        }).promise()
    }
    return mysqlQuery
}
const mysqlConnect = (req , res , next) => {
    req.mysql = mysqlQ()
    next()
}
function headerSet(req, res, next) {

	res.setHeader('Access-Control-Allow-Origin', '*')
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE')
	res.setHeader('Access-Control-Allow-Credentials', true)
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type,Authorization')
	next()

}
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
 
// parse application/json
app.use(bodyParser.json())
app.use(headerSet)
app.use(express.static("./"))
app.use(morgan('dev'))
app.use(mysqlConnect)
app.use("/api"  ,  api.totalApi(Router))
app.use((req ,res , next) => {
    res.status(404).send({message : "Not Found" , status : 404})
})

http.createServer(app).listen(3000 , () => console.log("Connect port : 3000"))