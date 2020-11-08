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
 * @date 2020-04-19 09:55:40
 */
@Entity
@Table(name = "oms_order_item")
@Scope("prototype")
public class OmsOrderItem {
    
            
    /**
     * 编号
     */
    private Long id;
 
            
    /**
     * 订单id
     */
    private Long orderId;
 
            
    /**
     * 用户id
     */
    private Long memberId;
 
            
    /**
     * 订单编号
     */
    private String orderSn;
 
            
    /**
     * 书籍id
     */
    private Long bookId;
 
            
    /**
     * 书籍isbn
     */
    private String bookIsbn;
 
            
    /**
     * 书名
     */
    private String bookName;
 
            
    /**
     * 书籍封面
     */
    private String bookPic;
 
            
    /**
     * 书籍价格
     */
    private Integer bookPrice;
 
            
    /**
     * 商品分类id
     */
    private Long productCategoryId;
 
        
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
        
    
    @Column(name = "member_id")
    public Long getMemberId() {
        return memberId;
    }
    
    public void setMemberId(Long memberId) {
        this.memberId = memberId;
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
        
    
    @Column(name = "book_isbn")
    public String getBookIsbn() {
        return bookIsbn;
    }
    
    public void setBookIsbn(String bookIsbn) {
        this.bookIsbn = bookIsbn;
    }
        
    
    @Column(name = "book_name")
    public String getBookName() {
        return bookName;
    }
    
    public void setBookName(String bookName) {
        this.bookName = bookName;
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
        
    public OmsOrderItem() {
    
    }
}