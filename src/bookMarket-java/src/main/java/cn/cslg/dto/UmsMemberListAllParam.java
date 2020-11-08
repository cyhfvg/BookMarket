package cn.cslg.dto;

import cn.cslg.validation.NotEmpty;
import lombok.*;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/19 22:11 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class UmsMemberListAllParam {
    @NotEmpty(message = "page 不可为空")
    private int page;
    @NotEmpty(message = "pageSize 不可为空")
    private int pageSize;
}
