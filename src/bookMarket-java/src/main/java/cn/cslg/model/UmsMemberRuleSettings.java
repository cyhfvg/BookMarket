package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 会员成长规则
(ums_member_rule_settings)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_member_rule_settings")
@Scope("prototype")
public class UmsMemberRuleSettings {
    
            
    /**
     * 规则编号
     */
    private Long id;
 
            
    /**
     * 连续签到天数
     */
    private Integer continueSignDay;
 
            
    /**
     * 连续签到赠送数量
     */
    private Integer continueSignPoint;
 
            
    /**
     * 每消费多少元获取1个点
     */
    private Double consumerPerPoint;
 
            
    /**
     * 最低获取点数的订单金额
     */
    private Double lowOrderAmount;
 
            
    /**
     * 每笔订单最高获取点数
     */
    private Integer maxPointPerOrder;
 
            
    /**
     * 类型:0->积分规则;1->成长值规则
     */
    private Integer type;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberRuleSettingsIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberRuleSettingsIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "continue_sign_day")
    public Integer getContinueSignDay() {
        return continueSignDay;
    }
    
    public void setContinueSignDay(Integer continueSignDay) {
        this.continueSignDay = continueSignDay;
    }
        
    
    @Column(name = "continue_sign_point")
    public Integer getContinueSignPoint() {
        return continueSignPoint;
    }
    
    public void setContinueSignPoint(Integer continueSignPoint) {
        this.continueSignPoint = continueSignPoint;
    }
        
    
    @Column(name = "consumer_per_point")
    public Double getConsumerPerPoint() {
        return consumerPerPoint;
    }
    
    public void setConsumerPerPoint(Double consumerPerPoint) {
        this.consumerPerPoint = consumerPerPoint;
    }
        
    
    @Column(name = "low_order_amount")
    public Double getLowOrderAmount() {
        return lowOrderAmount;
    }
    
    public void setLowOrderAmount(Double lowOrderAmount) {
        this.lowOrderAmount = lowOrderAmount;
    }
        
    
    @Column(name = "max_point_per_order")
    public Integer getMaxPointPerOrder() {
        return maxPointPerOrder;
    }
    
    public void setMaxPointPerOrder(Integer maxPointPerOrder) {
        this.maxPointPerOrder = maxPointPerOrder;
    }
        
    
    @Column(name = "type")
    public Integer getType() {
        return type;
    }
    
    public void setType(Integer type) {
        this.type = type;
    }
        
    public UmsMemberRuleSettings() {
    
    }
}