package cn.cslg.dto;

import cn.cslg.validation.NotEmpty;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/3/23 10:59 1.00
 */

public class UmsMemberParam {
    @NotEmpty(message = "用户名不可为空")
    private String username;
    @NotEmpty(message = "密码不可为空")
    private String password;
}
