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
 * @description 会员表(ums_member)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_member")
@Scope("prototype")
public class UmsMember {
    
            
    /**
     * 用户编号
     */
    private Long id;
 
            
    /**
     * 用户等级编号
     */
    private Long memberLevelId;
 
            
    /**
     * 用户名
     */
    private String username;
 
            
    /**
     * 密码
     */
    private String password;
 
            
    /**
     * 用户昵称
     */
    private String nickname;
 
            
    /**
     * 手机号码
     */
    private String phone;
 
            
    /**
     * 用户启用状态:0->未启用;1->启用
     */
    private Integer status;
 
            
    /**
     * 注册时间
     */
    private Date createTime;
 
            
    /**
     * 头像
     */
    private String icon;
 
            
    /**
     * 性别:0->未知;1->男;2->女
     */
    private Integer gender;
 
            
    /**
     * 生日
     */
    private Date birthday;
 
            
    /**
     * 所在城市
     */
    private String city;
 
            
    /**
     * 职业
     */
    private String job;
 
            
    /**
     * 个性签名
     */
    private String personalizedSignature;
 
            
    /**
     * 成长值
     */
    private Integer growth;

    /**
     * 余额
     */
    private Integer balance;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "member_level_id")
    public Long getMemberLevelId() {
        return memberLevelId;
    }
    
    public void setMemberLevelId(Long memberLevelId) {
        this.memberLevelId = memberLevelId;
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
        
    
    @Column(name = "nickname")
    public String getNickname() {
        return nickname;
    }
    
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
        
    
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
        
    
    @Column(name = "status")
    public Integer getStatus() {
        return status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
        
    
    @Column(name = "create_time")
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
        
    
    @Column(name = "icon")
    public String getIcon() {
        return icon;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
        
    
    @Column(name = "gender")
    public Integer getGender() {
        return gender;
    }
    
    public void setGender(Integer gender) {
        this.gender = gender;
    }
        
    
    @Column(name = "birthday")
    public Date getBirthday() {
        return birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
        
    
    @Column(name = "city")
    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
        
    
    @Column(name = "job")
    public String getJob() {
        return job;
    }
    
    public void setJob(String job) {
        this.job = job;
    }
        
    
    @Column(name = "personalized_signature")
    public String getPersonalizedSignature() {
        return personalizedSignature;
    }
    
    public void setPersonalizedSignature(String personalizedSignature) {
        this.personalizedSignature = personalizedSignature;
    }
        
    
    @Column(name = "growth")
    public Integer getGrowth() {
        return growth;
    }
    
    public void setGrowth(Integer growth) {
        this.growth = growth;
    }

    @Column(name = "balance")
    public Integer getBalance() {
        return balance;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }
        
    public UmsMember() {
    
    }
}