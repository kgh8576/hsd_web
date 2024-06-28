package kr.co.hsd.core.common.repository;

import kr.co.hsd.core.common.domain.Banner;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-26.
 */
@DefaultMapper
@Repository
public interface BannerRepository {

    /**
     * 배너리스트 가져오기
     * @param banner
     * @return
     */
    List<Banner> getBannerList(Banner banner);
}
