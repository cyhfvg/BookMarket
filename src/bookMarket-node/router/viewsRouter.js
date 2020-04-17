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

/**
 * 账号设置
 */
router.get('/account', (req, res) => {
    res.render('account.ejs');
});

/**
 * 卖书页面
 */
router.get('/sell', (req, res) => {
    res.render('sell.ejs');
});

/**
 * 用户摊位页面
 */
router.get('/myShop', (req, res) => {
    res.render('myShop.ejs');
});

// 导出路由
module.exports = router;
