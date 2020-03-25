package cn.cslg.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/3/26 0:14 1.00
 */

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UmsMemberLoginLogParam {
    private Integer loginType;
    private Long memberId;
    private String city;
    private String ip;
    private String province;
}
