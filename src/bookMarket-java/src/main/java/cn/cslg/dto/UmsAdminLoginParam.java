package cn.cslg.dto;

import cn.cslg.validation.NotEmpty;
import lombok.Getter;
import lombok.Setter;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/2/28 19:37 1.00
 */

@Setter
@Getter
public class UmsAdminLoginParam {
    @NotEmpty(message = "用户名不可为空")
    private String username;
    @NotEmpty(message = "密码不可为空")
    private String password;

}
