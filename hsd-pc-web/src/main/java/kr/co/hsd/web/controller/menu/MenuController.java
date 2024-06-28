package kr.co.hsd.web.controller.menu;

import kr.co.hsd.core.goods.domain.Goods;
import kr.co.hsd.core.goods.domain.GoodsCategory;
import kr.co.hsd.core.goods.domain.GoodsKeyword;
import kr.co.hsd.core.goods.service.GoodsService;
import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Controller
@RequestMapping("/menu")
public class MenuController extends BaseFormController {

    private final String JSP_PATH = "menu/";

    @Autowired
    private GoodsService goodsService;

    /**
     * 메뉴 > 한솥메뉴
     * @return
     */
    @RequestMapping("/menu_list")
    public String menu_list(ModelMap model) {

        // 메뉴 리스트 가져오기
        List<GoodsCategory> goodsCategory = goodsService.getGoodsCategory(0);

        Map<Integer, List<GoodsCategory>> childCategory = new HashMap();
        goodsCategory.forEach(category -> {
            childCategory.put(category.getIdx(), goodsService.getGoodsCategory(category.getIdx()));
        });

        // 배너
        model.addAttribute("banners", getBanner(2));

        // 추천키워드
        List<GoodsKeyword> goodsKeywords = goodsService.getGoodsKeyword("Y");


        model.addAttribute("goodsCategory", goodsCategory);     // 메뉴리스트 1depth
        model.addAttribute("childCategory", childCategory);     // 메뉴리스트 2depth
        model.addAttribute("banners", getBanner(2));     // 배너
        model.addAttribute("goodsKeywords", goodsKeywords);     // 추천키워드

        return JSP_PATH + "menu_list";
    }

    /**
     * 메뉴 > 한솥메뉴 상세
     * @return
     */
    @RequestMapping("/menu_view/{idx}")
    public String menu_view(@PathVariable("idx") int idx, ModelMap model) {

        // 메뉴 상세가져오기
        Goods goods = goodsService.getGoodsDetail(idx);

        model.addAttribute("goods", goods);

        return JSP_PATH + "menu_view";
    }

    /**
     * 메뉴 > 한솥메뉴 키워드
     * @return
     */
    @RequestMapping("/menu_keyword")
    public String menu_keyword(ModelMap model) {

        // 키워드 가져오기
        List<GoodsKeyword> goodsKeyword = goodsService.getGoodsKeyword("");
        model.addAttribute("goodsKeyword", goodsKeyword);

        // 배너
        model.addAttribute("banners", getBanner(2));

        return JSP_PATH + "menu_keyword";
    }

    /**
     * 메뉴 > 식재료 이야기
     * @return
     */
    @RequestMapping("/material")
    public String material(ModelMap model) {

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "material";
    }

    /**
     * 메뉴 > 찬차마요 커피 이야기
     * @return
     */
    @RequestMapping("/chancha")
    public String chancha(ModelMap model) {

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "chancha";
    }

    /**
     * 메뉴 > 단체주문
     * @return
     */
    @RequestMapping("/menu_order")
    public String menu_order(ModelMap model) {

        model.addAttribute("wrapClass", "bg_w order_app");

        return JSP_PATH + "menu_order";
    }

}
