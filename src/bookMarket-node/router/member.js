let express = require('express');
let path = require('path');
let config = require('../config');
let logger = require('../log').logger;
let util = require('../util');

let router = express.Router();
let axios = util.axios;
let oAxios = util.oAxios;

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
    // oAxios.get(config.oApiIpPath, {
    //     params: {
    //         appkey: config.oApiAppKey,
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

    //     axios.get('/umsMember', {
    //         params: {
    //             city: city,
    //             ip: ipAddress,
    //             loginType: loginType,
    //             password: password,
    //             province: province,
    //             username: username,
    //         }
    //     })
    //     .then(response => {
    //         let data = response.data;
    //         if (data.meta.success === true) {
    //             res.cookie('token', data.meta.token, {maxAge: 600000});
    //             res.cookie('userId', data.data.id, {maxAge: 600000});
    //         }
    //         res.send(data.meta);
    //     })
    //     .catch(error => {
    //         console.log(error);
    //     });

    // });

    // Todo: 上一段替换此段
        axios.get('/umsMember', {
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
                res.cookie('token', data.meta.token, {maxAge: 600000});
                res.cookie('userId', data.data.id, {maxAge: 600000});
            }
            res.send(data.meta);
        })
        .catch(error => {
            console.log(error);
        });

});

// 导出路由
module.exports = router;
