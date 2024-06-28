package kr.co.hsd.core.member.domain;

import org.springframework.security.core.GrantedAuthority;

/**
 * Created by lee young eun on 2017-07-24.
 */
public class MemberRole implements GrantedAuthority {
    private String role;

    public MemberRole(String role) {
        this.role = role;
    }

    @Override
    public String getAuthority() {
        return role;
    }
}
