package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 商品信息(bms_product)表实体类
 * @author zhangguangzhou
 * @date 2020-04-14 14:56:00
 */
@Entity
@Table(name = "bms_product")
@Scope("prototype")
public class BmsProduct {
    
            
    /**
     * 主键
     */
    private Long id;
 
            
    /**
     * 卖家id
     */
    private Long memberId;
 
            
    /**
     * ISBN号
     */
    private Integer isbn;
 
            
    /**
     * 书名
     */
    private String name;
 
            
    /**
     * 作者
     */
    private String author;
 
            
    /**
     * 图片
     */
    private String pic;
 
            
    /**
     * 价格 元宝
     */
    private Double price;
 
            
    /**
     * 分类id
     */
    private Long productCategoryId;
 
            
    /**
     * 书籍分类名称
     */
    private String productCategoryName;
 
            
    /**
     * 描述
     */
    private String description;
 
            
    /**
     * 画册图片，连产品图片限制为5张，以逗号分割
     */
    private String albumPics;
 
            
    /**
     * 删除状态：0->未删除；1->已删除
     */
    private Integer deleteStatus;
 
            
    /**
     * 上架状态：0->下架；1->上架
     */
    private Integer publishStatus;
 
            
    /**
     * 新品状态:0-1:1成新,1-2:2成新;...9-10:10成新
     */
    private Integer oldStatus;
 
            
    /**
     * 排序
     */
    private Integer sort;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "BmsProductIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "BmsProductIdGenerator")
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
        
    
    @Column(name = "ISBN")
    public Integer getIsbn() {
        return isbn;
    }
    
    public void setIsbn(Integer isbn) {
        this.isbn = isbn;
    }
        
    
    @Column(name = "name")
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
        
    
    @Column(name = "author")
    public String getAuthor() {
        return author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }
        
    
    @Column(name = "pic")
    public String getPic() {
        return pic;
    }
    
    public void setPic(String pic) {
        this.pic = pic;
    }
        
    
    @Column(name = "price")
    public Double getPrice() {
        return price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }
        
    
    @Column(name = "product_category_id")
    public Long getProductCategoryId() {
        return productCategoryId;
    }
    
    public void setProductCategoryId(Long productCategoryId) {
        this.productCategoryId = productCategoryId;
    }
        
    
    @Column(name = "product_category_name")
    public String getProductCategoryName() {
        return productCategoryName;
    }
    
    public void setProductCategoryName(String productCategoryName) {
        this.productCategoryName = productCategoryName;
    }
        
    
    @Column(name = "description")
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
        
    
    @Column(name = "album_pics")
    public String getAlbumPics() {
        return albumPics;
    }
    
    public void setAlbumPics(String albumPics) {
        this.albumPics = albumPics;
    }
        
    
    @Column(name = "delete_status")
    public Integer getDeleteStatus() {
        return deleteStatus;
    }
    
    public void setDeleteStatus(Integer deleteStatus) {
        this.deleteStatus = deleteStatus;
    }
        
    
    @Column(name = "publish_status")
    public Integer getPublishStatus() {
        return publishStatus;
    }
    
    public void setPublishStatus(Integer publishStatus) {
        this.publishStatus = publishStatus;
    }
        
    
    @Column(name = "old_status")
    public Integer getOldStatus() {
        return oldStatus;
    }
    
    public void setOldStatus(Integer oldStatus) {
        this.oldStatus = oldStatus;
    }
        
    
    @Column(name = "sort")
    public Integer getSort() {
        return sort;
    }
    
    public void setSort(Integer sort) {
        this.sort = sort;
    }
        
    public BmsProduct() {
    
    }
}