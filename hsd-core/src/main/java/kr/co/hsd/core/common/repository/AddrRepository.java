package kr.co.hsd.core.common.repository;

import kr.co.hsd.core.common.domain.Addr;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-04.
 */
@DefaultMapper
@Repository
public interface AddrRepository {

    /**
     * 시도 리스트 가져오기
     * @return
     */
    List<Addr> getSido();

    /**
     * 군구 리스트 가져오기
     * @param sido
     * @return
     */
    List<Addr> getGungoo(@Param("sido") String sido);
}
