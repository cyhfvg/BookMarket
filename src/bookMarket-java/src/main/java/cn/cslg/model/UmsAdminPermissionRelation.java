package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 后台用户和权限关系表(除角色中定义的权限以外的加减权限)
(ums_admin_permission_relation)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_admin_permission_relation")
@Scope("prototype")
public class UmsAdminPermissionRelation {
    
            
    /**
     * 管理员-权限编号
     */
    private Long id;
 
            
    /**
     * 管理员编号
     */
    private Long adminId;
 
            
    /**
     * 权限编号
     */
    private Long permissionId;
 
            
    /**
     * 权限类型
     */
    private Integer type;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsAdminPermissionRelationIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsAdminPermissionRelationIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "admin_id")
    public Long getAdminId() {
        return adminId;
    }
    
    public void setAdminId(Long adminId) {
        this.adminId = adminId;
    }
        
    
    @Column(name = "permission_id")
    public Long getPermissionId() {
        return permissionId;
    }
    
    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }
        
    
    @Column(name = "type")
    public Integer getType() {
        return type;
    }
    
    public void setType(Integer type) {
        this.type = type;
    }
        
    public UmsAdminPermissionRelation() {
    
    }
}