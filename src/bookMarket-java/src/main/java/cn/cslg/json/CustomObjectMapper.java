package cn.cslg.json;

import cn.cslg.util.StringUtil;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.SerializationFeature;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * 定制jackson的 {@code ObjectMapper}
 *
 * @author 张广洲
 * @version 2020/2/27 15:49 1.00
 */

public class CustomObjectMapper extends ObjectMapper {

    private boolean camelCaseToLowerCaseWithUnderscores = false;
    private String dateFormatPattern;

    public void setCamelCaseToLowerCaseWithUnderscores(boolean camelCaseToLowerCaseWithUnderscores) {
        this.camelCaseToLowerCaseWithUnderscores = camelCaseToLowerCaseWithUnderscores;
    }

    public void setDateFormatPattern(String dateFormatPattern) {
        this.dateFormatPattern = dateFormatPattern;
    }

    public void init() {
        // 排除值为空属性
        setSerializationInclusion(JsonInclude.Include.NON_NULL);
        // 进行缩进输出
        configure(SerializationFeature.INDENT_OUTPUT, true);
        // note: 不将驼峰转为下划线
//        if (camelCaseToLowerCaseWithUnderscores) {
//            setPropertyNamingStrategy(PropertyNamingStrategy.CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES);
//        }
        // 进行日期格式化
        if (StringUtil.isNotEmpty(dateFormatPattern)) {
            DateFormat dateFormat = new SimpleDateFormat(dateFormatPattern);
            setDateFormat(dateFormat);
        }
    }
}
