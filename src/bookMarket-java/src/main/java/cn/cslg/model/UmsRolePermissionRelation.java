package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 后台用户角色-权限 关系表
(ums_role_permission_relation)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_role_permission_relation")
@Scope("prototype")
public class UmsRolePermissionRelation {
    
            
    /**
     * 编号
     */
    private Long id;
 
            
    /**
     * 角色编号
     */
    private Long roleId;
 
            
    /**
     * 权限编号
     */
    private Long permissionId;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsRolePermissionRelationIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsRolePermissionRelationIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "role_id")
    public Long getRoleId() {
        return roleId;
    }
    
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
        
    
    @Column(name = "permission_id")
    public Long getPermissionId() {
        return permissionId;
    }
    
    public void setPermissionId(Long permissionId) {
        this.permissionId = permissionId;
    }
        
    public UmsRolePermissionRelation() {
    
    }
}