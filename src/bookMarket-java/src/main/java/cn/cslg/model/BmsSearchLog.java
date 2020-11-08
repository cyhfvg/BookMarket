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
 * @description (bms_search_log)表实体类
 * @author zhangguangzhou
 * @date 2020-04-18 12:56:14
 */
@Entity
@Table(name = "bms_search_log")
@Scope("prototype")
public class BmsSearchLog {
    
            
    /**
     * id
     */
    private Long id;
 
            
    /**
     * 用户编号
     */
    private Long memberId;
 
            
    /**
     * 搜索书籍isbn
     */
    private String isbn;
 
            
    /**
     * 搜索内容
     */
    private String text;
 
            
    /**
     * 搜索时间
     */
    private Date createTime;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "BmsSearchLogIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "BmsSearchLogIdGenerator")
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
        
    
    @Column(name = "text")
    public String getText() {
        return text;
    }
    
    public void setText(String text) {
        this.text = text;
    }
        
    
    @Column(name = "create_time")
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
        
    public BmsSearchLog() {
    
    }
}