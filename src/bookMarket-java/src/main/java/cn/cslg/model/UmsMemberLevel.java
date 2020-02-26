package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 会员等级表(ums_member_level)表实体类
 * @author 张广洲
 * @date 2020-02-26 16:02:12
 */
@Entity
@Table(name = "ums_member_level")
@Scope("prototype")
public class UmsMemberLevel {
    
            
    /**
     * 等级编号
     */
    private Long id;
 
            
    /**
     * 等级名称
     */
    private String name;
 
            
    /**
     * 成长点
     */
    private Integer growthPoint;
 
            
    /**
     * 是否为默认等级:0->不是;1->是
     */
    private Integer defaultStatus;
 
            
    /**
     * 免运费标准
     */
    private Double freeFreightPoint;
 
            
    /**
     * 每次评价获取的成长值
     */
    private Integer commentGrowthPoint;
 
        
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
        
    
    @Column(name = "growth_point")
    public Integer getGrowthPoint() {
        return growthPoint;
    }
    
    public void setGrowthPoint(Integer growthPoint) {
        this.growthPoint = growthPoint;
    }
        
    
    @Column(name = "default_status")
    public Integer getDefaultStatus() {
        return defaultStatus;
    }
    
    public void setDefaultStatus(Integer defaultStatus) {
        this.defaultStatus = defaultStatus;
    }
        
    
    @Column(name = "free_freight_point")
    public Double getFreeFreightPoint() {
        return freeFreightPoint;
    }
    
    public void setFreeFreightPoint(Double freeFreightPoint) {
        this.freeFreightPoint = freeFreightPoint;
    }
        
    
    @Column(name = "comment_growth_point")
    public Integer getCommentGrowthPoint() {
        return commentGrowthPoint;
    }
    
    public void setCommentGrowthPoint(Integer commentGrowthPoint) {
        this.commentGrowthPoint = commentGrowthPoint;
    }
        
    public UmsMemberLevel() {
    
    }
}