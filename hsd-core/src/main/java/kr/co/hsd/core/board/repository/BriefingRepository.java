package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.Briefing;
import kr.co.hsd.core.board.domain.BriefingDate;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-09.
 */
@DefaultMapper
@Repository
public interface BriefingRepository {

    /**
     * 창업설명회신청
     * @param briefing
     * @return
     */
    int insertBriefing(Briefing briefing);

    /**
     * 창업설명회 참석일 조회
     *
     * @return List<BriefingDate>
     * */
    List<BriefingDate> listBriefingDate();
}
