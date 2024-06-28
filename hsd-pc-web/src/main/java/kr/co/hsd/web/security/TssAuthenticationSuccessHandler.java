package kr.co.hsd.web.security;

import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.core.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * Created by lee young eun on 2017-07-21.
 * 로그인 성공후 처리사항
 */
@Component
public class TssAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    @Autowired
    private MemberService memberService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException, ServletException {

        // 최종 접속일 업데이트
        Member member = (Member) authentication.getPrincipal();
        memberService.updateMemberAsLastLoginDt(member);
        memberService.updateMemberLastLoginTime(member);

        // 비밀번호 틀린횟수 리셋
        memberService.resetWrongPwCnt(member.getId());

        // 비밀번호 변경기간 체크
        Date pwChangeDt = memberService.getPwChange(member);
        Date today = new Date();
        if(today.compareTo(pwChangeDt) > 0) {   // 비밀번호 변경 노티

            String redirectUrl = "/login/pw_change";
            getRedirectStrategy().sendRedirect(request, response, redirectUrl);

        } else {
            super.onAuthenticationSuccess(request, response, authentication);
        }

    }
}
