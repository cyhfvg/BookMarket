let express = require('express');
let app = express();

app.get('/', (req, res) => {
    res.send('Hello world');
});

let server = app.listen(8081, () => {
    let host = server.address().address;
    let port = server.address().port;

    console.log("应用实例，访问地址为http://%s:%s", host, port);
})
