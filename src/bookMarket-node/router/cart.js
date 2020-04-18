let path = require("path");
let fs = require("fs");
let express = require("express");
let config = require("../config");
let util = require("../util");

let axios = util.axios;

let router = express.Router();

/**
 * 获取购物车
 */
router.post("/getCarts", (req, res) => {
  let { userId, token } = req.cookies;

  let url = "/bmsCartLog/carts";
  let params = {
    params: {
      userId: userId,
    },
  };
  let config = {
    headers: {
      "X-Token": token,
    },
  };

  axios
    .get(url, params, config)
    .then((response) => {
      let result = response.data;
      if (result.meta.success === true) {
        res.send(result.data);
      }
    })
    .catch((err) => {
      console.dir(err);
      res.send({});
    });
});

// 导出路由
module.exports = router;
