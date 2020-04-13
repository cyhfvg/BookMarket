let AlipayFormData = require("alipay-sdk/lib/form").default;
let alipaySdk = require('./util').alipaySdk;

exports.charge = async function (tradeNo, charge, callback) {
  const formData = new AlipayFormData();
  // 调用 setMethod 并传入 get，会返回可以跳转到支付页面的 url，否则返回的是一个表单的 html 片段
  formData.setMethod('get');

  formData.addField('notifyUrl', 'http://47.107.54.79:8081/notify'); // 当支付完成后，支付宝主动向我们的服务器发送回调的地址
  formData.addField('returnUrl', 'http://127.0.0.1:8081/views/memberInfo'); // 当支付完成后，当前页面跳转的地址
  formData.addField('bizContent', {
    outTradeNo: tradeNo,
    productCode: 'FAST_INSTANT_TRADE_PAY',
    totalAmount: charge,
    subject: '元宝',
    body: charge * 100 + '元宝充值',
  });

  let result = await alipaySdk.exec(
    "alipay.trade.page.pay",
    {},
    { formData: formData }
  )
  callback(result);
};
