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
 * @version 2020/5/21 14:23 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class OmsOrderItemSendParam {
    @NotEmpty(message = "itemId 不可为空")
    private long itemId;
}
