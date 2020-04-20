let OSS = require('ali-oss');

let ossClient = new OSS({
    region: 'oss-cn-shanghai',
    accessKeyId: 'LTAI4FtQ9cPJRn3E7r6R7swT',
    accessKeySecret: 'ZYOq5vVHnQcAsszh4hXuTVmp9Bx1u7',
    bucket: 'book-market',
})

async function listBuckets () {
  try {
    let result = await ossClient.listBuckets();
    console.log(result);
  } catch(err) {
    console.log(err)
  }
}


async function list () {
  try {
    let result = await ossClient.list({
      'max-keys': 5
    })
    console.log(result)
  } catch (err) {
    console.log (err)
  }
}

/**
 * 上传
 */
async function put () {
  try {
    let result = await ossClient.put('book-cover/log.js', '../log.js');
    console.log(result);
   } catch (err) {
     console.log (err);
   }
}

async function get () {
  try {
    let result = await ossClient.get('book-cover/log.js');
    console.log(result);
  } catch (err) {
    console.log (err);
  }
}


/**
 * 删除对象
 */
async function objectDelete () {
  try {
    let result = await ossClient.delete('book-cover/log.js');
    console.log(result);
  } catch (err) {
    console.log (err);
  }
}

// objectDelete();


// get();



// listBuckets();

// list();

put();
