package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.common.domain.Addr;
import kr.co.hsd.core.common.domain.Code;
import kr.co.hsd.core.common.service.AddrService;
import kr.co.hsd.core.common.service.CodeService;
import kr.co.hsd.core.store.domain.Store;
import kr.co.hsd.core.store.service.StoreService;
import kr.co.hsd.web.controller.BaseFormController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-04.
 */
@RestController
@RequestMapping("/api")
public class CommonResource extends BaseFormController {

    private static final Logger log = LoggerFactory.getLogger(CommonResource.class);

    @Autowired
    private CodeService codeService;

    @Autowired
    private AddrService addrService;

    @Autowired
    private StoreService storeService;

    @RequestMapping(value= "/find/code/{cCode}", method= RequestMethod.GET)
    public ResponseEntity<List<Code>> getCode(@PathVariable("cCode") String cCode){

        List<Code> result = codeService.getCode(cCode);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    /**
     * 시도검색
     * @return
     */
    @RequestMapping(value= "/find/sido", method= RequestMethod.GET)
    public ResponseEntity<List<Addr>> getSido(@RequestParam(value = "sido", required = false) String sido){

        List<Addr> result;

        // 시도검색
        if(sido != null && !"".equals(sido)){
            result = addrService.getGungoo(sido);
        }else{
            result = addrService.getSido();
        }
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    /**
     * 매장검색
     * @return
     */
    @RequestMapping(value= "/find/store", method= RequestMethod.GET)
    public ResponseEntity<List<Store>> getStore(@RequestParam(value = "sido") String sido,
                                                @RequestParam(value = "gungoo") String gungoo){

        List<Store> result = storeService.getSimpleList(sido, gungoo);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
