let axios = require("axios");
let fs = require("fs");
let path = require("path");
let bodyParser = require("body-parser");
let config = require("./config");
let cookieParser = require("cookie-parser");
let ossClient = require("./oss");
let multer = require("./upload");
let AlipaySdk = require("alipay-sdk").default;

/**
 * 项目后台API axios 实例
 */
let axiosInstance = axios.create({
  baseURL:
    config.apiHost + ":" + config.apiPort + "/" + config.apiModuleName + "/",
  timeout: 1000,
});

/**
 * alipay 支付 sdk
 */
let alipaySdk = new AlipaySdk({
  appId: "2016102400752515",
    privateKey: fs.readFileSync(
      path.join(config.project_path, "pem", "private_key.pem"),
      "ascii"
    ),
    alipayPublicKey: 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgvqFRD9lXTENYk0Dl/fcT+jnqBUUxpP3QieGfdA19Q8pGhscYQDPPAgHAgcXIJzKgvRhJpwFy5c3e+4c3BOQXS4BUaVKUosXAo4HqvEt0M+SivJn+YUTB6Ua4VUm92PEDHJcIvydycHglTk4kwjECXnzwpxfbclhLFqsPI20m/yZEO8lv7yCh8qgCoFC/fy+kv51OJeW0fjX4oi0qqUrRtt9OJp4tyrWZTkRbkswafUH8PcQRTxLOnSMezkzJlssqQjeK+gAKskusAKF3JISXWauP3CMFgMOTscHWm8lq8S1JCut6VJOqwuOl3gfwDg9GBZ/I4i0kNBQbwc4bnQhWQIDAQAB',
  gateway: "https://openapi.alipaydev.com/gateway.do",
  charset: 'utf-8',
  version: '1.0',
  signType: 'RSA2'
});

/**
 * 极速API axios 实例
 */
let oApiAxiosInstance = axios.create({
  baseURL: config.oApiBaseUrl,
  timeout: 1000,
});

/**
 * json 解析
 */
let jsonParser = bodyParser.json();

/**
 * url json解析
 */
let urlencoded = bodyParser.urlencoded({ extended: false });

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
  alipaySdk: alipaySdk,
};
