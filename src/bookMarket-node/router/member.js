let express = require('express');
let path = require('path');
let config = require('../config');

let router = express.Router();

router.post('/login', function(req, res) {
    res.send("Hello World");
});

router.post('/register', (req, res) => {
    let username = req.body.username;
    res.send("Hello register")
});

router.get('/test', (req, res) => {
    res.send("Hello test");
});

// router.get('/:id', function(req, res) {
//     res.send(`${req.params.id} 用户信息`);
// });

// 导出路由
module.exports = router;
