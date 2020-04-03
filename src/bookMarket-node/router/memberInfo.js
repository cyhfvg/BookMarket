let path = require('path');
let express = require('express');
let config = require('../config');
let util = require('../util');


let router = express.Router();

/**
 * 个人中心/个人资料
 */
router.post('/info', (req, res) => {

});

/**
 * 个人中心/余额
 */
router.post('/balance', (req, res) => {

});

// 导出路由
module.exports = router;
