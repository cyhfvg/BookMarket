const util = require('./util');
const axios = util.axios;

const url = '/omsOrder/checkBalance';
const params = {};
const config = {
    timeout: 30000
}

axios.patch(url, params, config).then(response => {
    console.dir(response);
}).catch(err => {
    console.dir(err);
});
