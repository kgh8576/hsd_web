package kr.co.hsd.web.util;

import kr.co.hsd.core.common.Base;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lee young eun on 2017-07-07.
 */
public class SearchUtil {

    public static void addCondition(Base base, String key, Object value) {
        if(base.getSearchInfo() == null) {
            base.setSearchInfo(new HashMap<String, Object>());
        }
        Map<String, Object> param = base.getSearchInfo();
        param.put(key, value);
    }

    public static Object getCondition(Base base, String key) {
        Map<String, Object> param = base.getSearchInfo();
        if(param != null) {
            if(param.containsKey(key)) {
                return param.get(key);
            }
        }
        return null;
    }
}
