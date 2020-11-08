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
 * @description 会员登录日志表(ums_member_login_log)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_member_login_log")
@Scope("prototype")
public class UmsMemberLoginLog {
    
            
    /**
     * 纪录编号
     */
    private Long id;
 
            
    /**
     * 登录会员id
     */
    private Long memberId;
 
            
    /**
     * 登录日期
     */
    private Date createTime;
 
            
    /**
     * 登录ip
     */
    private String ip;
 
            
    /**
     * 登录城市
     */
    private String city;
 
            
    /**
     * 登录类型:0->pc;1->android;2->ios;3->小程序
     */
    private Integer loginType;
 
            
    /**
     * 登录省份
     */
    private String province;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberLoginLogIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberLoginLogIdGenerator")
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
        
    
    @Column(name = "city")
    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
        
    
    @Column(name = "login_type")
    public Integer getLoginType() {
        return loginType;
    }
    
    public void setLoginType(Integer loginType) {
        this.loginType = loginType;
    }
        
    
    @Column(name = "province")
    public String getProvince() {
        return province;
    }
    
    public void setProvince(String province) {
        this.province = province;
    }
        
    public UmsMemberLoginLog() {
    
    }
}