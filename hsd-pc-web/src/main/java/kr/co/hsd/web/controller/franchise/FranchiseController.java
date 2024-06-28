package kr.co.hsd.web.controller.franchise;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hsd.core.board.domain.Board;
import kr.co.hsd.core.board.service.BoardService;
import kr.co.hsd.web.controller.BaseFormController;

/**
 * Created by lee young eun on 2017-08-09.
 */
@Controller
@RequestMapping("/franchise")
public class FranchiseController extends BaseFormController {

    private final String JSP_PATH = "franchise/";

    @Autowired
    private BoardService boardService;

    /**
     * WHY 한솥 가맹점
     * @return
     */
    @RequestMapping("/hansot_store")
    public String hansot_store(ModelMap model) {

        model.addAttribute("wrapClass", "bg_w");
        model.addAttribute("containerClass", "sub_page bg");

        return JSP_PATH + "hansot_store";
    }

    /**
     * 성공수기
     * @return
     */
    @RequestMapping("/success")
    public String success(ModelMap model) {

        Board board = new Board();
        board.setBid("success");
        board.setOrderKey("CATE ASC, IDX");
        board.setOrderValue("DESC");
        board.setPageSize(100);

        // 리스트 갯수
        int cnt = boardService.listBoardCnt(board);

        // 리스트
        List<Board> list = boardService.listBoard(board);
        for(int i = 0; i < list.size(); i++) {
            Board blist = list.get(i);
            String newTitle = removeTag(blist.getTitle());
            String newDescription = removeTag(blist.getDescription());
            blist.setTitle(newTitle);
            blist.setDescription(newDescription);
            list.set(i, blist);
        }

        model.addAttribute("list", list);

        return JSP_PATH + "success";
    }

    /**
     * 성공수기 상세내용
     * @param idx
     * @param model
     * @return
     */
    @RequestMapping("/success_view/{idx}")
    public String success_view(@PathVariable("idx") Long idx, ModelMap model) {

        Board board = new Board();
        board.setBid("success");
        board.setIdx(idx);

        // 조회수 증가
        boardService.updateBoardHits(board);

        // 상세내용
        Board result = boardService.getBoard(board);
        if(result == null){
            return "redirect:/franchise/success";
        }

        // 이전
        Board prev = boardService.getPrevBoard(board);

        // 다음
        Board next = boardService.getNextBoard(board);

        model.addAttribute("result", result);
        model.addAttribute("prev", prev);
        model.addAttribute("next", next);

        return JSP_PATH + "success_view";
    }

    /**
     * 창업개설절차
     * @return
     */
    @RequestMapping("/process")
    public String process() {
        return JSP_PATH + "process";
    }

    /**
     * 예상창업비용
     * @return
     */
    @RequestMapping("calc")
    public String calc(){
        return JSP_PATH + "calc";
    }

    /**
     * 창업 자금 마련
     * @return
     */
    @RequestMapping("found_money")
    public String found_money(){
        return JSP_PATH + "found_money";
    }

    /**
     * 엔젤 가맹점 제도
     * @return
     */
    @RequestMapping("system")
    public String system(){
        return JSP_PATH + "system";
    }

    /**
     * 온라인 창업문의
     * @return
     */
    @RequestMapping("/qna")
    public String qna(){
        return JSP_PATH + "qna";
    }

    /**
     * 담당자 연락처
     * @return
     */
    @RequestMapping("contract")
    public String contract(){
        return JSP_PATH + "contract";
    }

    /**
     * 창업설명회
     * @return
     */
    @RequestMapping("briefing")
    public String briefing(){
       return JSP_PATH + "briefing";
    }


}
