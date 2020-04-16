let config = require("../config");
let express = require("express");
let path = require("path");
let util = require("../util");

let router = express.Router();
let jiSuAxios = util.jiSuAxios;
let axios = util.axios;

/**
 * 卖书时，从极速API搜索书籍信息
 */
router.post("/sell/searchBook", (req, res) => {
  let {text, page} = req.body;
  let url = config.jiSuApiBookNamePath;
  let params = {
    appkey: config.jiSuApiAppKey,
    title: text,
    pagenum: page,
  };

  // 若是isbn 更换isbn的配置项
  let regexp = /^\d+$/g;
  if (regexp.exec(text) != null) {
    url = config.jiSuApiBookIsbnPath;
    params = {
      appkey: config.jiSuApiAppKey,
      isbn: text,
    };
  }
  jiSuAxios
    .get(url, {
      params: params,
    })
    .then((response) => {
      // console.debug(response.data);
      res.send(response.data);
    })
    .catch((err) => {
      res.send({ status: 0 });
    });
});

/**
 * 用户提交一本卖书请求
 */
router.post("/sell", (req, res) => {
  let book = req.body.book;
  let { userId, token } = req.cookies;

  let url = "/bmsBook/submit";
  let params = {
    author: book.author,
    summary: book.description,
    isbn: book.isbn,
    name: book.name,
    pic: book.pic,
    price: book.price,
    memberId: userId,
  };
  let config = {
    headers: {
      "X-Token": token,
    },
  };
  axios
    .post(url, params, config)
    .then((response) => {
      console.dir(response);
      res.send(response.data.meta)
    })
    .catch((err) => {
      console.error(err);
    });
});

// 导出路由
module.exports = router;
