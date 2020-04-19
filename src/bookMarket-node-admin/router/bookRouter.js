let path = require('path');
let express = require('express');
let config = require('../config');
let util = require('../util');


let router = express.Router();

router.get('/:id', (req, res) => {
    res.send(`${req.params.id} 用户信息`);
});

/**
 * 订单搜索
 */
router.post("/search", (req, res) => {
    console.log('/book/search');
    res.send({meta:{success: true}});
});


// 导出路由
module.exports = router;
