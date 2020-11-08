package cn.cslg.dto;

import cn.cslg.model.BmsBook;
import cn.cslg.model.OmsCompanyAddress;
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
 * @version 2020/4/19 9:19 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class OmsOrderBuyBooksParam {
    @NotEmpty(message = "userId 不可为空")
    private long userId;
    @NotEmpty(message = "books 不可为空")
    private List<BmsBook> books;
    @NotEmpty(message = "address 不可为空")
    private OmsCompanyAddress address;
}
