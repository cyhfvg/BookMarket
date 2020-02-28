const express = require('express');

let router = express.Router();

router.get('/:id', function(req, res) {
    res.send(`${req.params.id} 用户信息`);
});

// 导出路由
module.exports = router;
