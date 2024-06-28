package kr.co.hsd.web.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

import kr.co.hsd.core.member.service.MemberService;
import kr.co.hsd.web.exception.WrongPwCountOverException;

public class HsdDaoAuthenticationProvider extends DaoAuthenticationProvider {

    @Autowired
    MemberService memberService;

    @Override
    protected void additionalAuthenticationChecks(UserDetails userDetails, UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
        Object salt = null;
        if (getSaltSource() != null) {
            salt = getSaltSource().getSalt(userDetails);
        }

        if (authentication.getCredentials() == null) {
            this.logger.debug("Authentication failed: no credentials provided");
            throw new BadCredentialsException(this.messages.getMessage("AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
        } else {

            // 비밀번호 틀린횟수 조회
            int wrongPwCnt = memberService.getWrongPwCnt(userDetails.getUsername());

            if(wrongPwCnt >= 5) {
                throw new WrongPwCountOverException(this.messages.getMessage("AbstractUserDetailsAuthenticationProvider.WrongPwCountOver", "Wrong Password Count Over 5 Times"));
            } else {
                String presentedPassword = authentication.getCredentials().toString();
                if (!getPasswordEncoder().isPasswordValid(userDetails.getPassword(), presentedPassword, salt)) {
                    this.logger.debug("Authentication failed: password does not match stored value");

                    //비밀번호 오류횟수 증가시키기
                    memberService.increaseWrongPasswordCount(userDetails.getUsername());

                    throw new BadCredentialsException(this.messages.getMessage("AbstractUserDetailsAuthenticationProvider.badCredentials", "Bad credentials"));
                }
            }
        }
    }
}
