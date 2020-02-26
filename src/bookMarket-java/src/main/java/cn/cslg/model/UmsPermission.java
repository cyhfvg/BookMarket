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
 * @description 用户权限表
(ums_permission)表实体类
 * @author 张广洲
 * @date 2020-02-26 16:02:12
 */
@Entity
@Table(name = "ums_permission")
@Scope("prototype")
public class UmsPermission {
    
            
    /**
     * 用户权限
     */
    private Long id;
 
            
    /**
     * 父级权限
     */
    private Long pid;
 
            
    /**
     * 名称
     */
    private String name;
 
            
    /**
     * 权限值
     */
    private String value;
 
            
    /**
     * 图标
     */
    private String icon;
 
            
    /**
     * 权限类型:0->目录;1->菜单;2->按钮(接口绑定权限)
     */
    private Integer type;
 
            
    /**
     * 前端资源路径
     */
    private String uri;
 
            
    /**
     * 启用状态:0->禁用;1->启用
     */
    private Integer status;
 
            
    /**
     * 创建时间
     */
    private Date createTime;
 
            
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
        
    
    @Column(name = "pid")
    public Long getPid() {
        return pid;
    }
    
    public void setPid(Long pid) {
        this.pid = pid;
    }
        
    
    @Column(name = "name")
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
        
    
    @Column(name = "value")
    public String getValue() {
        return value;
    }
    
    public void setValue(String value) {
        this.value = value;
    }
        
    
    @Column(name = "icon")
    public String getIcon() {
        return icon;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
        
    
    @Column(name = "type")
    public Integer getType() {
        return type;
    }
    
    public void setType(Integer type) {
        this.type = type;
    }
        
    
    @Column(name = "uri")
    public String getUri() {
        return uri;
    }
    
    public void setUri(String uri) {
        this.uri = uri;
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
        
    
    @Column(name = "sort")
    public Integer getSort() {
        return sort;
    }
    
    public void setSort(Integer sort) {
        this.sort = sort;
    }
        
    public UmsPermission() {
    
    }
}