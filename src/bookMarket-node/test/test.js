// let util = require('../util');
// let date = new Date().Format('yyyy-MM-dd');
// console.log(date);

// let book = null;
// if(book) {
//     console.log('if (book) == null');
// } else {
//     console.log('if (!book) == null');
// }

let regexp = /^\d+$/g;
let isbn = '9787515907024';
console.debug(regexp.exec(isbn))
