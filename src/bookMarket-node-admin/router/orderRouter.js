let path = require("path");
let express = require("express");
let config = require("../config");
let util = require("../util");

let router = express.Router();

/**
 * 订单搜索
 */
router.post("/search", (req, res) => {
    console.log('/order/search');
    res.send({meta:{success: true}});
});

// 导出路由
module.exports = router;
