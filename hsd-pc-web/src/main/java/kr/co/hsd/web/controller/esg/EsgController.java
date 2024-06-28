package kr.co.hsd.web.controller.esg;

import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lee young eun on 2017-08-10.
 */
@Controller
@RequestMapping("/esg")
public class EsgController extends BaseFormController {

    private final String JSP_PATH = "esg/";


    /**
     * ESG 경영
     * @param model
     * @return
     */
    @RequestMapping("/management")
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


    @RequestMapping("/environment")
    public String environment(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");
        return JSP_PATH + "environment";
    }

}
