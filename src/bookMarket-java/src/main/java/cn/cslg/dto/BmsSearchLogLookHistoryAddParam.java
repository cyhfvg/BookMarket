package cn.cslg.dto;

import cn.cslg.model.BmsBook;
import cn.cslg.validation.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/20 8:24 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class BmsSearchLogLookHistoryAddParam {
    @NotEmpty(message = "useId 不可为空")
    private long userId;
    @NotEmpty(message = "book 不可为空")
    private BmsBook book;
}
