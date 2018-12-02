const multer = require("multer")
const path =require("path")
const storage = multer.diskStorage({
    destination: path.resolve("./public/"),
    filename: function(req, file, cb) {
      cb(
        null,
        `${file.originalname.split(/[.]+/)[0]}-${Date.now()}-${path.extname(
          file.originalname
        )}`
      )
    }
  })
  
  const uploads = multer({
    storage: storage
  })
  
  exports.uploads = uploads