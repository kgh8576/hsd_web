package kr.co.hsd.core.goods.service;

import kr.co.hsd.core.goods.domain.Goods;
import kr.co.hsd.core.goods.domain.GoodsCategory;
import kr.co.hsd.core.goods.domain.GoodsKeyword;
import kr.co.hsd.core.goods.repository.GoodsRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Service("goodsService")
public class GoodsService {

    private final Logger log = LoggerFactory.getLogger(GoodsService.class);

    @Inject
    private GoodsRepository goodsRepository;


    /**
     * 메뉴 카테고리 가져오기
     * @param parent
     * @return
     */
    public List<GoodsCategory> getGoodsCategory(int parent) { return goodsRepository.getGoodsCategory(parent); }

    /**
     * 카테고리 상세
     * @param idx
     * @return
     */
    public GoodsCategory getGoodsCategoryInfo(int idx){ return goodsRepository.getGoodsCategoryInfo(idx);};

    /**
     * 메뉴 리스트 가져오기
     * @param cate1
     * @param cate2
     * @return
     */
    public List<Goods> getGoodsList(int cate1, int cate2) { return goodsRepository.getGoodsList(cate1, cate2);}

    /**
     * 메뉴 상세
     * @param idx
     * @return
     */
    public Goods getGoodsDetail(int idx) {

        Goods goods = goodsRepository.getGoodsDetail(idx);

        // 상세이미지
        goods.setDetailImg(goodsRepository.getGoodsDetailImage(idx));

        // 추가가능한 서브메뉴
        if(goods.getOptionMenu() != null && !"".equals(goods.getOptionMenu())) {
            goods.setSubMenu(goodsRepository.getGoodsSub(goods.getOptionMenu()));
        }

        // 원산지
        goods.setOrigins(goodsRepository.getGoodsOrigin(idx));

        return goods;
    }

    /**
     * 카테고리 리스트 가져오기
     * @param recomm
     * @return
     */
    public List<GoodsKeyword> getGoodsKeyword(String recomm) { return goodsRepository.getGoodsKeyword(recomm); }

    /**
     * 키워드별 노출 메뉴 리스트
     * @param idx
     * @return
     */
    public List<Goods> getGoodsKeywordList(int idx) { return goodsRepository.getGoodsKeywordList(idx); }
}
