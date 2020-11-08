package cn.cslg.security;

/**
 * 令牌管理器
 *
 * @author 张广洲
 * @version 2020/2/27 20:47 1.00
 */
public interface TokenManager {

    String createToken(String username);

    boolean checkToken(String token);
}
