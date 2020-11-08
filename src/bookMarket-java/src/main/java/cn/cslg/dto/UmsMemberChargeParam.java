package cn.cslg.dto;

import cn.cslg.validation.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/14 6:54 1.00
 */

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UmsMemberChargeParam {
    @NotEmpty(message = "id 不可为空")
    private long id;
    @NotEmpty(message = "charge 不可为空")
    private int charge;


}
