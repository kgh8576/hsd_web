package kr.co.hsd.core.common.repository;

import kr.co.hsd.core.common.domain.Popup;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-26.
 */
@DefaultMapper
@Repository
public interface PopupRepository {

    /**
     * 팝업 가져오기
     * @return
     */
    List<Popup> getPopupList();
}
