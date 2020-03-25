let bodyParser = require('body-parser');
let cookieParser = require('cookie-parser');
let config = require("./config");
let axios = require("axios");

/**
 * axios 实例
 */
let axiosInstance = axios.create({
    baseURL: config.apiHost + ':' + config.apiPort + '/' + config.apiModuleName + '/',
    timeout: 1000
});

let oApiAxiosInstance = axios.create({
    baseURL: config.oApiBaseUrl,
    timeout: 1000
});

/**
 * json 解析
 */
// let jsonParser = bodyParser.json();

/**
 * url json解析
 */
// let urlencoded = bodyParser.urlencoded({extended: false});

// 暴露对象
module.exports = {
    axios: axiosInstance,
    oAxios: oApiAxiosInstance,
    cookieParser: cookieParser(),
    jsonParser: bodyParser.json(),
    urlencoded: bodyParser.urlencoded({extended: false}),
}
