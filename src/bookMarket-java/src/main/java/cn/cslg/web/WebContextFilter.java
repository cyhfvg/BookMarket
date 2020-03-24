package cn.cslg.web;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用于管理 WebContext 对象的生命周期
 *
 * @author zhangguangzhou
 * @version 2020/2/28 13:37 1.00
 */

public class WebContextFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        if (request.getMethod().equalsIgnoreCase("OPTIONS")) {
            return;
        }

        WebContex.init(request, response);;
        try {
            chain.doFilter(request, response);
        } finally {
            WebContex.destroy();
        }
    }

    @Override
    public void destroy() {

    }
}
