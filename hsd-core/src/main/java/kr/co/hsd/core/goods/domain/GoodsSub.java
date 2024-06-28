package kr.co.hsd.core.goods.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Alias("goods_sub")
@Data
public class GoodsSub {

    /** 인덱스 */
    private int idx;

    /** 서브메뉴 명 */
    private String title;

    /** 서브메뉴 가격 */
    private int price;

}
