package cn.cslg.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

/**
 * description:
 *
 * @author zhangguangzhou
 * @version 2020/4/20 16:34 1.00
 */

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class UmsSingleMemberLikePromoteParam {
    private long memberId;
    private List<String> likeBooks;
}
