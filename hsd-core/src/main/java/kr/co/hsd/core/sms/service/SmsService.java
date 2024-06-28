package kr.co.hsd.core.sms.service;

import kr.co.hsd.core.sms.domain.Sms;
import kr.co.hsd.core.sms.repository.SmsRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;

/**
 * Created by lee young eun on 2017-07-28.
 */
@Service("smsService")
public class SmsService {

    private final Logger log = LoggerFactory.getLogger(SmsService.class);

    @Inject
    private SmsRepository smsRepository;

    /**
     * SMS 보내기
     * @param 받는사람전화번호, 보내는사람전화번호, 내용
     * @return
     */
    @Transactional
    public int sendSms(String call_to, String call_from, String sms_txt){
        if("".equals(call_to.replace("-",""))){
            return 0;
        }else {

            Sms sms = new Sms();
            sms.setCall_to(call_to.replace("-", ""));
            sms.setCall_from(call_from.replace("-", ""));
            sms.setSms_txt(sms_txt);
            sms.setMsg_type((long) 4);
            return smsRepository.sendSms(sms);
        }
    }
}
