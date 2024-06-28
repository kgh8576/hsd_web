package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.FAQ;
import kr.co.hsd.core.board.domain.FAQCategory;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-07-31.
 */
@DefaultMapper
@Repository
public interface FAQRepository {

    /**
     * 게시판 카운트 조회
     * @param faq 조회 조건
     * @return int
     */
    int listFAQCnt(FAQ faq);

    /**
     * 게시판 목록 조회
     * @param faq 조회 조건
     * @return List<FAQ>
     */
    List<FAQ> listFAQ(FAQ faq);

    /**
     * 게시판 조회
     * @param idx
     * @return FAQ
     */
    FAQ getFAQ(@Param("idx") Long idx);

    /**
     * 이전글 조회
     * @param idx
     * @return
     */
    FAQ getPrevFAQ(@Param("idx") Long idx);

    /**
     * 다음글 조회
     * @param idx
     * @return
     */
    FAQ getNextFAQ(@Param("idx") Long idx);

}
