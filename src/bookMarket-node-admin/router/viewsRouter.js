let path = require('path');
let express = require('express');
let config = require('../config');
let util = require('../util');


let router = express.Router();

/**
 * 管理主页
 */
router.get('/home', (req, res) => {
    res.render('home.ejs');
});


// 导出路由
module.exports = router;
