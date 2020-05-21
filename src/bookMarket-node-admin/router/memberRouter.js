const path = require("path");
const express = require("express");
const config = require("../config");
const util = require("../util");

const axios = util.axios;

const router = express.Router();

/**
 * 用户搜索
 */
router.post("/search", (req, res) => {
  let { content, page, pageSize } = req.body;
  let { adminId, adminToken } = req.cookies;

  let url = "/umsMember/search";
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
  console.log("/member/search");
});

/**
 * 获取所有用户
 */
router.post("/listAll", (req, res) => {
  let { page, pageSize } = req.body;
  let { adminId, adminToken } = req.cookies;

  let url = "/umsMember/listAll";
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

/**
 * 删除members
 */
router.post("/deleteMembers", (req, res) => {
  let members = req.body.members;
  let { adminId, adminToken } = req.cookies;

  let url = "/umsMember/deleteMembers";
  let params = {
    members: members,
  };
  let config = {
    headers: {
      "X-Token": adminToken,
    },
  };
  axios
    .patch(url, params, config)
    .then((response) => {
      let result = response.data;
      console.dir(result);
      if (result.meta.success === true) {
        res.send(result.meta);
      } else {
        res.send({ meta: { success: false} });
      }
    })
    .catch((err) => {
      console.dir(err);
      res.send({ meta: { success: false} });
    });
});

// 导出路由
module.exports = router;
