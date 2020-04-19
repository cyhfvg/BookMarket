let path = require('path');
let express = require('express');
let config = require('../config');
let util = require('../util');


let router = express.Router();

/**
 * 个人信息页面
 */
router.get('/memberInfo', (req, res) => {
    res.render('memberInfo.ejs');
});


// 导出路由
module.exports = router;
