package kr.co.hsd.web.controller.event;

import kr.co.hsd.core.board.domain.Board;
import kr.co.hsd.core.board.service.BoardService;
import kr.co.hsd.core.common.domain.Code;
import kr.co.hsd.core.common.service.CodeService;
import kr.co.hsd.web.controller.BaseFormController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-07-21.
 */
@Controller
@RequestMapping("/event")
public class EventController extends BaseFormController {

    private final String JSP_PATH = "event/";

    @Autowired
    private BoardService boardService;

    @Autowired
    private CodeService codeService;

    /**
     * 이벤트 > 온라인 이벤트 리스트
     * @return
     */
    @RequestMapping("/event_list")
    public String event_list(ModelMap model){

        // 카테고리
        List<Code> codeList = codeService.getCode("ET01");
        model.addAttribute("codeList", codeList);

        return JSP_PATH + "event_list";
    }

    /**
     * 이벤트 > 온라인 이벤트 상세
     * @return
     */
    @RequestMapping("/event_view/{idx}")
    public String event_view(@PathVariable("idx") Long idx, HttpServletRequest request, ModelMap model){

        Map<String, Object> param = getQueryMap(request);

        Board board = new Board();
        board.setBid("event");
        board.setIdx(idx);

        if(param.get("cate") != null) {
            board.setCate(Integer.parseInt(param.get("cate").toString()));
        }

        if(param.get("pageNo") != null) {
            board.setPageNo(Integer.parseInt(param.get("pageNo").toString()));
        }

        // 조회수 증가
        boardService.updateBoardHits(board);

        // 상세내용
        Board result = boardService.getBoard(board);
        if(result == null){
            return "redirect:/event/event_list";
        }
        result.setTitle(removeTag(result.getTitle()));

        // 이전글
        Board prev = boardService.getPrevBoard(board);
        if(prev != null) prev.setTitle(removeTag(prev.getTitle()));
        // 다음글
        Board next = boardService.getNextBoard(board);
        if(next != null) next.setTitle(removeTag(next.getTitle()));

        model.addAttribute("board", board);
        model.addAttribute("result", result);
        model.addAttribute("prev", prev);
        model.addAttribute("next", next);

        return JSP_PATH + "event_view";
    }

    /**
     * 이벤트 > 매장프로모션 리스트
     * @return
     */
    @RequestMapping("/store_event_list")
    public String store_event_list(){
        return JSP_PATH + "store_event_list";
    }

    /**
     * 이벤트 > 매장프로모션 상세
     * @return
     */
//    @RequestMapping("/store_event_view/{idx}")
//    public String store_event_view(@PathVariable("idx") Long idx,  HttpServletRequest request, ModelMap model){
//
//        Map<String, Object> param = getQueryMap(request);
//
//        Board board = new Board();
//        board.setBid("offevent");
//        board.setIdx(idx);
//        if(param.get("pageNo") != null) {
//            board.setPageNo(Integer.parseInt(param.get("pageNo").toString()));
//        }
//        if(param.get("searchWord") != null) {
//            board.setSearchWord(param.get("searchWord").toString());
//        }
//
//        // 조회수 증가
//        boardService.updateBoardHits(board);
//
//        // 상세내용
//        Board result = boardService.getBoard(board);
//        if(result == null){
//            return "redirect:/event/event_list";
//        }
//
//        // 이전글
//        Board prev = boardService.getPrevBoard(board);
//        // 다음글
//        Board next = boardService.getPrevBoard(board);
//
//        model.addAttribute("board", board);
//        model.addAttribute("result", result);
//        model.addAttribute("prev", prev);
//        model.addAttribute("next", next);
//        return JSP_PATH + "store_event_view";
//
//    }
}
