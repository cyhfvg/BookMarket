/**
 * 将script脚本 一行一行 执行
 * @param {script 代码} script
 */
function runScript(script) {
  return new Promise((reslove, rejected) => {
    // 直接 document.head.appendChild(script) 是不会生效的，需要重新创建一个
    const newScript = document.createElement("script");
    // 获取 inline script
    newScript.innerHTML = script.innerHTML;
    // 存在 src 属性的话
    const src = script.getAttribute("src");
    if (src) newScript.setAttribute("src", src);

    // script 加载完成和错误处理
    newScript.onload = () => reslove();
    newScript.onerror = (err) => rejected();
    document.head.appendChild(newScript);
    document.head.removeChild(newScript);
    if (!src) {
      // 如果是 inline script 执行是同步的
      reslove();
    }
  });
}

/**
 * 将innerHtml 添加到指定节点， script 可运行
 * @param {innerHtml 欲添加的节点} container
 * @param {innerHtml 可包含script脚本} rawHTML
 */
function setHTMLWithScript(container, rawHTML) {
  container.innerHTML = rawHTML;
  const scripts = container.querySelectorAll("script");

  return Array.prototype.slice.apply(scripts).reduce((chain, script) => {
    return chain.then(() => runScript(script));
  }, Promise.resolve());
}

/**
 * 判断对象是否为空
 * @param {需要判断的对象} obj
 */
function checkNullObj(obj) {
  return Object.keys(obj).length === 0;
}

/**
 * 对Date的扩展，将 Date 转化为指定格式的String
 * 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
 * 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
 * 例子：
 * (new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
 * (new Date()).Format("yyyy-M-d h:m:s.S")   *    *    * ==> 2006-7-2 8:9:4.18
 * 调用：
 * var time1 = new Date().Format("yyyy-MM-dd");
 * var time2 = new Date().Format("yyyy-MM-dd HH:mm:ss");
 */
Date.prototype.Format = function (fmt) {
  var o = {
    "M+": this.getMonth() + 1, //月份
    "d+": this.getDate(), //日
    "h+": this.getHours(), //小时
    "m+": this.getMinutes(), //分
    "s+": this.getSeconds(), //秒
    "q+": Math.floor((this.getMonth() + 3) / 3), //季度
    S: this.getMilliseconds(), //毫秒
  };
  if (/(y+)/.test(fmt))
    fmt = fmt.replace(
      RegExp.$1,
      (this.getFullYear() + "").substr(4 - RegExp.$1.length)
    );
  for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt))
      fmt = fmt.replace(
        RegExp.$1,
        RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length)
      );
  return fmt;
};
