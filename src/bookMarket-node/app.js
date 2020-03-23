let path = require('path');
let express = require('express');
let bodyParser = require('body-parser');
let config = require('./config');
let log4js = require('./log');

let app = express();

// 静态资源目录
app.use(express.static('public'));

// log4js
log4js.use(app);

// 设置 ejs 引擎
app.set('engine', 'ejs');
app.set('views', "./views");

// 配置子路由
// 首页
app.use('/', require(path.join(config.project_path, 'router', 'index')));
app.use('/admin', require(path.join(config.project_path, 'router', 'admin')));
app.use('/member', require(path.join(config.project_path, 'router', 'member')));
app.use('/book', require(path.join(config.project_path, 'router', 'book')));

// parse application/json
app.use(bodyParser.json());
// parse application/x-www-form-urlencoded ==> UTF-8
app.use(bodyParser.urlencoded({extended: false}));


let server = app.listen(config.port , () => {
    let host = server.address().address;
    let port = server.address().port;

    console.log("应用实例，访问地址为http://%s:%s", host, port);
})
