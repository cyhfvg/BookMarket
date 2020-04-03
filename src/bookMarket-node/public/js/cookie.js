function foreach() {
    let strCookie=document.cookie;
    let arrCookie=strCookie.split("; ");
    for(let i=0;i<arrCookie.length;i++) {
        let arr=arrCookie[i].split("=");
        if(arr.length>0)
        delCookie(arr[0]);
    }
}

function getCookieVal(offset) {
    let endStr = document.cookie.indexOf (";", offset);
    if (endStr == -1)
    endStr = document.cookie.length;
    return decodeURIComponent(document.cookie.substring(offset, endStr));
}

function delCookie(name) {
    let exp = new Date();
    exp.setTime (exp.getTime() - 1);
    let cookieVal = getCookie (name);
    document.cookie = name + "=" + cookieVal + "; expires="+ exp.toGMTString();
}

function getCookie(name) {
    let arg = name + "=";
    let argLen = arg.length;
    let cookieLen = document.cookie.length;
    let i = 0;
    while (i < cookieLen) {
        let j = i + argLen;
        if (document.cookie.substring(i, j) == arg)
        return getCookieVal (j);
        i = document.cookie.indexOf(" ", i) + 1;
        if (i == 0) break;
    }
    return null;

}

function clearCookie(){
    let date=new Date();
    date.setTime(date.getTime()-10000);
    let keys=document.cookie.match(/[^ =;]+(?=\=)/g);
    if (keys) {
        for (let i = keys.length; i--;) {
            document.cookie=keys[i]+"=0; expire="+date.toGMTString()+"; path=/";
            // delCookie(keys[i]);
        }
    }
}
