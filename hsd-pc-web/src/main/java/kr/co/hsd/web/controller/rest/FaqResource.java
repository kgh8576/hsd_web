package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.board.service.FAQService;
import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class FaqResource extends BaseFormController {

    @Autowired
    private FAQService faqService;

//    @RequestMapping(value= "/faq/category", method= RequestMethod.GET)
//    public ResponseEntity<List<Addr>> getSido(@RequestParam(value = "category_code", required = false)
//                                                          String categoryCode){
//
//        //고객 센터 분류 목록
//        List<FAQCategory> result;
//
//
//    }
}
