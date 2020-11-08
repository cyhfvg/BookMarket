package cn.cslg.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 用户购物车内容表(bms_cart_log)表实体类
 * @author zhangguangzhou
 * @date 2020-04-18 15:41:40
 */
@Entity
@Table(name = "bms_cart_log")
@Scope("prototype")
public class BmsCartLog {
    
            
    /**
     * 编号
     */
    private Long id;
 
            
    /**
     * 用户id
     */
    private Long memberId;
 
            
    /**
     * 书籍id
     */
    private Long bookId;
 
            
    /**
     * 书籍ISBN
     */
    private String isbn;
 
            
    /**
     * 加入时间
     */
    private Date addTime;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "BmsCartLogIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "BmsCartLogIdGenerator")
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
        
    
    @Column(name = "book_id")
    public Long getBookId() {
        return bookId;
    }
    
    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }
        
    
    @Column(name = "ISBN")
    public String getIsbn() {
        return isbn;
    }
    
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
        
    
    @Column(name = "add_time")
    public Date getAddTime() {
        return addTime;
    }
    
    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }
        
    public BmsCartLog() {
    
    }
}