package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.OnlineQna;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

/**
 * Created by lee young eun on 2017-08-09.
 */
@DefaultMapper
@Repository
public interface OnlineQnaRepository {

    /**
     * 창업상담 등록하기
     * @param onlineQna
     * @return
     */
    int insertQna(OnlineQna onlineQna);
}
