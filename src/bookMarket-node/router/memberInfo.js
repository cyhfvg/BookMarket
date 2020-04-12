let config = require("../config");
let express = require("express");
let fs = require("fs");
let path = require("path");
let util = require("../util");

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
  let { nickname, gender, birthday, job } = req.body;
  let { userId, token } = req.cookies;
  axios
    .patch(
      "/umsMember",
      {
        birthday: birthday,
        gender: gender,
        nickname: nickname,
        id: userId,
        job: job,
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
  let fileName = file.filename;
  let localFile = file.path;
  if (file === undefined) {
    res.send({ success: false });
  } else {
    ossClient.put("user-head/", fileName, localFile, (urls) => {
      let url = urls[0];
      if (url === undefined) {
        res.send({success: false});
      }
      console.log("url:" + url);
      console.log("id: " + userId);
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
            let result = /aliyuncs\.com\/([\S]+\/+)([\S]+)/g.exec(oldIconUrl);
            let dir = result[1];
            let objectName = result[2];
            ossClient.deleteObj(dir, objectName);

            res.send({
              success: true,
              icon: url,
            });
          } else {
            res.send({success: false});
          }
        })
        .catch((err) => {
          console.error(err);
          res.send({ success: false });
        });
    });
  }
});

/**
 * 个人中心/余额
 */
router.post("/balance", (req, res) => {});

// 导出路由
module.exports = router;
