package kr.co.hsd.core.common.service;

import kr.co.hsd.core.common.domain.Popup;
import kr.co.hsd.core.common.repository.PopupRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Service("popupService")
public class PopupService {
    private final Logger log = LoggerFactory.getLogger(PopupService.class);

    @Autowired
    private PopupRepository popupRepository;

    /**
     * 팝업리스트 가져오기
     * @return
     */
    public List<Popup> getPopupList() {
        return popupRepository.getPopupList();
    }
}
