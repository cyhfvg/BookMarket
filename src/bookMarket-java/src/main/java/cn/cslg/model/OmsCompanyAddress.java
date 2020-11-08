package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description (oms_company_address)表实体类
 * @author zhangguangzhou
 * @date 2020-04-18 23:04:53
 */
@Entity
@Table(name = "oms_company_address")
@Scope("prototype")
public class OmsCompanyAddress {
    
            
    /**
     * 编号
     */
    private Long id;
 
            
    /**
     * 用户编号
     */
    private Long memberId;
 
            
    /**
     * 地址名称
     */
    private String addressName;
 
            
    /**
     * 默认发货地址：0->否；1->是
     */
    private Integer sendStatus;
 
            
    /**
     * 是否默认收货地址：0->否；1->是
     */
    private Integer receiveStatus;
 
            
    /**
     * 收发货人姓名
     */
    private String name;
 
            
    /**
     * 收货人电话
     */
    private String phone;
 
            
    /**
     * 省/直辖市
     */
    private String province;
 
            
    /**
     * 市
     */
    private String city;
 
            
    /**
     * 区
     */
    private String region;
 
            
    /**
     * 详细地址
     */
    private String detailAddress;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "OmsCompanyAddressIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "OmsCompanyAddressIdGenerator")
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
        
    
    @Column(name = "address_name")
    public String getAddressName() {
        return addressName;
    }
    
    public void setAddressName(String addressName) {
        this.addressName = addressName;
    }
        
    
    @Column(name = "send_status")
    public Integer getSendStatus() {
        return sendStatus;
    }
    
    public void setSendStatus(Integer sendStatus) {
        this.sendStatus = sendStatus;
    }
        
    
    @Column(name = "receive_status")
    public Integer getReceiveStatus() {
        return receiveStatus;
    }
    
    public void setReceiveStatus(Integer receiveStatus) {
        this.receiveStatus = receiveStatus;
    }
        
    
    @Column(name = "name")
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
        
    
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
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
        
    public OmsCompanyAddress() {
    
    }
}