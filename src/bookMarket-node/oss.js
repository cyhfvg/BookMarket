let config = require("./config");
let OSS = require("ali-oss");

/**
 * 阿里 oss 对象存储 client
 */
let ossClient = new OSS({
  region: config.ossRegion,
  accessKeyId: config.ossAccessKeyId,
  accessKeySecret: config.ossAccessKeySecret,
  bucket: config.ossBucket,
});

/**
 * 对象保存到 oss 服务器
 * @param {string} dir 目录名 dir/
 * @param {string} objectName 对象名
 * @param {string} file 对象
 */
exports.put = async function (dir, objectName, file, callback) {
  try {
    let result = await ossClient.put(dir + objectName, file);
    callback(result.res.requestUrls);
  } catch (err) {
    callback(undefined);
  }
};

/**
 * 从oss服务器获取对象
 * @param {string} dir 目录名 dir/
 * @param {string} objectName 对象名
 */
exports.get = async function (dir, objectName) {
  try {
    // let result = await ossClient.get('book-cover/log.js');
    let result = await ossClient.get(dir + objectName);
  } catch (err) {
    console.log(err);
  }
};

/**
 * 删除oss 服务器 上的对象
 * @param {string} dir 目录名 dir/
 * @param {string} objectName 对象名
 */
exports.deleteObj = async function (dir, objectName) {
  try {
    let result = await ossClient.delete(dir + objectName);
    return result.res;
  } catch (err) {
    console.log(err);
  }
};
