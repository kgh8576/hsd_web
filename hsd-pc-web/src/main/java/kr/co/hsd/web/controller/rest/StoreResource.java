package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.board.domain.Board;
import kr.co.hsd.core.board.service.BoardService;
import kr.co.hsd.core.common.Pagination;
import kr.co.hsd.core.store.domain.Store;
import kr.co.hsd.core.store.service.StoreService;
import kr.co.hsd.web.controller.BaseFormController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * Created by lee young eun on 2017-08-07.
 */
@RestController
@RequestMapping("/api")
public class StoreResource extends BaseFormController {

    private static final Logger log = LoggerFactory.getLogger(StoreResource.class);

    @Autowired
    private StoreService storeService;

    @Autowired
    private BoardService boardService;


    @RequestMapping(value = "/store_search_cv", method = RequestMethod.GET)
    @ResponseBody
    public ResponseEntity<Map> storeSearchCustomerVoiceWithoutPaging(@RequestParam(value = "sido", required = false) String sido,
                                                                           @RequestParam(value = "gungoo", required = false) String gungoo,
                                                                           @RequestParam(value = "searchKeyword", required = false) String searchKeyword
                                                                           ) {


        List<Store> stores = storeService.getStoresWithoutPaging(sido, gungoo, searchKeyword);
        List<Map<String, String>> result = new ArrayList<>();

        stores.forEach(
                x -> {
                   Map<String,String> searchMap = new LinkedHashMap<>();
                   searchMap.put("value",x.getName());
                   searchMap.put("data",x.getName());
                   result.add(searchMap);
                }
        );
        Map suggestionsMap = new HashMap();
        suggestionsMap.put("suggestions",result);
        return  ResponseEntity.ok(suggestionsMap);
    }


    /**
     * 지점찾기
     *
     * @param sido
     * @param gungoo
     * @param searchKeyword
     * @return
     */
    @RequestMapping(value = "/store_search", method = RequestMethod.GET)
    public ResponseEntity<List<Store>> storeSearchWithoutPaging(@RequestParam(value = "sido", required = false) String sido,
                                                                @RequestParam(value = "gungoo", required = false) String gungoo,
                                                                @RequestParam(value = "searchKeyword", required = false) String searchKeyword,
                                                                @RequestParam(value = "idx", required = false) String idx) {


        List<Store> stores = new ArrayList<>();
        int storeIdx = 0;
        if (!"".equals(idx)) {
            storeIdx = Integer.parseInt(idx);
        }

        if (storeIdx != 0) {
            stores.add(storeService.getDetail(storeIdx));
        } else {
            stores = storeService.getStoresWithoutPaging(sido, gungoo, searchKeyword);
        }

        return new ResponseEntity<>(stores, HttpStatus.OK);
    }

    /**
     * 지점찾기
     *
     * @param sido
     * @param gungoo
     * @param searchKeyword
     * @return
     */
    @RequestMapping(value = "/store_search/{pageNo}", method = RequestMethod.GET)
    public ResponseEntity<Map> storeSearch(@PathVariable("pageNo") int pageNo,
                                           @RequestParam(value = "sido", required = false) String sido,
                                           @RequestParam(value = "gungoo", required = false) String gungoo,
                                           @RequestParam(value = "searchKeyword", required = false) String searchKeyword,
                                           @RequestParam(value = "idx", required = false) String idx) {

        /*int storeIdx = 0;
        if(!"".equals(idx)) {
            storeIdx = Integer.parseInt(idx);
        }

        List<Store> result = new ArrayList<>();
        if(storeIdx != 0) {
            result.add(storeService.getDetail(storeIdx));   // 신규가맹점 위치보기

        } else {
            result = storeService.getList(sido, gungoo, storeName);
        }*/

        // 전체갯수
        int totalCnt = storeService.getSearchStoreCnt(sido, gungoo, searchKeyword);

        // 페이징
        int pageSize = 3;
        Pagination pagination = new Pagination(pageNo, pageSize, totalCnt);
        int fromNo = pagination.getFromNo();


        // 리스트
        List<Store> stores = storeService.getStores(sido, gungoo, searchKeyword, fromNo, pageSize);

        Map<String, Object> map = new HashMap<>();
        map.put("list", stores);
        map.put("pagination", pagination);

        return new ResponseEntity<>(map, HttpStatus.OK);
    }

    /**
     * 지점상세정보
     *
     * @param idx
     * @return
     */
    @RequestMapping(value = "/store_detail/{idx}", method = RequestMethod.GET)
    public ResponseEntity<List> storeDetail(@PathVariable("idx") int idx) {

        Store store = storeService.getDetail(idx);
        if (store != null) {

            List result = new ArrayList<>();
            result.add(store);

            // 신규점 오픈이벤트
            Board board = new Board();
            board.setBid("offevent");
            board.setPageSize(3);
            board.setStore(store.getIdx());

            List<Board> event = boardService.listBoard(board);
            result.add(event);

            return new ResponseEntity<>(result, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    /**
     * 신규 가맹점 리스트
     *
     * @return
     */
    @RequestMapping(value = "/store_new/{pageNo}")
    public ResponseEntity<Map> newStoreSearch(@PathVariable("pageNo") int pageNo) {

        // 전체갯수
        int totalCnt = storeService.getNewStoreCnt();

        // 페이징
        int pageSize = 2;
        Pagination pagination = new Pagination(pageNo, pageSize, totalCnt);
        int fromNo = pagination.getFromNo();

        // 리스트
        List<Store> store = storeService.getNewStore(fromNo, pageSize);

        Map<String, Object> map = new HashMap<>();
        map.put("list", store);
        map.put("pagination", pagination);

        return new ResponseEntity<>(map, HttpStatus.OK);
    }
}
