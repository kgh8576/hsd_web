package kr.co.hsd.web.controller.store;

import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Controller
@RequestMapping("/store")
public class StoreController extends BaseFormController {

    private final String JSP_PATH = "store/";

    /**
     * store > 주변점포찾기
     * @return
     */
    @RequestMapping("/store_find")
    public String store_find(ModelMap model) {

        return JSP_PATH + "store_find";
    }
}
