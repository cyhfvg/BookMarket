package cn.cslg.security.impl;

import cn.cslg.security.TokenManager;
import cn.cslg.util.CodecUtil;
import cn.cslg.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 默认令牌管理器
 *
 * @author 张广洲
 * @version 2020/2/27 20:49 1.00
 */

public class DefaultTokenManager implements TokenManager {
    private static Logger logger = LoggerFactory.getLogger(DefaultTokenManager.class);
    private static Map<String, String> tokenMap = new ConcurrentHashMap<>();
    @Override
    public String createToken(String username) {
        String token = CodecUtil.createUUID();
        tokenMap.put(token, username);
        logger.debug("user {} has token {}", username, token);
        return token;
    }

    @Override
    public boolean checkToken(String token) {
        logger.debug("checkToken {}", token);
        return !StringUtil.isEmpty(token) && tokenMap.containsKey(token);
    }
}
