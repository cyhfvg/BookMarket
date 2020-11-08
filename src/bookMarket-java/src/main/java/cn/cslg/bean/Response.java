package cn.cslg.bean;

/**
 *
 * 响应对象
 *
 * @author 张广洲
 * @version 2020/2/27 15:30 1.00
 */

public class Response {
    private static final String OK = "ok";
    private static final String ERROR = "error";

    private Meta meta;
    private Object data;

    public Response success() {
        this.meta = new Meta(true, OK);
        return this;
    }

    public Response success(Object data) {
        this.meta = new Meta(true, OK);
        this.data = data;
        return this;
    }

    public Response failure() {
        this.meta = new Meta(false, ERROR);
        return this;
    }

    public Response failure(String message) {
        this.meta = new Meta(false, message);
        return this;
    }

    public Response token(String token) {
        this.meta.setToken(token);
        return this;
    }

    public Meta getMeta() {
        return this.meta;
    }

    public Object getData() {
        return data;
    }

    public class Meta {
        private boolean success;
        private String message;
        private String token;

        public Meta(boolean success) {
            this.success = success;
        }

        public Meta(boolean success, String message) {
            this.success = success;
            this.message = message;
        }

        public Meta(boolean success, String message, String token) {
            this.success = success;
            this.message = message;
            this.token = token;
        }

        public boolean isSuccess() {
            return success;
        }

        public String getMessage() {
            return message;
        }

        public String getToken() {
            return this.token;
        }

        public void setToken(String token) {
            this.token = token;
        }
    }
}


