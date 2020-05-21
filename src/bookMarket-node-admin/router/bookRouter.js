const path = require("path");
const express = require("express");
const config = require("../config");
const util = require("../util");

const axios = util.axios;

const router = express.Router();

router.get("/:id", (req, res) => {
  res.send(`${req.params.id} 用户信息`);
});

/**
 * 书籍搜索
 */
router.post("/search", (req, res) => {
  let { content, page, pageSize } = req.body;
  let { adminId, adminToken } = req.cookies;

  let url = "/bmsBook/search";
  let params = {
    params: {
      content: content,
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
      let data = response.data;
      if (data.meta.success === false) {
        res.send({ meta: { success: false } });
        return;
      }
      res.send(data);
    })
    .catch((err) => {
      res.send({ meta: { success: false } });
    });
});

/**
 * 分页获取所有书籍信息
 */
router.post("/listAll", (req, res) => {
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

/**
 * 删除books
 */
router.post("/deleteBooks", (req, res) => {
  let books = req.body.books;
  let { adminId, adminToken } = req.cookies;

  let url = "/bmsBook/deleteBooks";
  let params = {
    books: books
  };
  let config = {
    headers: {
      "X-Token": adminToken,
    },
  };
  axios
    .patch(url, params, config)
    .then((response) => {
      console.dir(response);
      let result = response.data;
      if (result.meta.success === true) {
        res.send(result.meta);
      } else {
        res.send({ meta: { success: false} });
      }
    })
    .catch((err) => {
      console.dir(err);
      res.send({ meta: { success: false } });
    });
});

// 导出路由
module.exports = router;
