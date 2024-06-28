package kr.co.hsd.core.common.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Alias("code")
@Data
public class Code {

    /** 인덱스 */
    private int idx;

    /** 코드 */
    private String cCode;

    /** 값 */
    private String cVal;

}
