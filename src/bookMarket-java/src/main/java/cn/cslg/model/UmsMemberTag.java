package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 用户标签表(ums_member_tag)表实体类
 * @author 张广洲
 * @date 2020-02-26 16:02:12
 */
@Entity
@Table(name = "ums_member_tag")
@Scope("prototype")
public class UmsMemberTag {
    
            
    /**
     * 会员标签编号
     */
    private Long id;
 
            
    /**
     * 标签名称
     */
    private String name;
 
            
    /**
     * 完成订单数量
     */
    private Integer finishOrderCount;
 
            
    /**
     * 完成订单金额
     */
    private Double finishOrderAmount;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "system-uuid", strategy = "uuid.hex")
    @GeneratedValue(generator = "system-uuid")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "name")
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
        
    
    @Column(name = "finish_order_count")
    public Integer getFinishOrderCount() {
        return finishOrderCount;
    }
    
    public void setFinishOrderCount(Integer finishOrderCount) {
        this.finishOrderCount = finishOrderCount;
    }
        
    
    @Column(name = "finish_order_amount")
    public Double getFinishOrderAmount() {
        return finishOrderAmount;
    }
    
    public void setFinishOrderAmount(Double finishOrderAmount) {
        this.finishOrderAmount = finishOrderAmount;
    }
        
    public UmsMemberTag() {
    
    }
}