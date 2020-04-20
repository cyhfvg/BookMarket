package cn.cslg.dto;

import cn.cslg.validation.NotEmpty;
import lombok.*;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/12 10:49 1.00
 */

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UmsMemberHeadUpdateParam {
    @NotEmpty(message = "id 不可为空")
    private long id;
    @NotEmpty(message = "头像不可为空")
    private String icon;
}
