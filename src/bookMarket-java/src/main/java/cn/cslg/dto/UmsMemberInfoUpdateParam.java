package cn.cslg.dto;

import cn.cslg.validation.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/11 9:01 1.00
 */


@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UmsMemberInfoUpdateParam {
    @NotEmpty(message = "id 不可为空")
    private long id;
    private String birthday;
    private String city;
    private String job;
    private String nickname;
    private int gender;

}
