package cn.cslg.util;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.UUID;

/**
 * 编码与解码操作工具类
 *
 * @author 张广洲
 * @version 2020/2/27 20:51 1.00
 */

public class CodecUtil {
    private static Logger logger = LoggerFactory.getLogger(CodecUtil.class);

    /**
     * 将 URL 编码
     * @param str
     * @return
     */
    public static String encodeURL(String str) {
        String target;
        try {
            target = URLEncoder.encode(str, "UTF-8");
        } catch (Exception e) {
            logger.error("编码出错!", e);
            throw new RuntimeException(e);
        }
        return target;
    }

    /**
     * 将 URL 解码
     * @param str
     * @return
     */
    public static String decodeURL(String str) {
        String target;
        try {
            target = URLDecoder.decode(str, "UTF-8");
        } catch (Exception e) {
            logger.error("解码出错!", e);
            throw new RuntimeException(e);
        }
        return target;
    }

    /**
     * 将字符串 Base64 编码
     * @param str
     * @return
     */
    public static String encodeBASE64(String str) {
        String target;
        target = Base64.encodeBase64URLSafeString(str.getBytes());
        return target;
    }

    /**
     * 将字符串 Base64 解码
     * @param str
     * @return
     */
    public static String decodeBASE64(String str) {
        String target;
        try {
            target = new  String(Base64.decodeBase64(str), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            logger.error("解码出错!", e);
            throw new RuntimeException(e);
        }
        return target;
    }

    /**
     * 将字符串 MD5 加密
     * @param str
     * @return
     */
    public static String encryptMD5(String str) {
        return DigestUtils.md5Hex(str);
    }

    /**
     * 将字符串 SHA 加密
     * @param str
     * @return
     */
    public static String encryptSHA(String str) {
        return DigestUtils.sha1Hex(str);
    }

    /**
     * 创建随机数
     * @param count
     * @return
     */
    public static String createRandom(int count) {
        return RandomStringUtils.randomNumeric(count);
    }

    /**
     * 获取 UUID (32位)
     * @return
     */
    public static String createUUID() {
        return UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
    }
}
