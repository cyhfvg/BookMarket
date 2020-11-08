package cn.cslg.util;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.MapUtils;

import java.util.Collection;
import java.util.Map;

/**
 * 集合工具类
 *
 * @author 张广洲
 * @version 2020/2/27 20:06 1.00
 */

public class CollectionUtil {

    /**
     * 判断 Collection 是否为空
     * @param collection
     * @return
     */
    public static boolean isEmpty(Collection<?> collection) {
        return CollectionUtils.isEmpty(collection);
    }

    /**
     * 判断 Collection 是否非空
     * @param collection
     * @return
     */
    public static boolean isNotEmpty(Collection<?> collection) {
        return !isEmpty(collection);
    }

    /**
     * 判断 Map 是否为空
     * @param map
     * @return
     */
    public static boolean isEmpty(Map<?, ?> map) {
        return MapUtils.isEmpty(map);
    }

    /**
     * 判断 Map 是否非空
     * @param map
     * @return
     */
    public static boolean isNotEmpty(Map<?, ?> map) {
        return !isEmpty(map);
    }

    /**
     * Collection 转 Array
     * @param collection
     * @param array
     * @param <T>
     * @return
     */
    public static <T> T [] toArray(Collection<T> collection, T [] array) {
        if (isEmpty(collection)) {
            return array;
        }
        return collection.toArray(array);
    }
}
