let axios = require("axios");
let bodyParser = require('body-parser');
let config = require("./config");
let cookieParser = require('cookie-parser');
let ossClient = require('./oss');
let multer = require('./upload');

/**
 * 项目后台API axios 实例
 */
let axiosInstance = axios.create({
    baseURL: config.apiHost + ':' + config.apiPort + '/' + config.apiModuleName + '/',
    timeout: 1000
});

/**
 * 极速API axios 实例
 */
let oApiAxiosInstance = axios.create({
    baseURL: config.oApiBaseUrl,
    timeout: 1000
});

;

/**
 * json 解析
 */
let jsonParser = bodyParser.json();

/**
 * url json解析
 */
let urlencoded = bodyParser.urlencoded({extended: false});

/**
 * cookie 解析
 */
cookieParser = cookieParser();

// 暴露对象
module.exports = {
    axios: axiosInstance,
    oAxios: oApiAxiosInstance,
    cookieParser: cookieParser,
    jsonParser: jsonParser,
    urlencoded: urlencoded,
    ossClient: ossClient,
    multer: multer,
}
