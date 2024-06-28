package kr.co.hsd.core.common;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Map;

/**
 * Created by s2ung on 2017-04-18.
 */
@Data
public class Base {

    /** 현재 로그인 된 사용자 인덱스 */
    private Long currentMemId;

    /** row Number  */
    private String rowNum;

    /** 현재페이지 */
    private int pageNo = 1;

    /** 페이징 사이즈 */
    private int pageSize = 10;

    /** 페이징 시작 rownum */
    private int fromNo = 0;

    /** 정렬 순서 - 컬렴명 */
    private String orderKey;

    /** 정렬 순서 - ASC, DESC */
    private String orderValue;

    /** 페이징 여부 */
    private boolean skipPaging = false;

    /** 검색조건 및 Keyword */
    private Map<String, Object> searchInfo;

    /** 검색어 */
    private String searchWord;

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
