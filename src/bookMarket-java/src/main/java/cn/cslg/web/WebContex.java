package cn.cslg.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 用于封装 Request 与 Response 对象
 *
 * @author zhangguangzhou
 * @version 2020/2/27 21:45 1.00
 */

public class WebContex {

    private static ThreadLocal<HttpServletRequest> requestHolder = new ThreadLocal<>();
    private static ThreadLocal<HttpServletResponse> responseHolder = new ThreadLocal<>();

    /**
     * 初始化
     * @param request
     * @param response
     */
    public static void init(HttpServletRequest request, HttpServletResponse response) {
        requestHolder.set(request);
        responseHolder.set(response);
    }

    /**
     * 摧毁
     */
    public static void destroy() {
        requestHolder.remove();
        responseHolder.remove();
    }

    /**
     * 获取 Request 对象
     * @return
     */
    public static HttpServletRequest getRequest() {
        return requestHolder.get();
    }

    /**
     * 获取 Response 对象
     * @return
     */
    public static HttpServletResponse getResponse() {
        return responseHolder.get();
    }
}
