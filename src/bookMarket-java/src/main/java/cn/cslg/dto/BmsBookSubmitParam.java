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
 * @version 2020/4/15 14:08 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class BmsBookSubmitParam {
    @NotEmpty(message = "id 不可为空")
    private long id;
    @NotEmpty(message = "member id 不可为空")
    private long memberId;
    private String isbn;
    private Integer price;
    private String author;
    private String name;
    private String pic;
    private String summary;


}
