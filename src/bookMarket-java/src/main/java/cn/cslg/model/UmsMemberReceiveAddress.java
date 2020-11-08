package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 会员收货地址表

(ums_member_receive_address)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_member_receive_address")
@Scope("prototype")
public class UmsMemberReceiveAddress {
    
            
    /**
     * 地址编号
     */
    private Long id;
 
            
    /**
     * 会员编号
     */
    private Long memberId;
 
            
    /**
     * 收货人名称
     */
    private String name;
 
            
    /**
     * 收货人手机号码
     */
    private String phoneNumber;
 
            
    /**
     * 是否为默认
     */
    private Integer defaultStatus;
 
            
    /**
     * 邮政编码
     */
    private String postCode;
 
            
    /**
     * 省份/直辖市
     */
    private String province;
 
            
    /**
     * 城市
     */
    private String city;
 
            
    /**
     * 区
     */
    private String region;
 
            
    /**
     * 详细地址(街道)
     */
    private String detailAddress;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberReceiveAddressIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberReceiveAddressIdGenerator")
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
        
    
    @Column(name = "name")
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
        
    
    @Column(name = "phone_number")
    public String getPhoneNumber() {
        return phoneNumber;
    }
    
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
        
    
    @Column(name = "default_status")
    public Integer getDefaultStatus() {
        return defaultStatus;
    }
    
    public void setDefaultStatus(Integer defaultStatus) {
        this.defaultStatus = defaultStatus;
    }
        
    
    @Column(name = "post_code")
    public String getPostCode() {
        return postCode;
    }
    
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }
        
    
    @Column(name = "province")
    public String getProvince() {
        return province;
    }
    
    public void setProvince(String province) {
        this.province = province;
    }
        
    
    @Column(name = "city")
    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
        
    
    @Column(name = "region")
    public String getRegion() {
        return region;
    }
    
    public void setRegion(String region) {
        this.region = region;
    }
        
    
    @Column(name = "detail_address")
    public String getDetailAddress() {
        return detailAddress;
    }
    
    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress;
    }
        
    public UmsMemberReceiveAddress() {
    
    }
}