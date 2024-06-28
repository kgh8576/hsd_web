package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.EventOrder;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

/**
 * Created by lee young eun on 2017-10-23.
 */
@DefaultMapper
@Repository
public interface EventOrderRepository {
    /**
     * 이벤트 등록하기
     * @param eventOrder
     * @return
     */
    int insertBoard(EventOrder eventOrder);
}
