package kr.co.hsd.core.common.repository;

import kr.co.hsd.core.common.domain.Code;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-04.
 */
@DefaultMapper
@Repository
public interface CodeRepository {

    /**
     * 코드가져오기
     * @param cCode
     * @return
     */
    List<Code> getCode(String cCode);
}
