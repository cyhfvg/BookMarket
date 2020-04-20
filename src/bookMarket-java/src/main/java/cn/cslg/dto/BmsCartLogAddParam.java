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
 * @version 2020/4/18 16:12 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class BmsCartLogAddParam {
    @NotEmpty(message = "memberId 不可为空")
    private long userId;
    @NotEmpty(message = "bookId 不可为空")
    private long bookId;
    @NotEmpty(message = "isbn 不可为空")
    private String isbn;
}
