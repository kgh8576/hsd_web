package kr.co.hsd.core.goods.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Alias("goods_origin")
@Data
public class GoodsOrigin {

    /** 메뉴 인덱스 */
    private int idx;

    /** 재료명 */
    private String title;

    /** 원산지 */
    private String origin;
}
