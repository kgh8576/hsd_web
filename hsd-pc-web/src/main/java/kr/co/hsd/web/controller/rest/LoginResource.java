package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.config.Constants;
import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.core.member.service.MemberService;
import kr.co.hsd.core.sms.service.SmsService;
import kr.co.hsd.web.controller.BaseFormController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by lee young eun on 2017-07-28.
 */
@RestController
@RequestMapping("/api")
public class LoginResource extends BaseFormController {
    private static final Logger log = LoggerFactory.getLogger(LoginResource.class);

    @Autowired
    MemberService memberService;

    @Autowired
    SmsService smsService;

    @Autowired
    PasswordEncoder passwordEncoder;

    /**
     * 아이디/비밀번호 찾기
     * @param param
     * @return
     */
    @RequestMapping(value="/login/find", method = RequestMethod.POST)
    public ResponseEntity<Map> findMemberInfo(@RequestParam Map<String, String> param) {

        Map<String, Object> result = new HashMap<>();   // result

        Member member = memberService.getFindMember(param);
        if(member == null){
            result.put("result", "not");    // 정보없음.
            return new ResponseEntity<>(result, HttpStatus.OK);
        }

        // search id
        if("id".equals(param.get("mode"))){
            result.put("name", member.getName());
            result.put("id", member.getId());
            result.put("result", "ok"); // 아이디 찾기 ok

        }
        // search password
        else if("pw".equals(param.get("mode"))){
            result.put("name", member.getName());
            result.put("mobile_phone", member.getMobile_phone());

            // 임시비밀번호 update, sms 전송
            String tmpPassword = makeTempPassword(8);

            try {
                Map<String, Object> tmpParam = new HashMap<>();
                tmpParam.put("currentMemId", member.getIdx());
                tmpParam.put("NewPassword", passwordEncoder.encode(tmpPassword));
                memberService.updateCurrentMemberPassword(tmpParam);

                String sms_txt = "[" + tmpPassword + "] 임시 비밀번호로 설정되었습니다. 로그인후 비밀번호 변경해주세요.";
                smsService.sendSms(member.getMobile_phone(), Constants.SEND_SMS_NUM, sms_txt);

                result.put("result", "ok"); // 패스워드 찾기 ok

            } catch (Exception e) {
                e.printStackTrace();
                log.error(e.getMessage());

                return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

            }

        }

        return new ResponseEntity<>(result, HttpStatus.OK);

    }
}
