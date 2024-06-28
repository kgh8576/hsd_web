package kr.co.hsd.web.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;


/**
 * Created by lee young eun on 2017-07-24.
 */
public class WebUtil {
    private static final Logger log = LoggerFactory.getLogger(WebUtil.class);

    public static boolean isAjax(HttpServletRequest request) {
        return "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
    }
}
