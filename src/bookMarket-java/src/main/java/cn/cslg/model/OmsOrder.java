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
 * @description (oms_order)表实体类
 * @author zhangguangzhou
 * @date 2020-04-13 10:06:18
 */
@Entity
@Table(name = "oms_order")
@Scope("prototype")
public class OmsOrder {
    
            
    /**
     * 订单id
     */
    private Long id;
 
            
    /**
     * 用户编号
     */
    private Long memberId;
 
            
    /**
     * 订单编号
     */
    private String orderSn;
 
            
    /**
     * 提交时间
     */
    private Date createTime;
 
            
    /**
     * 用户账号
     */
    private String memberUsername;
 
            
    /**
     * 总金额
     */
    private Integer totalAmount;
 
            
    /**
     * 订单状态:0->待付款;1->待发货;2->已以货;3已完成;4->已关闭;5:无效订单
     */
    private Integer status;
 
            
    /**
     * 物流公司
     */
    private String deliveryCompany;
 
            
    /**
     * 物流单号
     */
    private String deliverySn;
 
            
    /**
     * 收货人姓名
     */
    private String receiverName;
 
            
    /**
     * 收货人电话
     */
    private String receiverPhone;
 
            
    /**
     * 收货人邮编
     */
    private String receiverPostCode;
 
            
    /**
     * 省份/直辖市
     */
    private String receiverProvince;
 
            
    /**
     * 城市
     */
    private String receiverCity;
 
            
    /**
     * 区
     */
    private String receiverRegion;
 
            
    /**
     * 详细地址
     */
    private String receiverDetailAddress;
 
            
    /**
     * 订单备注
     */
    private String note;
 
            
    /**
     * 确认收货状态:0->未确认;1->已确认
     */
    private Integer confirmStatus;
 
            
    /**
     * 删除状态:0->未删除;1->已删除
     */
    private Integer deleteStatus;
 
            
    /**
     * 支付时间
     */
    private Date paymemtTime;
 
            
    /**
     * 发货时间
     */
    private Date deliveryTime;
 
            
    /**
     * 确认收货时间
     */
    private Date receiveTime;
 
            
    /**
     * 修改时间
     */
    private Date modifyTime;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "OmsOrderIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "OmsOrderIdGenerator")
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
        
    
    @Column(name = "order_sn")
    public String getOrderSn() {
        return orderSn;
    }
    
    public void setOrderSn(String orderSn) {
        this.orderSn = orderSn;
    }
        
    
    @Column(name = "create_time")
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
        
    
    @Column(name = "member_username")
    public String getMemberUsername() {
        return memberUsername;
    }
    
    public void setMemberUsername(String memberUsername) {
        this.memberUsername = memberUsername;
    }
        
    
    @Column(name = "total_amount")
    public Integer getTotalAmount() {
        return totalAmount;
    }
    
    public void setTotalAmount(Integer totalAmount) {
        this.totalAmount = totalAmount;
    }
        
    
    @Column(name = "status")
    public Integer getStatus() {
        return status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
        
    
    @Column(name = "delivery_company")
    public String getDeliveryCompany() {
        return deliveryCompany;
    }
    
    public void setDeliveryCompany(String deliveryCompany) {
        this.deliveryCompany = deliveryCompany;
    }
        
    
    @Column(name = "delivery_sn")
    public String getDeliverySn() {
        return deliverySn;
    }
    
    public void setDeliverySn(String deliverySn) {
        this.deliverySn = deliverySn;
    }
        
    
    @Column(name = "receiver_name")
    public String getReceiverName() {
        return receiverName;
    }
    
    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }
        
    
    @Column(name = "receiver_phone")
    public String getReceiverPhone() {
        return receiverPhone;
    }
    
    public void setReceiverPhone(String receiverPhone) {
        this.receiverPhone = receiverPhone;
    }
        
    
    @Column(name = "receiver_post_code")
    public String getReceiverPostCode() {
        return receiverPostCode;
    }
    
    public void setReceiverPostCode(String receiverPostCode) {
        this.receiverPostCode = receiverPostCode;
    }
        
    
    @Column(name = "receiver_province")
    public String getReceiverProvince() {
        return receiverProvince;
    }
    
    public void setReceiverProvince(String receiverProvince) {
        this.receiverProvince = receiverProvince;
    }
        
    
    @Column(name = "receiver_city")
    public String getReceiverCity() {
        return receiverCity;
    }
    
    public void setReceiverCity(String receiverCity) {
        this.receiverCity = receiverCity;
    }
        
    
    @Column(name = "receiver_region")
    public String getReceiverRegion() {
        return receiverRegion;
    }
    
    public void setReceiverRegion(String receiverRegion) {
        this.receiverRegion = receiverRegion;
    }
        
    
    @Column(name = "receiver_detail_address")
    public String getReceiverDetailAddress() {
        return receiverDetailAddress;
    }
    
    public void setReceiverDetailAddress(String receiverDetailAddress) {
        this.receiverDetailAddress = receiverDetailAddress;
    }
        
    
    @Column(name = "note")
    public String getNote() {
        return note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }
        
    
    @Column(name = "confirm_status")
    public Integer getConfirmStatus() {
        return confirmStatus;
    }
    
    public void setConfirmStatus(Integer confirmStatus) {
        this.confirmStatus = confirmStatus;
    }
        
    
    @Column(name = "delete_status")
    public Integer getDeleteStatus() {
        return deleteStatus;
    }
    
    public void setDeleteStatus(Integer deleteStatus) {
        this.deleteStatus = deleteStatus;
    }
        
    
    @Column(name = "paymemt_time")
    public Date getPaymemtTime() {
        return paymemtTime;
    }
    
    public void setPaymemtTime(Date paymemtTime) {
        this.paymemtTime = paymemtTime;
    }
        
    
    @Column(name = "delivery_time")
    public Date getDeliveryTime() {
        return deliveryTime;
    }
    
    public void setDeliveryTime(Date deliveryTime) {
        this.deliveryTime = deliveryTime;
    }
        
    
    @Column(name = "receive_time")
    public Date getReceiveTime() {
        return receiveTime;
    }
    
    public void setReceiveTime(Date receiveTime) {
        this.receiveTime = receiveTime;
    }
        
    
    @Column(name = "modify_time")
    public Date getModifyTime() {
        return modifyTime;
    }
    
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }
        
    public OmsOrder() {
    
    }
}