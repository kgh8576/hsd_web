package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.board.domain.*;
import kr.co.hsd.core.board.service.BoardService;
import kr.co.hsd.core.board.service.CustomerService;
import kr.co.hsd.core.common.Pagination;
import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.web.controller.BaseFormController;
import kr.co.hsd.web.util.AES256Util;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-08-05.
 */
@RestController
@RequestMapping("/api")
public class BoardResource extends BaseFormController {

    private static final Logger log = LoggerFactory.getLogger(BoardResource.class);

    @Autowired
    private BoardService boardService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private AES256Util aes256Util;


    /**
     * 게시판 리스트 가져오기
     * @param board
     * @param bid
     * @return
     */
    @RequestMapping(value = "/board/{bid}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Map> listBoard(@RequestBody Board board, @PathVariable("bid") String bid){

        if(StringUtils.isNotEmpty(bid)){
            board.setBid(bid);
            board.setOrderKey("IDX");
            board.setOrderValue("DESC");

            // 리스트 갯수
            int cnt = boardService.listBoardCnt(board);

            // 페이징
            Pagination pagination = new Pagination(board.getPageNo(), cnt);
            board.setFromNo(pagination.getFromNo());

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

            Map<String, Object> result = new HashMap<>();
            result.put("list", list);   // 리스트
            result.put("pagination", pagination); // 페이징

            return new ResponseEntity<>(result, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(new HashMap<>(), HttpStatus.BAD_REQUEST);
        }
    }


    /**
     * 고객의 소리 저장하기
     * @param customerVoice
     * @param bindingResult
     * @return
     */
    @RequestMapping(value= "/customer_voice", method = RequestMethod.PUT)
    public ResponseEntity<Void> saveCustomerVoice(@RequestBody CustomerVoice customerVoice, BindingResult bindingResult){

        int result = 0;
        if(isValid(customerVoice, bindingResult)) {    // validate check
            try {
                //유저 인덱스 번호 넣기
                if(getCurrentUser()!=null){
                 customerVoice.setMemberIdx(getCurrentUser().getIdx());
                    customerVoice.setName(aes256Util.AES_Encode(getCurrentUser().getName()));
                    customerVoice.setEmail(aes256Util.AES_Encode(getCurrentUser().getEmail()));
                    customerVoice.setHp(aes256Util.AES_Encode(getCurrentUser().getMobile_phone()));
                } else {
                    customerVoice.setName(aes256Util.AES_Encode(customerVoice.getName()));
                    customerVoice.setEmail(aes256Util.AES_Encode(customerVoice.getEmail()));
                    customerVoice.setHp(aes256Util.AES_Encode(customerVoice.getHp()));
                }
                // 데이터 암호화하기

                result = customerService.insertCustomerVoice(customerVoice);
            } catch (Exception e) {
                log.debug(e.getMessage());
            }
        }

        if(result > 0){
            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * 단체도시락 신청하기
     * @param groupOrder
     * @param bindingResult
     * @return
     */
    @RequestMapping(value= "/group_order", method = RequestMethod.PUT)
    public ResponseEntity<Void> saveGroupOrder(@RequestBody GroupOrder groupOrder, BindingResult bindingResult){

        int result = 0;
        if(isValid(groupOrder, bindingResult)) {    // validate check

            try {
                result = customerService.insertGroupOrder(groupOrder);
            } catch (Exception e) {
                log.debug(e.getMessage());
            }
        }

        if(result > 0){
            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * 협력업체 신청하기
     * @param partners
     * @param bindingResult
     * @return
     */
    @RequestMapping(value= "/partners", method = RequestMethod.PUT)
    public ResponseEntity<Void> savePartners(@RequestBody Partners partners, BindingResult bindingResult){

        int result = 0;
        if(isValid(partners, bindingResult)) {    // validate check

            try {
                // 데이터 암호화하기
                partners.setCeo(aes256Util.AES_Encode(partners.getCeo()));
                partners.setCompanyEmail(aes256Util.AES_Encode(partners.getCompanyEmail()));
                partners.setCompanyTel(aes256Util.AES_Encode(partners.getCompanyTel()));
                partners.setCompanyAddr(aes256Util.AES_Encode(partners.getCompanyAddr()));
                partners.setFactoryAddr(aes256Util.AES_Encode(partners.getFactoryAddr()));
                result = customerService.insertPartners(partners);
            } catch (Exception e) {
                log.debug(e.getMessage());
            }
        }

        if(result > 0){
            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * 창업문의
     * @param onlineQna
     * @param bindingResult
     * @return
     */
    @RequestMapping(value= "/qna", method = RequestMethod.PUT)
    public ResponseEntity<Void> saveQna(@RequestBody OnlineQna onlineQna, BindingResult bindingResult){

        int result = 0;
        if(isValid(onlineQna, bindingResult)) {    // validate check

            Member member = getCurrentUser();
            if(member != null) onlineQna.setCurrentMemId(getCurrentUser().getIdx());

            try {
                // 데이터 암호화하기
                onlineQna.setName(aes256Util.AES_Encode(onlineQna.getName()));
                onlineQna.setEmail(aes256Util.AES_Encode(onlineQna.getEmail()));
                onlineQna.setHp(aes256Util.AES_Encode(onlineQna.getHp()));
                result = customerService.insertQna(onlineQna);
            } catch (Exception e) {
                log.debug(e.getMessage());
            }
        }

        if(result > 0){
            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * 창업설명회 참석일 조회
     *
     * @return List<BriefingDate>
     * */
    @RequestMapping(value = "/briefing/date",method = RequestMethod.GET)
    public ResponseEntity listDate(){
        List<BriefingDate> list = customerService.listBriefingDate();
        log.info(list.toString());
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    /**
     * 창업설명회 예약
     * @param briefing
     * @param bindingResult
     * @return
     */
    @RequestMapping(value= "/briefing", method = RequestMethod.PUT)
    public ResponseEntity<Void> saveQna(@RequestBody Briefing briefing, BindingResult bindingResult){

        int result = 0;
            if(isValid(briefing, bindingResult)) {    // validate check
                System.out.println(briefing);
                try {
                    // 날짜변환
                    Date joinDt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(briefing.getJoinDate());
                    briefing.setJoinDt(joinDt);

                    result = customerService.insertBriefing(briefing);
                } catch (Exception e) {
                    log.debug(e.getMessage());
                }
        }

        if(result > 0){
            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * 이벤트 신청하기
     * @param eventOrder
     * @param bindingResult
     * @return
     */
    @RequestMapping(value= "/event_order", method = RequestMethod.PUT)
    public ResponseEntity<Void> saveEventOrder(@RequestBody EventOrder eventOrder, BindingResult bindingResult){

        int result = 0;
        if(isValid(eventOrder, bindingResult)) {    // validate check

            try {
                result = customerService.insertEventOrder(eventOrder);
            } catch (Exception e) {
                log.debug(e.getMessage());
            }
        }

        if(result > 0){
            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }
    }
}
