let config = require('./config');
let multer  = require('multer');
let path = require('path');
let uuid = require('uuid');

let storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.join(config.project_path, 'temp/'));
    },
    filename: function (req, file, cb) {
        // uuid.jpg / uuid.png ...
        cb(null, uuid.v1() + path.extname(file.originalname).toLowerCase());
    }
});

let fileFilter = function(req, file, cb) {
    // 限制上传文件类型 png/jpeg
    if (file.mimetype === 'image/png'
        || file.mimetype === 'image/jpeg') {
            cb(null, true);

    } else {
        cb(null, false);
    }
}

let upload = multer({
    storage: storage,
    fileFilter: fileFilter,
});

module.exports = upload;
