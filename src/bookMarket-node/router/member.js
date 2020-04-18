let express = require('express');
let path = require('path');
let config = require('../config');
let logger = require('../log').logger;
let util = require('../util');

let router = express.Router();
let axios = util.axios;
let jiSuAxios = util.jiSuAxios;

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
    let ipAddress = req.ip.match(/\d+\.\d+\.\d+\.\d+/)[0];
    // let ip = '122.224.186.100';

    let province = 'IANA';
    let city = 'null';
    let loginType = 0;

    // // 获取ip信息
    // jiSuAxios.get(config.jiSuApiIpPath, {
    //     params: {
    //         appkey: config.jiSuApiAppKey,
    //         ip: ipAddress
    //     }
    // })
    // .then(response => {
    //     let data = response.data;

    //     if (data.status === 0) {
    //         if (data.result.province !== null) {
    //             province = data.result.province;
    //         }
    //         if (data.result.city !== null) {
    //             city = data.result.city;
    //         }
    //     }

        // axios.get('/login', {
        //     params: {
        //         city: city,
        //         ip: ipAddress,
        //         loginType: loginType,
        //         password: password,
        //         province: province,
        //         username: username,
        //     }
        // })
        // .then(response => {
        //     let data = response.data;
        //     console.debug('login success');
        //     if (data.meta.success === true) {
        //         res.cookie('token', data.meta.token, {maxAge: 600000});
        //         res.cookie('userId', data.data.id, {maxAge: 600000});
        //     }
        //     res.send(data.meta);
        // })
        // .catch(error => {
        //     console.log(error);
        // });
    // });

    // Todo: 正式上线时 上一段替换此段
        axios.get('/login', {
            params: {
                city: city,
                ip: ipAddress,
                loginType: loginType,
                password: password,
                province: province,
                username: username,
            }
        })
        .then(response => {
            let data = response.data;
            if (data.meta.success === true) {
                res.cookie('token', data.meta.token, {maxAge: 6000000});
                res.cookie('userId', data.data.id, {maxAge: 6000000});
                res.cookie('balance', data.data.balance, {maxAge: 6000000});
            }
            res.send(data.meta);
        })
        .catch(error => {
            console.log(error);
        });

});

// 导出路由
module.exports = router;
