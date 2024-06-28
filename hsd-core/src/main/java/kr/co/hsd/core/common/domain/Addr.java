package kr.co.hsd.core.common.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Alias("addr")
@Data
public class Addr {

    /** 시도 코드 */
    private String sidoCode;

    /** 시도명*/
    private String sidoName;

    /** 군구 코드 */
    private String gungooCode;

    /** 군구명 */
    private String gungooName;

}
