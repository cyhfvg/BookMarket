const express = require('express');

let app = express();

let router = express.Router();

router.get('/index', function(res, req) {
    req.send('index Router');
})


// Todo: 子路由配置
// 配置子路由
app.use('/admin', require('./admin/admin'))
app.use('/member', require('./member/member'))

// 导出路由
module.exports = router;
