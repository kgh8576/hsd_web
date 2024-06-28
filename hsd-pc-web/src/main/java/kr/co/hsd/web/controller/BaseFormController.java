package kr.co.hsd.web.controller;

import kr.co.hsd.core.common.Base;
import kr.co.hsd.core.common.domain.Banner;
import kr.co.hsd.core.common.domain.LabelValue;
import kr.co.hsd.core.common.service.BannerService;
import kr.co.hsd.core.config.Constants;
import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.web.util.SecurityUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by lee young eun on 2017-07-18.
 */
public class BaseFormController {
    private static final Logger log = LoggerFactory.getLogger(BaseFormController.class);

    @Autowired(required = false) protected Validator validator;

    @Autowired
    private BannerService bannerService;

    // 현재 로그인되어있는 회원정보
    public Member getCurrentUser() {
        Member member = (Member) SecurityUtils.getCurrentUser();
        return member;
    }

    // 유효값 체크
    protected boolean isValid(Object target, Errors errors) {
        if (validator != null) { // validator is null during testing
            validator.validate(target, errors);

            if (errors.hasErrors()) {
                return false;
            }
        }
        return true;
    }

    @SuppressWarnings("unchecked")
    public void saveError(HttpServletRequest request, String error) {
        List errors = (List) request.getSession().getAttribute("errors");
        if (errors == null) {
            errors = new ArrayList();
        }
        errors.add(error);
        request.getSession().setAttribute("errors", errors);
    }

    /**
     * 임시 비밀번호 생성
     * @param size
     * @return
     */
    public static String makeTempPassword(int size) {
        StringBuffer buffer = new StringBuffer();
        Random random = new Random();

        String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,6,7,8,9".split(",");

        for (int i = 0; i < size; i++) {
            buffer.append(chars[random.nextInt(chars.length)]);
        }

        return buffer.toString();
    }

    /**
     * 리스트 no
     * @param list
     * @param totalCount
     * @param indexNum
     */
    public void setRowNums(List list, int totalCount, int indexNum ) {
        if (list == null) return;

        int rowNum = totalCount - indexNum;
        for (int i = 0; i < list.size(); i++) {
            Base base = (Base) list.get(i);
            base.setRowNum(Integer.toString(rowNum - i));
        }
    }

    // HTML 태그제거
    public String removeTag(String html) {
        return html == null ? "" : html.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
    }

    /**
     * Gets the query map.
     *
     * @return the query map
     */
    @SuppressWarnings("unchecked")
    public Map<String, Object> getQueryMap(HttpServletRequest request) {

        Map<String, String[]> parameterMap = request.getParameterMap();
        Map<String, Object> condMap = new HashMap<String, Object>();

        Map<String, LabelValue> dynamicMap = new HashMap<String, LabelValue>();

        for (String key : parameterMap.keySet()) {
            if(key.startsWith(Constants.CONDITION_PARAM_KEY)) {
                String[] values = parameterMap.get(key);
                // remove 'q.' prefix
                String conditionKey = key.substring(Constants.CONDITION_PARAM_KEY.length());

                // cond.dynamic.key.1 or cond.dynamic.value.1
                if(StringUtils.startsWith(conditionKey, "dynamic")) {
                    String[] parsedData = StringUtils.split(conditionKey, '.');
                    if(StringUtils.equals(parsedData[1], "key")) {
                        LabelValue lv = dynamicMap.get(parsedData[2]);
                        if(lv == null) {
                            lv = new LabelValue();
                            dynamicMap.put(parsedData[2], lv);
                        }

                        lv.setLabel(values[0]);
                    }else {
                        LabelValue lv = dynamicMap.get(parsedData[2]);
                        if(lv == null) {
                            lv = new LabelValue();
                            dynamicMap.put(parsedData[2], lv);
                        }

                        lv.setValue(values[0]);
                    }
                }else {
                    if(values.length > 1){
                        List<String> valueChk = new ArrayList<String>();
                        for(String value : values){
                            if(StringUtils.isNotBlank(value)) {
                                valueChk.add(value);
                            }
                        }
                        condMap.put(conditionKey, valueChk.toArray(new String[valueChk.size()]));
                    }else{
                        if(StringUtils.isNotBlank(values[0])) {
                            condMap.put(conditionKey, values[0]);
                        }
                    }
                }
            }
        }

        if(!dynamicMap.isEmpty()) {
            for(LabelValue lv : dynamicMap.values()) {
                if(StringUtils.isNotBlank(lv.getValue())) {
                    condMap.put(lv.getLabel(), lv.getValue());
                }
            }
        }

        if(condMap.isEmpty()) {
            condMap.put("EMPTYCOND", "EMPTYCOND");
        }

        if(parameterMap.containsKey(Constants.ORDER_KEY) && parameterMap.containsKey(Constants.ORDER_VALUE)) {
            condMap.put(parameterMap.get(Constants.ORDER_KEY)[0], parameterMap.get(Constants.ORDER_VALUE)[0]);
        }else {
            condMap.put("EMPTYORD", "EMPTYORD");
        }

        return condMap;
    }

    /**
     * 배너리스트
     * @param gubun
     * @return
     */
    public List<Banner> getBanner(int gubun){
        Banner banner = new Banner();
        banner.setGubun(gubun);
        return bannerService.getBannerList(banner);
    }

}
