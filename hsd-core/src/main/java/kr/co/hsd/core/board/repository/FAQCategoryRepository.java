package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.FAQCategory;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@DefaultMapper
@Repository
public interface FAQCategoryRepository {

    List<FAQCategory> getFAQCategory();
}
