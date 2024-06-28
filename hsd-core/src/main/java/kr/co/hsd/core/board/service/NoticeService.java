package kr.co.hsd.core.board.service;

import kr.co.hsd.core.board.domain.Notice;
import kr.co.hsd.core.board.repository.NoticeRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by lee young eun on 2017-07-31.
 */
@Service("noticeService")
public class NoticeService {

    private final Logger log = LoggerFactory.getLogger(NoticeService.class);

    @Inject
    private NoticeRepository noticeRepository;

    /**
     * 게시판 카운트 조회
     * @param notice
     * @return int
     */
    @Transactional(readOnly = true)
    public int listNoticeCnt(Notice notice) {
        return noticeRepository.listNoticeCnt(notice);
    }

    /**
     * 게시판 목록 조회
     * @param notice
     * @return List<Notice>
     */
    @Transactional(readOnly = true)
    public List<Notice> listNotice(Notice notice) {
        return noticeRepository.listNotice(notice);
    }

    /**
     * 조회수 업데이트
     * @param idx
     * @return
     */
    @Transactional
    public int updateNoticeHits(Long idx){
        return noticeRepository.updateNoticeHits(idx);
    }

    /**
     * 게시판 상세 조회
     * @param idx
     * @return Notice
     */
    @Transactional(readOnly = true)
    public Notice getNotice(Long idx) {
        return noticeRepository.getNotice(idx);
    }

    /**
     * 이전글 조회
     * @param idx
     * @return
     */
    @Transactional(readOnly = true)
    public Notice getPrevNotice(Long idx) {
        return noticeRepository.getPrevNotice(idx);
    }

    /**
     * 다음글 조회
     * @param idx
     * @return
     */
    @Transactional(readOnly = true)
    public Notice getNextNotice(Long idx) {
        return noticeRepository.getNextNotice(idx);
    }

}
