package kr.co.hsd.core.sms.repository;

import kr.co.hsd.core.config.support.DefaultMapper;
import kr.co.hsd.core.sms.domain.Sms;
import org.springframework.stereotype.Repository;

/**
 * Created by lee young eun on 2017-07-28.
 */
@DefaultMapper
@Repository
public interface SmsRepository {

    /**
     * SMS 보내기
     * @return
     */
    int sendSms(Sms sms);
}
