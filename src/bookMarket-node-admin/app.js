let config = require('./config');
let express = require('express');
let log4js = require('./log');
let path = require('path');
let util = require('./util');

let app = express();

// 静态资源目录
app.use(express.static(path.join(config.project_path, 'public')));

// log4js
log4js.use(app);

// 设置 ejs 引擎
app.set('engine', 'ejs');
app.set('views', path.join(config.project_path, 'views'));


// parse application/x-www-form-urlencoded ==> UTF-8
app.use(util.urlencoded);
// parse application/json
app.use(util.jsonParser);
// parse cookie
app.use(util.cookieParser);


// 配置子路由
// 首页
app.use('/', require(path.join(config.project_path, 'router', 'index')));
app.use('/order', require(path.join(config.project_path, 'router', 'orderRouter')));
app.use('/book', require(path.join(config.project_path, 'router', 'bookRouter')));
app.use('/member', require(path.join(config.project_path, 'router', 'memberRouter')));
// views 页面
app.use('/views', require(path.join(config.project_path, 'router', 'viewsRouter')));

let server = app.listen(config.port , () => {
    let port = server.address().port;
    console.log("admin node client running in %s...", port);
})
