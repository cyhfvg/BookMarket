package cn.cslg.security.impl;

import cn.cslg.security.TokenManager;
import cn.cslg.util.CodecUtil;
import cn.cslg.util.StringUtil;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 默认令牌管理器
 *
 * @author 张广洲
 * @version 2020/2/27 20:49 1.00
 */

public class DefaultTokenManager implements TokenManager {
    private static Map<String, String> tokenMap = new ConcurrentHashMap<>();
    @Override
    public String createToken(String username) {
        String token = CodecUtil.createUUID();
        tokenMap.put(token, username);
        return token;
    }

    @Override
    public boolean checkToken(String token) {
        return !StringUtil.isEmpty(token) && tokenMap.containsKey(token);
    }
}
