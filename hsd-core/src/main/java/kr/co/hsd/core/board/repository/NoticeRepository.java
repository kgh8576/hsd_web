package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.Notice;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-07-31.
 */
@DefaultMapper
@Repository
public interface NoticeRepository {

    /**
     * 게시판 카운트 조회
     * @param notice 조회 조건
     * @return int
     */
    int listNoticeCnt(Notice notice);

    /**
     * 게시판 목록 조회
     * @param notice 조회 조건
     * @return List<Notice>
     */
    List<Notice> listNotice(Notice notice);

    /**
     * 조회수 업데이트
     * @param idx
     * @return
     */
    int updateNoticeHits(@Param("idx") Long idx);

    /**
     * 게시판 조회
     * @param idx
     * @return Notice
     */
    Notice getNotice(@Param("idx") Long idx);

    /**
     * 이전글 조회
     * @param idx
     * @return
     */
    Notice getPrevNotice(@Param("idx") Long idx);

    /**
     * 다음글 조회
     * @param idx
     * @return
     */
    Notice getNextNotice(@Param("idx") Long idx);

}
