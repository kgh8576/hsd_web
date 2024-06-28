package kr.co.hsd.web.controller.rest;

import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.core.member.service.MemberService;
import kr.co.hsd.web.controller.BaseFormController;
import kr.co.hsd.web.util.SecurityUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class MemberResource extends BaseFormController {

    private static final Logger log = LoggerFactory.getLogger(MemberResource.class);

    @Autowired
    private MemberService memberService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    /**
     * 회원 가입여부 체크
     * @param member
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/member/find", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Boolean> getMemberFind(@RequestBody Member member) throws Exception {
        List<Member> list = memberService.getMemberForFindInfo(member);
        boolean result = list.size() > 0 ? false : true;

        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    /**
     * 아이디 중복체크
     * @return 사용가능한 아이디의 경우 아이디 반환, 사용중인 아이디는 빈값 반환
     * @throws Exception
     */
    @RequestMapping(value = "/member/idchk", method = RequestMethod.POST)
    public ResponseEntity<String> getIdFind(@RequestParam("id") String id) throws Exception {

        Member member = memberService.getMemberByAccountId(id, true);
        String result = member == null ? id : "";

        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    /**
     * 회원가입
     * @param member
     * @param bindingResult
     * @return
     */
    @RequestMapping(value = "/member/join", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Map> insertMember(@RequestBody Member member, BindingResult bindingResult) {

        Map<String, String> result = new HashMap<>();

        if(isValid(member, bindingResult)) {    // validate check

            // 아이디값 중복체크
            Member idchk = memberService.getMemberByAccountId(member.getId(), true);
            if (idchk != null) {
                result.put("msg", "already");
                return new ResponseEntity<>(result, HttpStatus.OK);
            }

            try {
                member.setPassword(passwordEncoder.encode(member.getNewPassword()));    // 암호화
                member.setMobile_certification_flag("Y");                               // 휴대폰 인증여부
                member.setJoin_path("W");                                               // 가입경로
                member.setStatus("01");

                // 저장
                memberService.insertMember(member);
                result.put("msg", "ok");

            } catch (Exception e) {
                e.printStackTrace();
                log.error(e.getMessage());
                result.put("msg", "error");
                return new ResponseEntity<>(result, HttpStatus.INTERNAL_SERVER_ERROR);
            }

        }else{
            result.put("msg", "bad");
        }

        return new ResponseEntity<>(result, HttpStatus.OK);
    }



    /**
     * 현재 비밀번호 확인
     * @param member
     * @return
     */
    @RequestMapping(value = "/member/current", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Boolean> getCurrentMember(@RequestBody Member member) {

        member.setCurrentMemId(getCurrentUser().getIdx());
        Member result = memberService.getMember(member);
        boolean chkPwd = false;
        if(result != null){
            chkPwd = passwordEncoder.matches(member.getPassword(), result.getPassword());    // 비밀번호 일치 확인
        }

        return new ResponseEntity<>(chkPwd, HttpStatus.OK);
    }

    /**
     * 회원정보 수정
     * @param member
     * @param bindingResult
     * @return
     */
    @RequestMapping(value = "/member/current", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> updateCurrentMember(@RequestBody Member member, BindingResult bindingResult) {
        int result = 0;
        member.setCurrentMemId(getCurrentUser().getIdx());
        member.setId(getCurrentUser().getId());

        if(isValid(member, bindingResult)) {    // validate check

            // 회원정보 수정
            result = memberService.updateMember(member);

            // 비밀번호 수정
            if(StringUtils.isNotEmpty(member.getNewPassword())) {
                Map<String, Object> param = new HashMap<>();
                param.put("currentMemId", member.getCurrentMemId());
                param.put("NewPassword", passwordEncoder.encode(member.getNewPassword()));
                memberService.updateCurrentMemberPassword(param);
            }
        }

        if(result > 0) {

            // 세션에 정보 업데이트
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            Member currentMember = (Member) authentication.getPrincipal();
            currentMember.setEmail(member.getEmail());
            if(member.getMobile_phone() != null) {
                currentMember.setMobile_phone(member.getMobile_phone());
            }
            currentMember.setEmail_reception_flag(member.getEmail_reception_flag());
            currentMember.setSms_reception_flag(member.getSms_reception_flag());

            return ResponseEntity.ok().build();
        } else {
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * 회원탈퇴
     * @return Void
     */
    @RequestMapping(value = "/member/current", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> leaveCurrentMember() {

        Member member = new Member();
        member.setCurrentMemId(getCurrentUser().getIdx());
        int result = memberService.deleteMember(member);

        if(result > 0){

            SecurityUtils.signout();

            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }

    }

    /**
     * 비밀번호 정기 변경
     * @return
     */
    @RequestMapping(value = "/member/after", method = RequestMethod.POST)
    public ResponseEntity<Void> afterPwChange(){

        Member member = new Member();
        member.setCurrentMemId(getCurrentUser().getIdx());

        int result = memberService.setPwChangeAfter(member);

        if(result > 0){
            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

    /**
     * 회원정보수정에서 휴대폰 재인증
     * @param member
     * @return
     */
    @RequestMapping(value= "/member/modify_auth", method= RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Void> updateCurrentMemberAuth(@RequestBody Member member) {
        int result = 0;

        member.setCurrentMemId(getCurrentUser().getIdx());  // 현재아이디

        // 인증정보 업데이트
        result = memberService.setAuthUpdate(member);

        if(result > 0){

            // 세션에 정보 업데이트
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            Member currentMember = (Member) authentication.getPrincipal();
            currentMember.setName(member.getName());    // 이름
            currentMember.setMobile_phone(member.getMobile_phone());    // 휴대전화번호

            return ResponseEntity.ok().build();
        }else{
            return ResponseEntity.badRequest().build();
        }
    }

}
