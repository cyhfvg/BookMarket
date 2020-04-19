const path = require("path");
const express = require("express");
const config = require("../config");
const util = require("../util");

const axios = util.axios;

const router = express.Router();

/**
 * 管理员登录
 */
router.post("/login", (req, res) => {
  let { name, password } = req.body;

  let url = '/umsAdmin/login';
  let params = {
    params: {
      adminName: name,
      password: password
    }
  };
  let config = {};

  axios
    .get(url, params, config)
    .then((response) => {
      let result = response.data;
      if (result.meta.success === true) {
        res.cookie('adminToken', result.meta.token, {maxAge: 6000000});
        res.cookie('adminId', result.data.id, {maxAge: 6000000});
      }
      res.send(result.meta);
    })
    .catch((err) => {
      console.dir(err);
      res.send({ meta: { success: false } });
    });
});

// 导出路由
module.exports = router;
