let alipay = require("../alipay");
let config = require("../config");
let express = require("express");
let fs = require("fs");
let path = require("path");
let util = require("../util");

let uuid = require("uuid");

let router = express.Router();

let axios = util.axios;

let ossClient = util.ossClient;

/**
 * 个人中心/个人资料 InnerHtml 获取
 */
router.post("/infoInner", (req, res) => {
  // 读取
  let innerHtml = fs.readFileSync(
    path.join(
      config.project_path,
      "views",
      "template",
      "component",
      "memberinfo.html"
    ),
    "utf-8"
  );

  res.send({ inner: innerHtml });
});

/**
 * 个人信息获取
 */
router.post("/info", (req, res) => {
  let { userId, token } = req.cookies;

  axios
    .get(
      "/umsMember",
      {
        params: {
          userId: userId,
        },
      },
      {
        headers: {
          "X-Token": token,
        },
      }
    )
    .then((response) => {
      let member = response.data.data;
      res.send(member);
    });
});

/**
 * 个人信息更新
 */
router.post("/update", (req, res) => {
  let { nickname, gender, birthday, job, city } = req.body;
  let { userId, token } = req.cookies;
  axios
    .patch(
      "/umsMember",
      {
        birthday: birthday,
        city: city,
        gender: gender,
        id: userId,
        job: job,
        nickname: nickname,
      },
      {
        headers: {
          "X-Token": token,
        },
      }
    )
    .then((response) => {
      res.send(response.data.meta);
    });
});

/**
 * 个人头像更新
 */
router.post("/headUpdate", util.multer.single("file"), (req, res) => {
  let file = req.file;
  let { userId, token } = req.cookies;
  if (file === undefined) {
    res.send({ success: false });
    return;
  }
  let fileName = file.filename;
  let localFile = file.path;

  ossClient.put(
    "user-head/" + new Date().Format("yyyy-MM-dd") + "/",
    fileName,
    localFile,
    (urls) => {
      let url = urls[0];
      if (url === undefined) {
        res.send({ success: false });
      }
      axios
        .patch(
          "/umsMember/icon",
          {
            id: userId,
            icon: url,
          },
          {
            headers: {
              "X-Token": token,
            },
          }
        )
        .then((response) => {
          // 上传完成后移除本地文件
          fs.unlinkSync(localFile);

          if (response.data.meta.success === true) {
            // 成功后删除oss上旧的头像
            let oldIconUrl = response.data.data;
            // 若无头像，不必删除
            if (oldIconUrl !== "") {
              let result = /aliyuncs\.com\/([\S]+\/+)([\S]+)/g.exec(oldIconUrl);
              let dir = result[1];
              let objectName = result[2];
              ossClient.deleteObj(dir, objectName);
            }
            res.send({
              success: true,
              icon: url,
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
 * 个人中心/余额 充值元宝
 */
router.post("/charge", (req, res) => {
  let { userId, token } = req.cookies;
  let charge = req.body.charge;
  let tradeNo = uuid.v1();
  alipay
    .charge(tradeNo, charge, (result) => {
      // Fixme: 还未支付 就增加余额
      axios
        .patch(
          "/umsMember/charge",
          {
            id: userId,
            charge: charge * 100,
          },
          {
            headers: {
              "X-Token": token,
            },
          }
        )
        .then((response) => {
          // res.send("success");
        })
        .catch((err) => {
          console.error(err);
        });

      res.send(JSON.stringify({ url: encodeURIComponent(result) }));
    })
    .catch((err) => {
      console.log(err);
    });
});
/**
 * 支付宝支付成功notify
 */
router.post("/notify", (req, res) => {
  let postData = req.body;
  if (postData.trade_status === "TRADE_SUCCESS") {
    let data = req.body; // 订单信息
    let charge = total_amount * 100;
    axios
      .patch(
        "/umsMember/charge",
        {
          id: userId,
          charge: charge,
        },
        {
          headers: {
            "X-Token": token,
          },
        }
      )
      .then((response) => {
        res.send("success");
      })
      .catch((err) => {
        console.error(err);
      });

    console.log("支付完成！");
  }
});

// 导出路由
module.exports = router;
