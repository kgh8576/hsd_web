package kr.co.hsd.web.controller;

import kr.co.hsd.core.common.service.PopupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lee young eun on 2017-07-18.
 */
@Controller
public class MainController extends BaseFormController {

    @Autowired
    private PopupService popupService;

    @RequestMapping({"/", "/index"})
    public String index(ModelMap model){

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "main_page");

        // 배너가져오기
        model.addAttribute("banners", getBanner(1));

        // 팝업가져오기
        model.addAttribute("popups", popupService.getPopupList());
        
        String rootPath = System.getProperty("user.dir");
        System.out.println(rootPath);

        return "index";
    }

}
