package kr.co.hsd.core.goods.repository;

import kr.co.hsd.core.config.support.DefaultMapper;
import kr.co.hsd.core.goods.domain.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-26.
 */
@DefaultMapper
@Repository
public interface GoodsRepository {

    /**
     * 메뉴 카테고리 가져오기
     * @param parent
     * @return
     */
    List<GoodsCategory> getGoodsCategory(@Param("parent") int parent);

    /**
     * 카테고리 상세 내용
     * @param idx
     * @return
     */
    GoodsCategory getGoodsCategoryInfo(@Param("idx") int idx);

    /**
     * 메뉴 리스트 가져오기 - 카테고리별
     * @param cate1
     * @param cate2
     * @return
     */
    List<Goods> getGoodsList(@Param("cate1") int cate1, @Param("cate2") int cate2);

    /**
     * 메뉴 상세
     * @param idx : 메뉴 인덱스
     * @return
     */
    Goods getGoodsDetail(@Param("idx") int idx);

    /**
     * 메뉴 상세 이미지
     * @param idx
     * @return
     */
    List<String> getGoodsDetailImage(@Param("idx") int idx);

    /**
     * 추가가능 메뉴 리스트
     * @param idxs : 메뉴 인덱스 , 로 구분
     * @return
     */
    List<GoodsSub> getGoodsSub(@Param("idxs") String idxs);

    /**
     * 원산지
     * @param idx : 메뉴 인덱스
     * @return
     */
    List<GoodsOrigin> getGoodsOrigin(@Param("idx") int idx);


    /**
     * 키워드 리스트 가져오기
     * @param recomm : 추천키워드여부
     * @return
     */
    List<GoodsKeyword> getGoodsKeyword(@Param("recomm") String recomm);


    /**
     * 키워드별 노출 메뉴 리스트
     * @param idx : 키워드 인덱스
     * @return
     */
    List<Goods> getGoodsKeywordList(@Param("idx") int idx);
}
