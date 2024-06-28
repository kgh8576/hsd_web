package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.Partners;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

/**
 * Created by lee young eun on 2017-08-07.
 */
@DefaultMapper
@Repository
public interface PartnersRepository {

    /**
     * 협력업체 신청하기
     * @param partners
     * @return
     */
    int insertBoard(Partners partners);
}
