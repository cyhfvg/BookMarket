let config = require("../config");
let express = require("express");
let path = require("path");
let util = require("../util");

let router = express.Router();
let jiSuAxios = util.jiSuAxios;

/**
 * 卖书时，从极速API搜索书籍信息
 */
router.post("/sell/searchBook", (req, res) => {
  let text = req.body.text;
  let url = config.jiSuApiBookNamePath;
  let params = {
    appkey: config.jiSuApiAppKey,
    title: text,
    pagenum: 1,
  };

  // 若是isbn 更换isbn的配置项
  let regexp = /^\d+$]+/g;
  if (regexp.exec(text) != null) {
    url = config.jiSuApiBookIsbnPath;
    params = {
      appkey: config.jiSuApiAppKey,
      isbn: text,
    };
  }
  //   jiSuAxios
  //     .post(url, params)
  //     .then((response) => {
  //       console.debug(response.data);
  //       res.send(response.data);
  //     })
  //     .catch((err) => {
  //       res.send({ status: 0 });
  //     });
  jiSuAxios
    .get(url, {
      params: params,
    })
    .then((response) => {
      console.debug(response.data);
      res.send(response.data);
    })
    .catch((err) => {
      res.send({ status: 0 });
    });
});

// 导出路由
module.exports = router;
