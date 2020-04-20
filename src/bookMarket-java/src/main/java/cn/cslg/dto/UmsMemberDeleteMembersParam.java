package cn.cslg.dto;

import cn.cslg.model.UmsMember;
import cn.cslg.validation.NotEmpty;
import lombok.*;

import java.util.List;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/20 0:28 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class UmsMemberDeleteMembersParam {
    @NotEmpty(message = "members 不可为空")
    private List<UmsMember> members;
}
