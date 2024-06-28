package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.goods.domain.Goods;
import kr.co.hsd.core.goods.domain.GoodsCategory;
import kr.co.hsd.core.goods.service.GoodsService;
import kr.co.hsd.web.controller.BaseFormController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-08-26.
 */
@RestController
@RequestMapping("/api")
public class GoodsResource extends BaseFormController {

    private static final Logger log = LoggerFactory.getLogger(GoodsResource.class);

    @Autowired
    private GoodsService goodsService;

    /**
     * 카테고리별 메뉴 리스트
     * @param cate1
     * @param cate2
     * @return
     */
    @RequestMapping(value = "/menu/menu_list/{cate1}/{cate2}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Map> selectCategoryGoodsList(@PathVariable("cate1") int cate1, @PathVariable("cate2") int cate2) {

        if(cate1 == 0){
            List<GoodsCategory> parentsCategory;
            parentsCategory = goodsService.getGoodsCategory(0);
            cate1 = parentsCategory.get(0).getIdx();
        }

        int _cate1 = cate1;
        List<GoodsCategory> childCategory;
        if(cate2 == 0) {
            // sub category
            childCategory = goodsService.getGoodsCategory(cate1);

        }else {
            List<GoodsCategory> subCategory = new ArrayList<>();
            GoodsCategory goodsCategory = new GoodsCategory();
            goodsCategory.setIdx(cate2);
            subCategory.add(goodsCategory);

            childCategory = subCategory;
        }

        Map<String, Object> result = new HashMap();
        List<Object> result2 = new ArrayList<>();

        result.put("cate1Info", goodsService.getGoodsCategoryInfo(cate1)); // cate1 상세정보
        childCategory.forEach(category -> {
            Map<String, Object> subResult = new HashMap();
            subResult.put("cate2Info", goodsService.getGoodsCategoryInfo(category.getIdx()));   // cate2 상세정보
            subResult.put("goodsList", goodsService.getGoodsList(_cate1, category.getIdx()));    // 메뉴 리스트

            result2.add(subResult);
        });

        result.put("subdata", result2);

        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    /**
     * 키워드별 메뉴 리스트
     * @param keyword
     * @return
     */
    @RequestMapping(value = "/menu/keyword_list/{keyword}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List> selectKeywordGoodsList(@PathVariable("keyword") int keyword) {

        List<Goods> goodsList = goodsService.getGoodsKeywordList(keyword);
        return new ResponseEntity<>(goodsList, HttpStatus.OK);
    }
}
