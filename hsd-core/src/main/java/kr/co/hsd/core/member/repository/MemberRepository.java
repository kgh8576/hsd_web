package kr.co.hsd.core.member.repository;

import kr.co.hsd.core.config.support.DefaultMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import kr.co.hsd.core.member.domain.Member;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-07-24.
 * Description : 회원 Repository 인터페이스
 */
@DefaultMapper
@Repository
public interface MemberRepository {

    /**
     * 로그인, 아이디 중복확인
     * @param id, used
     * @return Member
     */
    Member getMemberByAccountId(@Param("id") String id, @Param("used") Boolean used);

    /**
     * 회원 조회
     * @param member
     * @return Member
     */
    Member getMember(Member member);

    /**
     * 회원 등록
     * @param member
     * @return int
     */
    int insertMember(Member member);

    /**
     * 회원 수정
     * @param member
     * @return int
     */
    int updateMember(Member member);

    /**
     * 회원 패스워드 변경
     * @param param (신규비밀번호)
     * @return int
     */
    int updateCurrentMemberPassword(Map<String, Object> param);

    /**
     * 회원 탈퇴 처리
     * @param member
     * @return int
     */
    int updateMemberAsDelete(Member member);


    /**
     * 회원 가입여부 확인
     * @param member
     * @return
     */
    List<Member> getMemberFind(Member member);

    /**
     * 아이디 찾기
     * @param param
     * @return
     */
    Member getFindId(Map<String, String> param);

    /**
     * 패스워드 찾기
     * @param param
     * @return
     */
    Member getFindPw(Map<String, String> param);

    /**
     * 회원 최종 접속일 등록
     * @param member
     * @return
     */
    int updateMemberAsLastLoginDt(Member member);

    /**
     * 비밀번호 변경 기간 체크
     * @param member
     * @return
     */
    Date getPwChange(Member member);

    /**
     * 비밀번호 나중에 변경하기
     * @param member
     * @return
     */
    int setPwChangeAfter(Member member);

    /**
     * 휴대폰 인증정보 수정
     * @param member
     * @return
     */
    int setAuthUpdate(Member member);

    /**
     * 비밀번호 틀린횟수 증가
     * @param username
     * @return
     */
    int increaseWrongPwCnt(String username);

    /**
     * 비밀번호 틀린횟수 조회
     * @param id
     * @return
     */
    int getWrongPwCnt(String id);

    /**
     * 비밀번호 틀린횟수 리셋
     * @param id
     * @return
     */
    int resetWrongPwCnt(String id);

    /**
     * 이름과 전번으로 멤버찾기
     * @param member
     * @return
     */
    Member findByMember(Member member);

    /**
     * 회원 마지막 접속일 업데이트
     * @param member
     * @return
     */
    int updateMemberLastLoginTime(Member member);

    /**
     * 휴면해제
     * @param member
     * @return
     */
    int awakeSleepMember(Member member);
}
