package kr.co.hsd.core.store.repository;

import kr.co.hsd.core.config.support.DefaultMapper;
import kr.co.hsd.core.store.domain.Store;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-04.
 */
@DefaultMapper
@Repository
public interface StoreRepository {

    /**
     * 시도, 군구코드로 매장 가져오기
     * @param sido
     * @param gungoo
     * @return 매장IDX, 매장명
     */
    List<Store> getSimpleList(@Param("sido") String sido, @Param("gungoo") String gungoo);

    /**
     * 지점찾기
     * @param sido
     * @param gungoo
     * @param storeName
     * @return
     */
    List<Store> getList(@Param("sido") String sido, @Param("gungoo") String gungoo, @Param("storeName") String storeName);

    /**
     * 지점상세
     * @param idx
     * @return
     */
    Store getDetail(@Param("idx") int idx);

    /**
     * 신규 가맹점 전체갯수
     * @return
     */
    int getNewStoreCnt();

    /**
     * 신규 가맹점
     * @return
     */
    List<Store> getNewStore(@Param("fromNo") int fromNo, @Param("pageSize") int pageSize, @Param("skipPaging") boolean skipPaging);

    /**
     * 주변점포 검색
     * @return
     */
    List<Store> getSearchedStore(@Param("sido") String sido, @Param("gungoo") String gungoo, @Param("searchKeyword") String searchKeyword, @Param("fromNo") int fromNo, @Param("pageSize") int pageSize, @Param("skipPaging") boolean skipPaging);

    /**
     * 지점검색 전체갯수
     * @return
     */
    int getSearchStoreCnt(@Param("sido") String sido, @Param("gungoo") String gungoo, @Param("searchKeyword") String searchKeyword);

    /**
     * 주변점포 검색 페이징없이
     * @return
     */
    List<Store> getSearchedStoreWithoutPaging(@Param("sido") String sido, @Param("gungoo") String gungoo, @Param("searchKeyword") String searchKeyword);
}
