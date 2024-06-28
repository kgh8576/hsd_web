package kr.co.hsd.web.controller.brand;

import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lee young eun on 2017-08-10.
 */
@Controller
@RequestMapping("/brand")
public class BrandController extends BaseFormController {

    private final String JSP_PATH = "brand/";

    /**
     * 브랜드 > 브랜드 스토리
     * @return
     */
    @RequestMapping("/story")
    public String brand_story(ModelMap model) {

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "story";
    }

    /**
     * 브랜드철학
     * @param model
     * @return
     */
    @RequestMapping("/philosophy")
    public String philosophy(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "philosophy";
    }

    /**
     * 브랜드유산
     * @param model
     * @return
     */
    @RequestMapping("/legacy")
    public String legacy(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "legacy";
    }

    /**
     * ESG 경영
     * @param model
     * @return
     */
    @RequestMapping("/esg")
    public String esg(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "esg";
    }

    @RequestMapping("/sdgs")
    public String sdgs(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "sdgs";
    }


    /**
     * NEW BI 소개
     * @param model
     * @return
     */
    @RequestMapping("/bi")
    public String bi(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "bi";
    }

}
