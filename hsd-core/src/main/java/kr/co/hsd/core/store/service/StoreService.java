package kr.co.hsd.core.store.service;

import kr.co.hsd.core.store.domain.Store;
import kr.co.hsd.core.store.repository.StoreRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Service("storeService")
public class StoreService {

    private final Logger log = LoggerFactory.getLogger(StoreService.class);

    @Inject
    private StoreRepository storeRepository;

    /**
     * 시도, 군구코드로 매장 가져오기
     * @param sidoCode
     * @param gungooCode
     * @return 매장IDX, 매장명
     */
    public List<Store> getSimpleList(String sidoCode, String gungooCode){
        return storeRepository.getSimpleList(sidoCode, gungooCode);
    }

    /**
     * 지점찾기
     * @param sidoCode
     * @param gungooCode
     * @param storeName
     * @return
     */
    public List<Store> getList(String sidoCode, String gungooCode, String storeName){
        return storeRepository.getList(sidoCode, gungooCode, storeName);
    }

    /**
     * 지점 검색 전체 갯수
     * @return
     */
    public int getSearchStoreCnt(String sido, String gungoo, String searchKeyword){
        return storeRepository.getSearchStoreCnt(sido, gungoo, searchKeyword);
    }

    /**
     * 지점상세
     * @param idx
     * @return
     */
    public Store getDetail(int idx){
        return storeRepository.getDetail(idx);
    }

    /**
     * 신규 가맹점 전체 갯수
     * @return
     */
    public int getNewStoreCnt(){
        return storeRepository.getNewStoreCnt();
    }

    /**
     * 신규 가맹점
     * @return
     */
    public List<Store> getNewStore(int fromNo, int pageSize) {
        boolean skipPaging = false;
        return storeRepository.getNewStore(fromNo, pageSize, skipPaging);
    }

    /**
     * 주변점포 검색
     * @return
     */
    public List<Store> getStores(String sido, String gungoo, String searchKeyword, int fromNo, int pageSize) {
        boolean skipPaging = false;
        return storeRepository.getSearchedStore(sido, gungoo, searchKeyword, fromNo, pageSize, skipPaging);
    }

    public List<Store> getStoresWithoutPaging(String sido, String gungoo, String searchKeyword) {
        return storeRepository.getSearchedStoreWithoutPaging(sido, gungoo, searchKeyword);

    }
}
