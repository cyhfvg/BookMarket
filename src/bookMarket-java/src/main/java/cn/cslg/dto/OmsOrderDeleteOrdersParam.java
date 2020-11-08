package cn.cslg.dto;

import cn.cslg.model.OmsOrder;
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
 * @version 2020/5/20 21:42 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class OmsOrderDeleteOrdersParam {
    @NotEmpty(message = "orders 不可为空")
    private List<OmsOrder> orders;
}
