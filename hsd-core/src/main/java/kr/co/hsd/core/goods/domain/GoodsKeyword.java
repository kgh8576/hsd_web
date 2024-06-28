package kr.co.hsd.core.goods.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Alias("goods_keyword")
@Data
public class GoodsKeyword {

   /** 인덱스 */
   private int idx;

   /** 키워드 */
   private String keyword;

   /** 메뉴 인덱스 */
   private int goodsIdx;

   /** 추천 키워드 */
   private String recomm;

}
