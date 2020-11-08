package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 书籍分类(bms_book_category)表实体类
 * @author zhangguangzhou
 * @date 2020-04-14 14:56:00
 */
@Entity
@Table(name = "bms_book_category")
@Scope("prototype")
public class BmsBookCategory {
    
            
    /**
     * 书籍分类编号
     */
    private Long id;
 
            
    /**
     * 上级分类编号
     */
    private Long parentId;
 
            
    /**
     * 分类名
     */
    private String name;
 
            
    /**
     * 分类级别:0表示一级编号
     */
    private Integer level;
 
            
    /**
     * 书籍数量
     */
    private Integer bookCount;
 
            
    /**
     * 是否在导航栏显示:0->不显示;1->显示
     */
    private Integer navStatus;
 
            
    /**
     * 显示状态:0->不显示;1->显示
     */
    private Integer showStatus;
 
            
    /**
     * 排序:0级分类排前面
     */
    private Integer sort;
 
            
    /**
     * 图标
     */
    private String icon;
 
            
    /**
     * 关键字
     */
    private String keywords;
 
            
    /**
     * 描述
     */
    private String description;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "BmsBookCategoryIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "BmsBookCategoryIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "parent_id")
    public Long getParentId() {
        return parentId;
    }
    
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }
        
    
    @Column(name = "name")
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
        
    
    @Column(name = "level")
    public Integer getLevel() {
        return level;
    }
    
    public void setLevel(Integer level) {
        this.level = level;
    }
        
    
    @Column(name = "book_count")
    public Integer getBookCount() {
        return bookCount;
    }
    
    public void setBookCount(Integer bookCount) {
        this.bookCount = bookCount;
    }
        
    
    @Column(name = "nav_status")
    public Integer getNavStatus() {
        return navStatus;
    }
    
    public void setNavStatus(Integer navStatus) {
        this.navStatus = navStatus;
    }
        
    
    @Column(name = "show_status")
    public Integer getShowStatus() {
        return showStatus;
    }
    
    public void setShowStatus(Integer showStatus) {
        this.showStatus = showStatus;
    }
        
    
    @Column(name = "sort")
    public Integer getSort() {
        return sort;
    }
    
    public void setSort(Integer sort) {
        this.sort = sort;
    }
        
    
    @Column(name = "icon")
    public String getIcon() {
        return icon;
    }
    
    public void setIcon(String icon) {
        this.icon = icon;
    }
        
    
    @Column(name = "keywords")
    public String getKeywords() {
        return keywords;
    }
    
    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }
        
    
    @Column(name = "description")
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
        
    public BmsBookCategory() {
    
    }
}