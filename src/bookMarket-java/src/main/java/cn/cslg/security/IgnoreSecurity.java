package cn.cslg.security;

import java.lang.annotation.*;

/**
 * 忽略安全性检查
 *
 * @author zhangguangzhou
 * @since 1.0.0
 */
@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface IgnoreSecurity {
}
