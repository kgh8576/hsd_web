package kr.co.hsd.core.common.service;

import kr.co.hsd.core.common.domain.Code;
import kr.co.hsd.core.common.repository.CodeRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Service("codeService")
public class CodeService {

    private final Logger log = LoggerFactory.getLogger(CodeService.class);

    @Inject
    private CodeRepository codeRepository;

    @Transactional(readOnly = true)
    public List<Code> getCode(String cCode) {
        return codeRepository.getCode(cCode);
    }


}
