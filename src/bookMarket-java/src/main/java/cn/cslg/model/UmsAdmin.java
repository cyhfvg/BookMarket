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
 * @description 后台用户表
(ums_admin)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_admin")
@Scope("prototype")
public class UmsAdmin {
    
            
    /**
     * 管理员编号
     */
    private Long id;
 
            
    /**
     * 用户名
     */
    private String username;
 
            
    /**
     * 密码
     */
    private String password;
 
            
    /**
     * 头像
     */
    private String icon;
 
            
    /**
     * 邮箱
     */
    private String email;
 
            
    /**
     * 昵称
     */
    private String nickName;
 
            
    /**
     * 备注信息
     */
    private String note;
 
            
    /**
     * 创建时间
     */
    private Date createTime;
 
            
    /**
     * 最后登录时间
     */
    private Date loginTime;
 
            
    /**
     * 帐号启用状态:0->禁用;1->启用
     */
    private Integer status;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsAdminIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsAdminIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "username")
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
        
    
    @Column(name = "password")
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
        
    
    @Column(name = "icon")
    public String getIcon() {
        return icon;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
        
    
    @Column(name = "email")
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
        
    
    @Column(name = "nick_name")
    public String getNickName() {
        return nickName;
    }
    
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
        
    
    @Column(name = "note")
    public String getNote() {
        return note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }
        
    
    @Column(name = "create_time")
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
        
    
    @Column(name = "login_time")
    public Date getLoginTime() {
        return loginTime;
    }
    
    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }
        
    
    @Column(name = "status")
    public Integer getStatus() {
        return status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
        
    public UmsAdmin() {
    
    }
}