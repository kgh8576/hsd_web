package kr.co.hsd.web.controller.hansot;

import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lee young eun on 2017-07-28.
 */
@Controller
@RequestMapping("/hansot")
public class HansotController extends BaseFormController {
    private final String JSP_PATH = "hansot/";

    /**
     * 한솥의 약속
     * @return
     */
    @RequestMapping("/promise")
    public String promise(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "promise";
    }

    /**
     * 한솥의 비전
     * @return
     */
    @RequestMapping("/vision")
    public String vision(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "vision";
    }

    /**
     * 연혁
     * @return
     */
    @RequestMapping("/history")
    public String history(){
        return JSP_PATH + "history";
    }

    /**
     * 수상
     * @return
     */
    @RequestMapping("/award")
    public String award(){
        return JSP_PATH + "award";
    }

    /**
     * 사회공헌활동
     * @return
     */
    @RequestMapping("/social")
    public String social(){
        return JSP_PATH + "social";
    }

    /**
     * 한솥 > 한솥 NEWS
     * @return
     */
    @RequestMapping("/news_list")
    public String news_list(){
        return JSP_PATH + "news_list";
    }

    /**
     * 한솥 > 오시는길
     * @return
     */
    @RequestMapping("/location")
    public String location(){
        return JSP_PATH + "location";
    }
}
