const path = require("path");
const express = require("express");
const config = require("../config");
const util = require("../util");

const axios = util.axios;

const router = express.Router();

/**
 * 订单搜索
 */
router.post("/search", (req, res) => {
    let searchContent = req.body.searchContent.trim();
    if (searchContent === "") {
        res.send({meta:{success: false}});
        return;
    }
    console.log('/order/search');
    res.send({meta:{success: true}});
});

/**
 * 分页获取所有订单信息
 */
router.post('/listAll', (req, res) => {
  let { page, pageSize } = req.body;
  let { adminId, adminToken } = req.cookies;

  let url = "/omsOrder/listAll";
  let params = {
    params: {
      page: page,
      pageSize: pageSize,
    },
  };
  let config = {
    headers: {
      "X-Token": adminToken,
    },
  };
  axios
    .get(url, params, config)
    .then((response) => {
      let result = response.data;
      if (result.meta.success === true) {
        res.send(result.data);
      } else {
        res.send([]);
      }
    })
    .catch((err) => {
      console.dir(err);
      res.send({ meta: { success: false } });
    });
});

// 导出路由
module.exports = router;
