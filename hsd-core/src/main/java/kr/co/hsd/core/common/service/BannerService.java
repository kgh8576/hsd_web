package kr.co.hsd.core.common.service;

import kr.co.hsd.core.common.domain.Banner;
import kr.co.hsd.core.common.repository.BannerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Service("bannerService")
public class BannerService {

    @Autowired
    private BannerRepository bannerRepository;

    /**
     * 배너리스트 가져오기
     * @param banner
     * @return
     */
    public List<Banner> getBannerList(Banner banner) {
        return bannerRepository.getBannerList(banner);
    }
}
