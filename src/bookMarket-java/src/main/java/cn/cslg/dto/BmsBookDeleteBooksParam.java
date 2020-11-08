package cn.cslg.dto;

import cn.cslg.model.BmsBook;
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
 * @version 2020/5/20 21:40 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class BmsBookDeleteBooksParam {
    @NotEmpty(message = "books 不可为空")
    private List<BmsBook> books;
}
