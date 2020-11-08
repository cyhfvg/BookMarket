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
 * @version 2020/4/20 16:22 1.00
 */

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UmsMemberLikePromoteParam {
    private List<UmsSingleMemberLikePromoteParam> promotes;
}
