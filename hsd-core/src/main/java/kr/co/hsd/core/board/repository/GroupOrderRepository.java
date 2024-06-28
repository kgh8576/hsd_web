package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.GroupOrder;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

/**
 * Created by lee young eun on 2017-08-07.
 */
@DefaultMapper
@Repository
public interface GroupOrderRepository {

    /**
     * 단체주문 등록하기
     * @param groupOrder
     * @return
     */
    int insertBoard(GroupOrder groupOrder);
}
