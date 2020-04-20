package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 会员-书籍分类关系表(ums_member_book_category_relation)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_member_book_category_relation")
@Scope("prototype")
public class UmsMemberBookCategoryRelation {
    
            
    /**
     * 会员-书籍关系编号
     */
    private Long id;
 
            
    /**
     * 会员编号
     */
    private Long memberId;
 
            
    /**
     * 书籍分类编号
     */
    private Long bookCategoryId;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberBookCategoryRelationIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberBookCategoryRelationIdGenerator")
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
        
    
    @Column(name = "book_category_id")
    public Long getBookCategoryId() {
        return bookCategoryId;
    }
    
    public void setBookCategoryId(Long bookCategoryId) {
        this.bookCategoryId = bookCategoryId;
    }
        
    public UmsMemberBookCategoryRelation() {
    
    }
}