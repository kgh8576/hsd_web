package kr.co.hsd.web.security;

import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.core.member.service.MemberService;
import kr.co.hsd.web.exception.SleepAccountException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;

/**
 * Created by lee young eun on 2017-07-24.
 */
@Component("userDetailsService")
public class TssUserDetailService implements UserDetailsService {

    private final Logger log = LoggerFactory.getLogger(TssUserDetailService.class);

    @Autowired
    private MemberService memberService;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(final String username) {

        log.debug("TssUserDetailService {}", username);

        Member member = memberService.getMemberByAccountId(username, false);

        if(member.getStatus().equals("98")) {
            throw new SleepAccountException("휴면계정 입니다.");
        }

        // 없는 계정일 경우
        if(member == null){
            throw new UsernameNotFoundException(username + " 계정이 존재하지 않습니다.");
        }

        Set<GrantedAuthority> authorities = (Set<GrantedAuthority>)member.getAuthorities();
        authorities.add(new SimpleGrantedAuthority("ROLE_USER"));

        return member;
    }
}
