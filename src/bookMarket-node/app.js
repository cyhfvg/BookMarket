let express = require('express');
let path = require('path');
let config = require('./config');
let log4js = require('./log');
let util = require('./util');

let app = express();

// 静态资源目录
app.use(express.static(path.join(config.project_path, 'public')));

// log4js
log4js.use(app);

// 设置 ejs 引擎
app.set('engine', 'ejs');
// app.set('views', './views');
app.set('views', path.join(config.project_path, 'views'));

// parse application/x-www-form-urlencoded ==> UTF-8
app.use(util.urlencoded);
// parse application/json
app.use(util.jsonParser);

// cookie
app.use(util.cookieParser);

// 跨域访问
// app.use((req, res, next) => {
//     res.header("Access-Control-Allow-Origin", "*");
//     res.header('Access-Control-Allow-Methods', 'PUT, GET, POST, DELETE, OPTIONS');
//     res.header("Access-Control-Allow-Headers",
//     "Content-Type,Content-Length, Authorization, Accept,X-Requested-With,Access-Control-Allow-Origin");

//     if (req.method === 'OPTIONS') {
//         res.sendStatus(200)
//     } else {
//         next()
//     }
// })

// 配置子路由
// 首页
app.use('/', require(path.join(config.project_path, 'router', 'index')));
app.use('/admin', require(path.join(config.project_path, 'router', 'admin')));
app.use('/member', require(path.join(config.project_path, 'router', 'member')));
app.use('/book', require(path.join(config.project_path, 'router', 'book')));

let server = app.listen(config.port , () => {
    let port = server.address().port;
    console.log("%s...", port);
})
