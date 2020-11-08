package cn.cslg.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/5/21 14:05 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class OmsBookParam {
    private long itemId;
    private String bookName;
    private int bookPrice;
    private Date paymemtTime;
    private String bookPic;
}
