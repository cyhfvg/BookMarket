package cn.cslg.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.context.annotation.Scope;


 
/**
 * @description 订单中所包含的商品(oms_order_item)表实体类
 * @author zhangguangzhou
 * @date 2020-04-13 10:06:18
 */
@Entity
@Table(name = "oms_order_item")
@Scope("prototype")
public class OmsOrderItem {
    
            private Long id;
 
            
    /**
     * 订单id
     */
    private Long orderId;
 
            
    /**
     * 订单编号
     */
    private String orderSn;
 
            
    /**
     * 书籍id
     */
    private Long bookId;
 
            private String bookName;
 
            
    /**
     * 书籍编号
     */
    private String bookSn;
 
            
    /**
     * 书籍封面
     */
    private String bookPic;
 
            
    /**
     * 销售价格
     */
    private Integer bookPrice;
 
            
    /**
     * 商品分类id
     */
    private Long productCategoryId;
 
            
    /**
     * 商品促销名称
     */
    private String promotionName;
 
        
    @Id
    @Column(name = "id")
    @GenericGenerator(name = "OmsOrderItemIdGenerator}", strategy = "native")
    @GeneratedValue(generator = "OmsOrderItemIdGenerator")
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
        
    
    @Column(name = "order_id")
    public Long getOrderId() {
        return orderId;
    }
    
    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }
        
    
    @Column(name = "order_sn")
    public String getOrderSn() {
        return orderSn;
    }
    
    public void setOrderSn(String orderSn) {
        this.orderSn = orderSn;
    }
        
    
    @Column(name = "book_id")
    public Long getBookId() {
        return bookId;
    }
    
    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }
        
    
    @Column(name = "book_name")
    public String getBookName() {
        return bookName;
    }
    
    public void setBookName(String bookName) {
        this.bookName = bookName;
    }
        
    
    @Column(name = "book_sn")
    public String getBookSn() {
        return bookSn;
    }
    
    public void setBookSn(String bookSn) {
        this.bookSn = bookSn;
    }
        
    
    @Column(name = "book_pic")
    public String getBookPic() {
        return bookPic;
    }
    
    public void setBookPic(String bookPic) {
        this.bookPic = bookPic;
    }
        
    
    @Column(name = "book_price")
    public Integer getBookPrice() {
        return bookPrice;
    }
    
    public void setBookPrice(Integer bookPrice) {
        this.bookPrice = bookPrice;
    }
        
    
    @Column(name = "product_category_id")
    public Long getProductCategoryId() {
        return productCategoryId;
    }
    
    public void setProductCategoryId(Long productCategoryId) {
        this.productCategoryId = productCategoryId;
    }
        
    
    @Column(name = "promotion_name")
    public String getPromotionName() {
        return promotionName;
    }
    
    public void setPromotionName(String promotionName) {
        this.promotionName = promotionName;
    }
        
    public OmsOrderItem() {
    
    }
}