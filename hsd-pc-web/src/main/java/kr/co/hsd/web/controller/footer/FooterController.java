package kr.co.hsd.web.controller.footer;

import kr.co.hsd.core.board.domain.FAQ;
import kr.co.hsd.core.board.domain.FAQCategory;
import kr.co.hsd.core.board.domain.Notice;
import kr.co.hsd.core.board.service.FAQService;
import kr.co.hsd.core.board.service.NoticeService;
import kr.co.hsd.core.common.Pagination;
import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by lee young eun on 2017-07-21.
 */
@Controller
@RequestMapping("/footer")
public class FooterController extends BaseFormController {

    private final String JSP_PATH = "footer/";

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private FAQService faqService;


    /**
     * 인재채용
     * @return
     */
    @RequestMapping("/incruit")
    public String incruit()  {
        return JSP_PATH + "incruit";
    }

    /**
     * 협력업체 등록
     * @return
     */
    @RequestMapping("/partners")
    public String partners() {
        return JSP_PATH + "partners";
    }

    /**
     * 푸터 > 공지사항 리스트
     * @return
     */
    @RequestMapping("/notice_list")
    public String notice_list(Notice notice, ModelMap model) {

        notice.setOrderKey("IDX");
        notice.setOrderValue("DESC");

        // 리스트 갯수
        int cnt = noticeService.listNoticeCnt(notice);

        // 페이징
        Pagination pagination = new Pagination(notice.getPageNo(), cnt);
        notice.setFromNo(pagination.getFromNo());

        // 리스트
        List<Notice> list = noticeService.listNotice(notice);

        setRowNums(list, cnt, pagination.getFromNo());

        model.addAttribute("cnt", cnt);
        model.addAttribute("list", list);
        model.addAttribute("pagination", pagination);

        return JSP_PATH + "notice_list";
    }

    /**
     * 푸터 > 공지사항 상세
     * @return
     */
    @RequestMapping("/notice_view/{idx}")
    public String notice_view(@PathVariable("idx") Long idx, Notice notice, ModelMap model){

        // 조회수 증가
        noticeService.updateNoticeHits(idx);

        // 상세내용
        Notice result = noticeService.getNotice(idx);
        if(result == null){
            return "redirect:/footer/notice_list";
        }

        // 이전글
        Notice prev = noticeService.getPrevNotice(idx);
        // 다음글
        Notice next = noticeService.getNextNotice(idx);

        model.addAttribute("result", result);
        model.addAttribute("prev", prev);
        model.addAttribute("next", next);

        return JSP_PATH + "notice_view";
    }


    /**
     * 푸터 > 고객의 소리 > 자주하는 질문
     * @return
     */
    @RequestMapping("/faq_list")
    public String faq_list(FAQ faq, ModelMap model
            ,@RequestParam(value = "questionType", required = false) String questionType) {

        System.out.println("\n\nquestionType : "+questionType+"\n\n");

        faq.setOrderKey("IDX");
        faq.setOrderValue("DESC");
        faq.setCategory_name(questionType);

        // 리스트 갯수
        int cnt = faqService.listFAQCnt(faq);

        // 페이징
        Pagination pagination = new Pagination(faq.getPageNo(), cnt);
        faq.setFromNo(pagination.getFromNo());

        // 리스트
        List<FAQ> list = faqService.listFAQ(faq);

        setRowNums(list, cnt, pagination.getFromNo());

        //고객 센터 분류 목록
        List<FAQCategory> faqCategories = faqService.getFAQCategory();

        model.addAttribute("selectCategory", faq.getCategory_name());
        model.addAttribute("cnt", cnt);
        model.addAttribute("list", list);
        model.addAttribute("pagination", pagination);
        model.addAttribute("faqCategories", faqCategories);

        return JSP_PATH + "faq_list";
    }

    /**
     * 푸터 > FAQ 상세
     * @return
     */
    @RequestMapping("/faq_view/{idx}")
    public String faqView(@PathVariable("idx") Long idx, FAQ faq, ModelMap model){

        // 상세내용
        FAQ result = faqService.getFAQ(idx);
        if(result == null){
            return "redirect:/footer/faq_list";
        }

        // 이전글
        FAQ prev = faqService.getPrevFAQ(idx);
        // 다음글
        FAQ next = faqService.getNextFAQ(idx);

        model.addAttribute("result", result);
        model.addAttribute("prev", prev);
        model.addAttribute("next", next);

        return JSP_PATH + "faq_view";
    }

    /**
     * 푸터 > 고객의소리
     * @return
     */
    @RequestMapping("/customer_voice")
    public String customer_voice(){
        return JSP_PATH + "customer_voice";
    }

    /**
     * 개인정보 취급방침
     * @return
     */
    @RequestMapping("/policy")
    public String policy(){
        return JSP_PATH + "policy";
    }

    /**
     * 사이트 이용약관
     * @return
     */
    @RequestMapping("/agreement")
    public String agreement(){
        return JSP_PATH + "agreement";
    }
}
