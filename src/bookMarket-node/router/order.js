let path = require("path");
let express = require("express");
let config = require("../config");
let util = require("../util");

let axios = util.axios;

let router = express.Router();

/**
 * 获取用户地址
 */
router.post("/getAddress", (req, res) => {
  let { userId, token } = req.cookies;

  let url = "/omsCompanyAddress/memberAddress";
  let params = {
    params: {
      userId: userId,
    },
  };
  let config = {
    headers: {
      'X-Token': token
    },
  };

  axios
    .get(url, params, config)
    .then((response) => {
      let result = response.data;
      // console.dir(result);
      if (result.meta.success === true) {
        res.send(result.data);
      } else {
        res.send([]);
      }
    })
    .catch((err) => {
      console.dir(err);
    });
});

/**
 * 用户添加地址
 */
router.post('/addAddress', (req, res) => {
  let address = req.body.address;
  let {userId, token} = req.cookies;

  let url = '/omsCompanyAddress/addAddress';
  let params = address;
  params.userId = userId;
  let config = {
    headers: {
      'X-Token': token
    }
  };

  axios.post(url, params, config).then(response => {
    let result = response.data;
    console.dir(result);
    if (result.meta.success === true) {
      res.send(result);
    }
  }).catch(err => {
    console.dir(err);
  });

});

/**
 * 用户买书
 */
router.post("/buyBooks", (req, res) => {
  let { address, books } = req.body;
  let { userId, token } = req.cookies;

  let url = "/omsOrder/buyBooks";
  let params = {
    address: address,
    books: books,
    userId: userId,
  };
  let config = {
    headers: {
      "X-Token": token,
    },
  };

  axios
    .post(url, params, config)
    .then((response) => {
      let result = response.data;
      if (result.meta.success === true) {
        res.send({ meta: { success: true } });
      }
    })
    .catch((err) => {
      console.dir(err);
    });
});


// 导出路由
module.exports = router;
