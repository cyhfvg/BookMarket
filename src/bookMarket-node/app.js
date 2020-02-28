let config = require('./config');

let express = require('express');

let app = express();

// 总路由
app.use('/', require('./router/index'));

let server = app.listen(config.port , () => {
    let host = server.address().address;
    let port = server.address().port;

    console.log("应用实例，访问地址为http://%s:%s", host, port);
})
