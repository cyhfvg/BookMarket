package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description (ums_member_like)表实体类
 * @author zhangguangzhou
 * @date 2020-04-20 10:38:06
 */
@Entity
@Table(name = "ums_member_like")
@Scope("prototype")
public class UmsMemberLike {
    
            private Long id;
 
            
    /**
     * 用户编号
     */
    private Long memberId;
 
            
    /**
     * 书籍isbn
     */
    private String isbn;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberLikeIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberLikeIdGenerator")
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
        
    
    @Column(name = "ISBN")
    public String getIsbn() {
        return isbn;
    }
    
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
        
    public UmsMemberLike() {
    
    }
}