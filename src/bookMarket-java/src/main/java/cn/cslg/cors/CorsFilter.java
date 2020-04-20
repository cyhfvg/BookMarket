package cn.cslg.cors;

import cn.cslg.util.CollectionUtil;
import cn.cslg.util.StringUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * 支持 CORS 跨域
 *
 * @author 张广洲
 * @version 2020/2/27 17:09 1.00
 */

public class CorsFilter implements Filter {

    private String allowOrigin;
    private String allowMethods;
    private String allowCredentials;
    private String allowHeaders;
    private String exposeHeaders;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allowOrigin = filterConfig.getInitParameter("allowOrigin");
        allowMethods = filterConfig.getInitParameter("allowMethods");
        allowCredentials = filterConfig.getInitParameter("allowCredentials");
        allowHeaders = filterConfig.getInitParameter("allowHeaders");
        exposeHeaders = filterConfig.getInitParameter("exposeHeaders");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        if (StringUtil.isNotEmpty(allowOrigin)) {
            List<String> allowOriginList = Arrays.asList(allowOrigin.split(","));

            if (CollectionUtil.isNotEmpty(allowOriginList)) {
                String currentOrigin = request.getHeader("Origin");

                if (allowOriginList.contains(currentOrigin)) {
                    /**
                     * 允许访问的客户端域名
                     * 例如 http://web.xxx.com
                     * 若为 * 则表示从任意域都能访问，即不做任何限制
                     */
                    response.setHeader("Access-Control-Allow-Origin", currentOrigin);
                }
            }
        }

        if (StringUtil.isNotEmpty(allowMethods)) {
            /**
             * 允许访问的方法名，多个方法名用逗号分割
             * 如 GET,POST,PUT,DELETE,OPTIONS
             */
            response.setHeader("Access-Control-Allow-Methods", allowMethods);
        }

        if (StringUtil.isNotEmpty(allowCredentials)) {
            /**
             * 是否允许带有验证信息，若要获取客户端域下的cookie时，需要设置为 true
             */
            response.setHeader("Access-Control-Allow-Credentials", allowCredentials);
        }

        if (StringUtil.isNotEmpty(allowHeaders)) {
            /**
             * 允许服务端访问的客户端响应头，多个响应头用逗号分割。
             */
            response.setHeader("Access-Control-Allow-Headers", allowHeaders);
        }

        if (StringUtil.isNotEmpty(exposeHeaders)) {
            /**
             * 允许客户端访问的服务端响应头，多个响应头用逗号分割。
             */
            response.setHeader("Access-Control-Expose-Headers", exposeHeaders);
        }

        chain.doFilter(req, res);
    }

    @Override
    public void destroy() {

    }
}
