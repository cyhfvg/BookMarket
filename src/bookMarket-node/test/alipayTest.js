
const AlipayFormData = require('alipay-sdk/lib/form').default
let AlipaySdk = require("alipay-sdk").default;
let config = require('../config');
let fs = require('fs');
let path = require('path');

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

const formData = new AlipayFormData();
// 调用 setMethod 并传入 get，会返回可以跳转到支付页面的 url，否则返回的是一个表单的 html 片段
formData.setMethod('get');

formData.addField('notifyUrl', 'http://www.com/notify'); // 当支付完成后，支付宝主动向我们的服务器发送回调的地址
formData.addField('returnUrl', 'http://www.com/return'); // 当支付完成后，当前页面跳转的地址
formData.addField('bizContent', {
  outTradeNo: 'out_trade_no',
  productCode: 'FAST_INSTANT_TRADE_PAY',
  totalAmount: '0.01',
  subject: '商品',
  body: '商品详情',
});

let pay = async function(callback) {
 let result = await alipaySdk.exec(
    'alipay.trade.page.pay',
    {},
    { formData: formData },
  );
  callback(result);
}

// result 为可以跳转到支付链接的 url
pay(result => {
  console.log(result);
})
