package cn.cslg.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/20 10:18 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MemberBookActionParam {
    private String goodsId;
    private long userId;
}
