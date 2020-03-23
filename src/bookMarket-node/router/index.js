let express = require('express');
let config = require('../config');
let path = require('path');

let router = express.Router();

router.get('/', function(req, res) {
    // res.sendFile(path.join(config.project_path, 'views', 'index.ejs'));
    res.render('home.ejs');
});

// 导出路由
module.exports = router;
