let express = require('express');
let config = require('../config');
let path = require('path');

let router = express.Router();

router.get('/', function(req, res) {
    res.send('/admin')
});

router.get('/:id', function(req, res) {
    res.send(`${req.params.id} 用户信息`);
});

// 导出路由
module.exports = router;
