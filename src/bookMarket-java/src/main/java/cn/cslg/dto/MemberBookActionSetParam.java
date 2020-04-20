package cn.cslg.dto;

import cn.cslg.validation.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/20 13:52 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MemberBookActionSetParam {
    @NotEmpty(message = "memberIds 不可为空")
    private List<Long> memberIds;
    @NotEmpty(message = "table 不可为空")
    private List<MemberBookActionParam> table;
}
