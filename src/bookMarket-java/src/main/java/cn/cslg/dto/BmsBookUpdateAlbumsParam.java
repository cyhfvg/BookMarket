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
 * @version 2020/4/17 15:47 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class BmsBookUpdateAlbumsParam {
    @NotEmpty(message = "书籍id不可为空")
    private long id;
    private String url;
    private String description;
}
