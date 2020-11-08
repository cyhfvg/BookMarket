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
 * @description 会员统计信息
(ums_member_statistics_info)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_member_statistics_info")
@Scope("prototype")
public class UmsMemberStatisticsInfo {
    
            
    /**
     * 信息编号
     */
    private Long id;
 
            
    /**
     * 会员编号
     */
    private Long memberId;
 
            
    /**
     * 累计消费金额
     */
    private Double consumeAmount;
 
            
    /**
     * 订单数量
     */
    private Integer orderCount;
 
            
    /**
     * 评价数
     */
    private Integer commentCount;
 
            
    /**
     * 退货数量
     */
    private Integer returnOrderCount;
 
            
    /**
     * 登录次数
     */
    private Integer loginCount;
 
            
    /**
     * 最后一次下订单时间
     */
    private Date recentOrderTime;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsMemberStatisticsInfoIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsMemberStatisticsInfoIdGenerator")
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
        
    
    @Column(name = "consume_amount")
    public Double getConsumeAmount() {
        return consumeAmount;
    }
    
    public void setConsumeAmount(Double consumeAmount) {
        this.consumeAmount = consumeAmount;
    }
        
    
    @Column(name = "order_count")
    public Integer getOrderCount() {
        return orderCount;
    }
    
    public void setOrderCount(Integer orderCount) {
        this.orderCount = orderCount;
    }
        
    
    @Column(name = "comment_count")
    public Integer getCommentCount() {
        return commentCount;
    }
    
    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }
        
    
    @Column(name = "return_order_count")
    public Integer getReturnOrderCount() {
        return returnOrderCount;
    }
    
    public void setReturnOrderCount(Integer returnOrderCount) {
        this.returnOrderCount = returnOrderCount;
    }
        
    
    @Column(name = "login_count")
    public Integer getLoginCount() {
        return loginCount;
    }
    
    public void setLoginCount(Integer loginCount) {
        this.loginCount = loginCount;
    }
        
    
    @Column(name = "recent_order_time")
    public Date getRecentOrderTime() {
        return recentOrderTime;
    }
    
    public void setRecentOrderTime(Date recentOrderTime) {
        this.recentOrderTime = recentOrderTime;
    }
        
    public UmsMemberStatisticsInfo() {
    
    }
}