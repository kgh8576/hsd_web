package kr.co.hsd.core.goods.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Alias("goods_category")
@Data
public class GoodsCategory {

    /** 인덱스 */
    private int idx;

    /** 상위 인덱스 */
    private int parent;

    /** 카테고리명 */
    private String name;
}
