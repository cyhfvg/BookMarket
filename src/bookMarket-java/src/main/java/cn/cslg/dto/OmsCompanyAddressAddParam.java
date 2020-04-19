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
 * @version 2020/4/19 1:09 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class OmsCompanyAddressAddParam {
    @NotEmpty(message = "userId 不可为空")
    private long userId;
    @NotEmpty(message = "name 不可为空")
    private String name;
    @NotEmpty(message = "city 不可为空")
    private String city;
    @NotEmpty(message = "detailAddress 不可为空")
    private String detailAddress;
    @NotEmpty(message = "phone 不可为空")
    private String phone;
    @NotEmpty(message = "province 不可为空")
    private String province;
    @NotEmpty(message = "region 不可为空")
    private String region;
}
