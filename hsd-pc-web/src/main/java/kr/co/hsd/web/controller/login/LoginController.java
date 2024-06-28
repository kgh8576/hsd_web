package kr.co.hsd.web.controller.login;

import com.sci.v2.pcc.secu.SciSecuManager;
import com.sci.v2.pcc.secu.hmac.SciHmac;
import kr.co.hsd.core.config.Constants;
import kr.co.hsd.core.config.properties.SirenCertProperties;
import kr.co.hsd.core.config.properties.SiteProperties;
import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.core.member.service.MemberService;
import kr.co.hsd.core.sms.service.SmsService;
import kr.co.hsd.web.controller.BaseFormController;
import kr.co.hsd.web.util.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Created by lee young eun on 2017-07-18.
 */
@Controller
@RequestMapping("/login")
public class LoginController extends BaseFormController {

    private final Logger log = LoggerFactory.getLogger(LoginController.class);

    private final String JSP_PATH = "login/";

    @Inject
    private SirenCertProperties sirenCertProperties;

    @Inject
    private SiteProperties siteProperties;

    @Autowired
    MemberService memberService;

    @Autowired
    SmsService smsService;

    @Autowired
    PasswordEncoder passwordEncoder;

    /**
     * 로그인 페이지
     * @return
     */
    @RequestMapping({"","/login"})
    public String login(){
        return JSP_PATH + "login";
    }

    /**
     * ID/PW찾기
     * @return
     */
    @RequestMapping("/login_find")
    public String login_find(){

        if(SecurityUtils.isFullyAuthenticated()) {
            return "redirect:/";
        }

        return JSP_PATH + "login_find";
    }

    /**
     * ID/PW찾기 완료
     * @return
     */
    @RequestMapping(value="/login_complete", method = RequestMethod.POST)
    public String login_complate(@RequestParam Map<String, String> param, ModelMap map){

        if(SecurityUtils.isFullyAuthenticated()) {
            return "redirect:/";
        }

        map.addAttribute("mode", param.get("mode"));

        if("id".equals(param.get("mode"))){ // search id

            map.addAttribute("name", param.get("name"));
            map.addAttribute("id", param.get("id"));

        }else if("pw".equals(param.get("mode"))){   // search pw

            map.addAttribute("name", param.get("name"));
            map.addAttribute("mobile_phone", param.get("mobile_phone"));
        }

        return JSP_PATH + "login_complete";
    }

    /**
     * PW 정기 변경
     * @return
     */
    @RequestMapping("/pw_change")
    public String pw_change(){
        return JSP_PATH + "pw_change";
    }

    /**
     * 휴면계정 로그인시 본인인증 step 1
     * @return
     */
    @RequestMapping("/sleep_verify_step1")
    public String sleep_verify_step1(){
        if(SecurityUtils.isFullyAuthenticated()) {
            return "redirect:/";
        }
        return JSP_PATH + "sleep_verify_step1";
    }

    /**
     * 휴면계정 로그인시 본인인증 step 2
     * @return
     */
    @RequestMapping("/sleep_verify_step2")
    public String sleep_verify_step2(Member member, ModelMap map){
        if(SecurityUtils.isFullyAuthenticated()) {
            return "redirect:/";
        }

        map.addAttribute("name", member.getName());
        map.addAttribute("mobile_phone", member.getMobile_phone());
        //휴면계정 해제
        member.setStatus("01");
        memberService.awakeSleepMember(member);
        
        member = memberService.findByMember(member);

        // 임시비밀번호 update, sms 전송
        String tmpPassword = makeTempPassword(8);

        try {
            Map<String, Object> tmpParam = new HashMap<>();
            tmpParam.put("currentMemId", member.getIdx());
            tmpParam.put("NewPassword", passwordEncoder.encode(tmpPassword));
            memberService.updateCurrentMemberPassword(tmpParam);

            String sms_txt = "[" + tmpPassword + "] 임시 비밀번호로 설정되었습니다. 로그인후 비밀번호 변경해주세요.";
            smsService.sendSms(member.getMobile_phone(), Constants.SEND_SMS_NUM, sms_txt);


            // 비밀번호 틀린횟수 리셋
            memberService.resetWrongPwCnt(member.getId());

        } catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());

        }

        return JSP_PATH + "sleep_verify_step2";
    }

    /**
     * 로그인 비밀번호 5회이상 오류시 본인인증 step 1
     * @return
     */
    @RequestMapping("/verify_step1")
    public String verify_step1(){
        if(SecurityUtils.isFullyAuthenticated()) {
            return "redirect:/";
        }
        return JSP_PATH + "verify_step1";
    }

    /**
     * 로그인 비밀번호 5회이상 오류시 본인인증 step 2
     * @return
     */
    @RequestMapping("/verify_step2")
    public String verify_step2(Member member, ModelMap map){
        if(SecurityUtils.isFullyAuthenticated()) {
            return "redirect:/";
        }

        map.addAttribute("name", member.getName());
        map.addAttribute("mobile_phone", member.getMobile_phone());
        member = memberService.findByMember(member);

        // 임시비밀번호 update, sms 전송
        String tmpPassword = makeTempPassword(8);

        try {
            Map<String, Object> tmpParam = new HashMap<>();
            tmpParam.put("currentMemId", member.getIdx());
            tmpParam.put("NewPassword", passwordEncoder.encode(tmpPassword));
            memberService.updateCurrentMemberPassword(tmpParam);

            String sms_txt = "[" + tmpPassword + "] 임시 비밀번호로 설정되었습니다. 로그인후 비밀번호 변경해주세요.";
            smsService.sendSms(member.getMobile_phone(), Constants.SEND_SMS_NUM, sms_txt);

            // 비밀번호 틀린횟수 리셋
            memberService.resetWrongPwCnt(member.getId());

        } catch (Exception e) {
            e.printStackTrace();
            log.error(e.getMessage());

        }

        return JSP_PATH + "verify_step2";
    }

    /**
     * 휴대폰 인증 모듈 설치
     * @param response
     * @param model
     * @return
     */
    @RequestMapping("/auth_cert")
    public String auth_cert(HttpServletResponse response, Model model) {

        // 휴대폰 인증 모듈
        //날짜 생성
        Calendar today = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String day = sdf.format(today.getTime());

        java.util.Random ran = new Random();
        //랜덤 문자 길이
        int numLength = 6;
        String randomStr = "";

        for (int i = 0; i < numLength; i++) {
            //0 ~ 9 랜덤 숫자 생성
            randomStr += ran.nextInt(10);
        }

        String id       = sirenCertProperties.getId();              // 본인실명확인 회원사 아이디
        String srvNo    = sirenCertProperties.getSrvNoForLogin();           // 본인실명확인 서비스번호
        String reqNum   = day + randomStr;                          // 본인실명확인 요청번호
        String exVar    = "0000000000000000";                       // 복호화용 임시필드
        String certDate = day;                                      // 본인실명확인 요청시간
        String certGb   = "H";                                      // 본인실명확인 본인확인 인증수단
        String addVar   = "";                                       // 본인실명확인 추가 파라메터
        String retUrl   = "32" + siteProperties.getDomain() + "/login/auth_result";   // 결과전송 url

        /**
         *
         * reqNum 값은 최종 결과값 복호화를 위한 SecuKey로 활용 되므로 중요합니다.
         * reqNum 은 본인 확인 요청시 항상 새로운 값으로 중복 되지 않게 생성 해야 합니다.
         * 쿠키 또는 Session및 기타 방법을 사용해서 reqNum 값을
         * pcc_V3_result_seed.jsp에서 가져 올 수 있도록 해야 함.
         * 샘플을 위해서 쿠키를 사용한 것이므로 참고 하시길 바랍니다.
         *
         */
        Cookie c = new Cookie("reqNum", reqNum);
        //c.setMaxAge(1800);  // <== 필요시 설정(초단위로 설정됩니다)
        response.addCookie(c);

        //01. 암호화 모듈 선언
        SciSecuManager seed  = new SciSecuManager();

        //02. 1차 암호화
        String encStr = "";
        String reqInfo      = id+"^"+srvNo+"^"+reqNum+"^"+certDate+"^"+certGb+"^"+addVar+"^"+exVar;  // 데이터 암호화
        encStr              = seed.getEncPublic(reqInfo);

        //03. 위변조 검증 값 생성
        SciHmac hmac = new SciHmac();
        String hmacMsg = hmac.HMacEncriptPublic(encStr);

        //03. 2차 암호화
        reqInfo  = seed.getEncPublic(encStr + "^" + hmacMsg + "^" + "0000000000000000");  //2차암호화

        model.addAttribute("reqInfo", reqInfo);
        model.addAttribute("retUrl", retUrl);

        response.setHeader("Pragma", "no-cache" );
        response.setDateHeader("Expires", 0);
        response.setHeader("Pragma", "no-store");
        response.setHeader("Cache-Control", "no-cache" );

        return JSP_PATH + "auth_cert";
    }

    /**
     * 본인인증 결과 처리
     * @param request
     * @param response
     * @param model
     * @return
     */
    @RequestMapping("/auth_result")
    public String auth_result(HttpServletRequest request, HttpServletResponse response, Model model) {

        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Pragma","no-cache");

        String retInfo   = request.getParameter("retInfo").trim();

        // 쿠키값 가져 오기
        Cookie[] cookies = request.getCookies();
        String cookiename = "";
        String cookiereqNum = "";
        if(cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                Cookie c = cookies[i];
                cookiename = c.getName();
                cookiereqNum = c.getValue();
                if(cookiename.compareTo("reqNum")==0) break;
                cookiereqNum = null;
            }
        }

        // 변수
        String name			= "";                                                               //성명
        String sex			= "";																//성별
        String birYMD		= "";																//생년월일
        String fgnGbn		= "";																//내외국인 구분값

        String di			= "";																//DI
        String ci1			= "";																//CI
        String ci2			= "";																//CI
        String civersion    = "";                                                               //CI Version

        String reqNum		= "";                                                               // 본인확인 요청번호
        String result		= "";                                                               // 본인확인결과 (Y/N)
        String certDate		= "";                                                               // 검증시간
        String certGb		= "";                                                               // 인증수단
        String cellNo		= "";																// 핸드폰 번호
        String cellCorp		= "";																// 이동통신사
        String addVar		= "";

        //복화화용 변수
        String encPara		= "";
        String encMsg		= "";
        String msgChk       = "N";

        try {

            // 1. 암호화 모듈 (jar) Loading
            com.sci.v2.pcc.secu.SciSecuManager sciSecuMg = new com.sci.v2.pcc.secu.SciSecuManager();
            //쿠키에서 생성한 값을 Key로 생성 한다.
            retInfo  = sciSecuMg.getDec(retInfo, cookiereqNum);

            // 2.1차 파싱---------------------------------------------------------------
            String[] aRetInfo1 = retInfo.split("\\^");

            encPara  = aRetInfo1[0];    //암호화된 통합 파라미터
            encMsg   = aRetInfo1[1];    //암호화된 통합 파라미터의 Hash값

            String  encMsg2   = sciSecuMg.getMsg(encPara);
            // 3.위/변조 검증 ---------------------------------------------------------------
            if(encMsg2.equals(encMsg)){
                msgChk="Y";
            }

            if(msgChk.equals("N")) {
                // 비정상적 접근
                model.addAttribute("msg", "비정상적인 접근입니다[1]");
                return JSP_PATH + "auth_error";
            }

            // 복호화 및 위/변조 검증 ---------------------------------------------------------------
            retInfo = sciSecuMg.getDec(encPara, cookiereqNum);

            String[] aRetInfo = retInfo.split("\\^");

            name = aRetInfo[0];
            birYMD = aRetInfo[1];
            sex = aRetInfo[2];
            fgnGbn = aRetInfo[3];
            di = aRetInfo[4];
            ci1 = aRetInfo[5];
            ci2 = aRetInfo[6];
            civersion = aRetInfo[7];
            reqNum = aRetInfo[8];
            result = aRetInfo[9];
            certGb = aRetInfo[10];
            cellNo = aRetInfo[11];
            cellCorp = aRetInfo[12];
            certDate = aRetInfo[13];
            addVar = aRetInfo[14];

        } catch (Exception ex) {
            // error
            model.addAttribute("msg", "비정상적인 접근입니다[2]");
            return JSP_PATH + "auth_error";
        }

        // 인증실패
        if(!result.equals("Y")){
            model.addAttribute("msg", "인증에 실패하였습니다.");
            return JSP_PATH + "auth_error";
        }

        model.addAttribute("name", name);
        model.addAttribute("birYMD", birYMD);
        model.addAttribute("sex", sex);
        model.addAttribute("fgnGbn", fgnGbn);
        model.addAttribute("di", di);
        model.addAttribute("ci1", ci1);
        model.addAttribute("ci2", ci2);
        model.addAttribute("civersion", civersion);
        model.addAttribute("reqNum", reqNum);
        model.addAttribute("result", result);
        model.addAttribute("certGb", certGb);
        model.addAttribute("cellNo", cellNo);
        model.addAttribute("cellCorp", cellCorp);
        model.addAttribute("certDate", certDate);
        model.addAttribute("addVar", addVar);

        return JSP_PATH + "auth_result";
    }

}
