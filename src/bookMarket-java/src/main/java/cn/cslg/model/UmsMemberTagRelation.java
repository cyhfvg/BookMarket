package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 用户-标签 关联表(ums_member_tag_relation)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_member_tag_relation")
@Scope("prototype")
public class UmsMemberTagRelation {
    
            
    /**
     * 会员-标签 关联编号
     */
    private Long id;
 
            
    /**
     * 会员编号
     */
    private Long memberId;
 
            
    /**
     * 标签编号
     */
    private Long tagId;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberTagRelationIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberTagRelationIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "member_id")
    public Long getMemberId() {
        return memberId;
    }
    
    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }
        
    
    @Column(name = "tag_id")
    public Long getTagId() {
        return tagId;
    }
    
    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }
        
    public UmsMemberTagRelation() {
    
    }
}