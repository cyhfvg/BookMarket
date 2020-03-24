package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 后台用户-角色 关系表
(ums_admin_role_relation)表实体类
 * @author zhangguangzhou
 * @date 2020-02-28 17:32:08
 */
@Entity
@Table(name = "ums_admin_role_relation")
@Scope("prototype")
public class UmsAdminRoleRelation {
    
            
    /**
     * 后台用户和角色 关系编号
     */
    private Long id;
 
            
    /**
     * 后台用户编号
     */
    private Long adminId;
 
            
    /**
     * 角色编号
     */
    private Long roleId;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "UmsAdminRoleRelationIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "UmsAdminRoleRelationIdGenerator")
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
        
    
    @Column(name = "role_id")
    public Long getRoleId() {
        return roleId;
    }
    
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
        
    public UmsAdminRoleRelation() {
    
    }
}