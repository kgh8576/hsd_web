package kr.co.hsd.core.member.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by lee young eun on 2017-07-21.
 */
@Alias("member")
@Data
public class Member extends Base implements UserDetails {

    /** 회원 idx */
    private Long idx;

    /** 아이디 */
    @NotNull
    private String id;

    /** 이름 */
    @NotNull
    private String name;

    /** 비밀번호 */
    private String password;

    /** 이메일 */
    @Pattern(regexp="^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$")
    @NotNull
    private String email;

    /** 휴대전화번호 */
    @NotNull
    private String mobile_phone;

    /** 중복가입정보 */
    private String di;

    /** 휴대폰 본인인증 번호 */
    private String mobile_certification_req_num;

    /** 회원상태 (01:정상, 02:재가입, 99:탈퇴) */
    private String status;

    /** 개인정보수집 및 이용 동의여부 */
    private String agree_personal;

    /** 이용약관 동의여부 */
    private String agree_use;

    /** 제3자 정보제공동의여부 */
    private String agree_3rd;

    /** 문자수신여부 */
    private String sms_reception_flag;

    /** 이메일 수신여부 */
    private String email_reception_flag;

    /** 본인인증여부 */
    private String certification_flag;

    /** 휴대폰 인증 */
    private String mobile_certification_flag;

    /** 마지막 비밀번호 수정일시 */
    private Date last_pw_upd_dttm;

    /** 비밀번호 수정 연기 기한 */
    private Date month_pw_upd_dttm;

    /** 탈퇴 사유 */
    private String quit_reason;

    /** 탈퇴 여부 (y or n) */
    @Pattern(regexp="^(Y|N)$")
    private String quit_flag;

    /** 탈퇴 일시 */
    private Date quit_dttm;

    /** 등록 일시 */
    private Date reg_dttm;

    /** 수정 일시 */
    private Date upd_dttm;

    /** 가입경로 */
    private String join_path;

    /** 패스워드 틀린횟수 */
    private int wrong_pw_cnt;

    /** 마지막 로그인 일시 */
    private Date last_login_dttm;

    /** 휴면전환 일시 */
    private Date sleep_dttm;

    /** 새로운 패스워드 */
    private String NewPassword;

    /** UserDetails implements */
    private Set<MemberRole> authorities = new HashSet();


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return id;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
