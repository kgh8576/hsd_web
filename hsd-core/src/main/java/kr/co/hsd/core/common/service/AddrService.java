package kr.co.hsd.core.common.service;

import kr.co.hsd.core.common.domain.Addr;
import kr.co.hsd.core.common.repository.AddrRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Service("addrService")
public class AddrService {

    private final Logger log = LoggerFactory.getLogger(AddrService.class);

    @Inject
    private AddrRepository addrRepository;

    @Transactional(readOnly = true)
    public List<Addr> getSido() {
        return addrRepository.getSido();
    }

    @Transactional(readOnly = true)
    public List<Addr> getGungoo(String sido){
        return addrRepository.getGungoo(sido);
    }


}
