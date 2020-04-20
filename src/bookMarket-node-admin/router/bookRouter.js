const path = require('path');
const express = require('express');
const config = require('../config');
const util = require('../util');

const axios = util.axios;

const router = express.Router();

router.get('/:id', (req, res) => {
    res.send(`${req.params.id} 用户信息`);
});

/**
 * 书籍搜索
 */
router.post("/search", (req, res) => {
    console.log('/book/search');
    res.send({meta:{success: true}});
});

/**
 * 分页获取所有书籍信息
 */
router.post('/listAll', (req, res) => {
  let { page, pageSize } = req.body;
  let { adminId, adminToken } = req.cookies;

  let url = "/bmsBook/listAll";
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
      console.dir(result.data);
      if (result.meta.success === true) {
        res.send(result.data.books);
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
