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
 * @description 后台用户登录日志(ums_admin_login_log)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_admin_login_log")
@Scope("prototype")
public class UmsAdminLoginLog {
    
            
    /**
     * 管理员登录纪录编号
     */
    private Long id;
 
            
    /**
     * 管理员编号
     */
    private Long adminId;
 
            
    /**
     * 创建时间
     */
    private Date createTime;
 
            
    /**
     * 登录ip
     */
    private String ip;
 
            
    /**
     * 地址
     */
    private String address;
 
            
    /**
     * 浏览器登录类型
     */
    private String userAgent;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsAdminLoginLogIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsAdminLoginLogIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "admin_id")
    public Long getAdminId() {
        return adminId;
    }
    
    public void setAdminId(Long adminId) {
        this.adminId = adminId;
    }
        
    
    @Column(name = "create_time")
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
        
    
    @Column(name = "ip")
    public String getIp() {
        return ip;
    }
    
    public void setIp(String ip) {
        this.ip = ip;
    }
        
    
    @Column(name = "address")
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
        
    
    @Column(name = "user_agent")
    public String getUserAgent() {
        return userAgent;
    }
    
    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }
        
    public UmsAdminLoginLog() {
    
    }
}