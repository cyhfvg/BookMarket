let config = require("../config");
let express = require("express");
let fs = require('fs');
let path = require("path");
let util = require("../util");

let router = express.Router();

let axios = util.axios;
let jiSuAxios = util.jiSuAxios;
let ossClient = util.ossClient;

/**
 * 卖书时，从极速API搜索书籍信息
 */
router.post("/sell/searchBook", (req, res) => {
  let { text, page } = req.body;
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
      res.send(response.data.meta);
    })
    .catch((err) => {
      console.error(err);
    });
});

/**
 * 我的摊位 获取我的{在售书籍}
 */
router.post("/shopBooks", (req, res) => {
  let { userId, token } = req.cookies;

  let url = "/bmsBook/shop/list";
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
        res.send(result);
      } else {
        res.send({ meta: { success: false } });
      }
    })
    .catch((err) => {
      console.dir(err);
    });
});

/**
 * 书籍上架
 */
router.post("/onSell", util.multer.single('file'), (req, res) => {
  let file = req.file;
  let { userId, token } = req.cookies;
  let { bookId, description} = req.body;
  if (file === undefined) {
    res.send({ success: false });
    return;
  }
  let fileName = file.filename;
  let localFile = file.path;

  ossClient.put(
    "album_pics/" + new Date().Format("yyyy-MM-dd") + "/",
    fileName,
    localFile,
    (urls) => {
      let url = urls[0];
      if (url === undefined) {
        res.send({ success: false });
      }
      axios
        .patch(
          "/bmsBook/onSell",
          {
            id: bookId,
            url: url,
            description: description
          },
          {
            headers: {
              "X-Token": token,
            },
          }
        )
        .then((response) => {
          // Fixme: 上传完成后移除本地文件
          fs.unlinkSync(localFile);

          if (response.data.meta.success === true) {
            res.send({
              success: true,
            });
          } else {
            res.send({ success: false });
          }
        })
        .catch((err) => {
          console.error(err);
          res.send({ success: false });
        });
    }
  );
});

/**
 * 获取商场所有书籍
 */
router.post('/allBooks', (req, res) => {
  let {page, pageSize} = req.body;
  let url = '/bmsBook/listAll';
  let params = {
    params: {
      page: page,
      pageSize: pageSize
    }
  };
  let config = {};
  axios.get(url, params, config).then(response => {
    res.send(response.data);
  }).catch(err => {
    console.dir(err);
  });
});

/**
 * 获取 猜你喜欢书籍
 */
router.post('/likeBooks', (req, res) => {
  let {userId, token} = req.cookies;
  if (userId === undefined) {
    res.end();
    return;
  }
  let url = '/bmsBook/listLikeBooks';
  let params = {
    params: {
      userId: userId,
    }
  };
  let config = {
    headers: {
      'X-Token': token
    }
  };
  axios.get(url, params, config).then(response => {
    res.send(response.data);
  }).catch(err => {
    console.dir(err);
  });
});

// 导出路由
module.exports = router;
