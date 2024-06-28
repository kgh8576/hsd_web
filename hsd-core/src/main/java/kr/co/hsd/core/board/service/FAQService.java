package kr.co.hsd.core.board.service;

import kr.co.hsd.core.board.domain.FAQ;
import kr.co.hsd.core.board.domain.FAQCategory;
import kr.co.hsd.core.board.repository.FAQCategoryRepository;
import kr.co.hsd.core.board.repository.FAQRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by lee young eun on 2017-07-31.
 */
@Service("FAQService")
public class FAQService {

    private final Logger log = LoggerFactory.getLogger(FAQService.class);

    @Inject
    private FAQRepository FAQRepository;

    @Inject
    private FAQCategoryRepository faqCategoryRepository;


    /**
     * 게시판 카운트 조회
     * @param faq
     * @return int
     */
    @Transactional(readOnly = true)
    public int listFAQCnt(FAQ faq) {
        return FAQRepository.listFAQCnt(faq);
    }

    /**
     * 게시판 목록 조회
     * @param faq
     * @return List<FAQ>
     */
    @Transactional(readOnly = true)
    public List<FAQ> listFAQ(FAQ faq) {
        return FAQRepository.listFAQ(faq);
    }

    /**
     * 게시판 상세 조회
     * @param idx
     * @return FAQ
     */
    @Transactional(readOnly = true)
    public FAQ getFAQ(Long idx) {
        return FAQRepository.getFAQ(idx);
    }

    /**
     * 이전글 조회
     * @param idx
     * @return
     */
    @Transactional(readOnly = true)
    public FAQ getPrevFAQ(Long idx) {
        return FAQRepository.getPrevFAQ(idx);
    }

    /**
     * 다음글 조회
     * @param idx
     * @return
     */
    @Transactional(readOnly = true)
    public FAQ getNextFAQ(Long idx) {
        return FAQRepository.getNextFAQ(idx);
    }

    @Transactional(readOnly = true)
    public List<FAQCategory> getFAQCategory() {
        return faqCategoryRepository.getFAQCategory();
    }
}
