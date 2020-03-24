let express = require('express');
let path = require('path');
let config = require('../config');
let logger = require('../log').logger;
let util = require('../util');

let router = express.Router();
let axios = util.axios;

/**
 * 用户注册
 */
router.post('/register', (req, res) => {
    let username = req.body.username;
    let password = req.body.password;

    axios.post('/umsMember', {
        username: username,
        password: password
    })
    .then(response => {
        res.send(response.data.meta);
    })
    .catch(error => {
    });
});

/**
 * 用户登录
 */
router.post('/login',util.urlencoded, (req, res) => {
    let username = req.body.username;
    let password = req.body.password;
    console.log(username);
    console.log(password);

    axios.get('/umsMember', {
        params: {
            username: username,
            password: password
        }
    })
    .then(response => {
        res.cookie('token', response.data.meta.token, {maxAge: 600000});

        res.send(response.data.meta);
    })
    .catch(error => {
        logger.error("/member/login axios catch");
    });
});

// 导出路由
module.exports = router;
