const util = require("./util");
const axios = util.axios;
const logger = require('./log');
const RecommendBookService = require("./recommend");

const url = "/umsMemberLike/memberBookTable";
const params = {};
const config = {
  timeout:3000000
}

const promoteNum = 10;

// *从数据库获取数据
axios.get(url, params, config).then((response) => {
  console.log('数据获取成功')
  let result = response.data;
  let data = result.data.table;
  let userIds = result.data.memberIds;

  let output = [];
  let i = 0;

  console.log('开始生成推荐列表');
  // 为每个用户生成推荐列表
  userIds.forEach((userId) => {
    const recommendService = new RecommendBookService(data, userId, promoteNum);
    const result = recommendService.start();
    let item = { memberId: userId, likeBooks: result };
    output[i++] = item;
  });

  console.log('生成推荐列表完毕');
  console.log('开始写回数据库');
  //*写入数据库
  let url = '/umsMemberLike/promote';
  let params = {
    promotes: output
  }
  axios.post(url, params, config).then(response => {
    // logger.debug('promote success');
    console.log('写入数据库成功')
  }).catch(err => {
    console.dir(err);
  });
});
