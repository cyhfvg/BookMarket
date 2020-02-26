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
 * @description 后台用户角色表
(ums_role)表实体类
 * @author 张广洲
 * @date 2020-02-26 16:02:12
 */
@Entity
@Table(name = "ums_role")
@Scope("prototype")
public class UmsRole {
    
            
    /**
     * 后台用户角色编号
     */
    private Long id;
 
            
    /**
     * 名称
     */
    private String name;
 
            
    /**
     * 描述
     */
    private String description;
 
            
    /**
     * 后台用户数量
     */
    private Integer adminCount;
 
            
    /**
     * 创建时间
     */
    private Date createTime;
 
            
    /**
     * 启用状态:0->禁用;1->启用
     */
    private Integer status;
 
            
    /**
     * 排序
     */
    private Integer sort;
 
        
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
        
    
    @Column(name = "description")
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
        
    
    @Column(name = "admin_count")
    public Integer getAdminCount() {
        return adminCount;
    }
    
    public void setAdminCount(Integer adminCount) {
        this.adminCount = adminCount;
    }
        
    
    @Column(name = "create_time")
    public Date getCreateTime() {
        return createTime;
    }
    
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
        
    
    @Column(name = "status")
    public Integer getStatus() {
        return status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
        
    
    @Column(name = "sort")
    public Integer getSort() {
        return sort;
    }
    
    public void setSort(Integer sort) {
        this.sort = sort;
    }
        
    public UmsRole() {
    
    }
}