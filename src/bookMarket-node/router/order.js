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
      "X-Token": token,
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
    });
});

/**
 * 用户添加地址
 */
router.post("/addAddress", (req, res) => {
  let address = req.body.address;
  let { userId, token } = req.cookies;

  let url = "/omsCompanyAddress/addAddress";
  let params = address;
  params.userId = userId;
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
        res.send(result);
      }
    })
    .catch((err) => {
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
    });
});

/**
 * 请求待发货书籍
 */
router.post("/listMyOrders", (req, res) => {
  let { userId, token } = req.cookies;
  let url = "/omsOrder/getMyOrder";
  let params = {
    params: {
      memberId: userId,
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
      let data = response.data;
      if (data.meta.success === true) {
        res.send(data);
      } else {
        res.send({ meta: { success: false } });
      }
    })
    .catch((err) => {
    });
});

/**
 * 书籍发货
 */
router.post('/sendBook', (req, res) => {
  let { userId, token } = req.cookies;
  let {itemId} = req.body;

  let url = '/omsOrderItem/sendBook';
  let params = {
    itemId: itemId
  };
  let config = {
    headers: {
      'X-Token': token
    }
  };

  axios.patch(url, params, config).then(response => {
    res.send();
  }).catch(err => {
    res.send();
  });

});

// 导出路由
module.exports = router;
