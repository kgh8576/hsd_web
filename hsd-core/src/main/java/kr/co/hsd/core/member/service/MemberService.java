package kr.co.hsd.core.member.service;

import kr.co.hsd.core.member.domain.Member;
import kr.co.hsd.core.member.repository.MemberRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-07-24.
 */
@Service("memberService")
public class MemberService {

    private final Logger log = LoggerFactory.getLogger(MemberService.class);

    @Inject
    private MemberRepository memberRepository;

    /**
     * 로그인, 아이디 중복확인
     * @param id, used(true 일경우 탈퇴회원도 조회)
     * @return Member
     */
    @Transactional(readOnly = true)
    public Member getMemberByAccountId(String id, Boolean used) {

        return memberRepository.getMemberByAccountId(id, used);
    }

    /**
     * 회원 상세 조회
     * @param member
     * @return Member
     */
    @Transactional(readOnly = true)
    public Member getMember(Member member) {

        return memberRepository.getMember(member);
    }

    /**
     * 회원 입력
     * @param member
     * @return int
     */
    @Transactional
    public int insertMember(Member member) {

        return memberRepository.insertMember(member);
    }

    /**
     * 회원 수정
     * @param member
     * @return int
     */
    @Transactional
    public int updateMember(Member member) {

        return memberRepository.updateMember(member);
    }

    /**
     * 회원 패스워드 변경
     * @param param (신규비밀번호)
     * @return int
     */
    @Transactional
    public int updateCurrentMemberPassword(Map<String, Object> param) {
        return memberRepository.updateCurrentMemberPassword(param);
    }

    /**
     * 회원 탈퇴
     * @param member
     * @return int
     */
    @Transactional
    public int deleteMember(Member member) {

        return memberRepository.updateMemberAsDelete(member);
    }

    /**
     * 회원 가입여부 확인
     * @param member
     * @return
     */
    @Transactional
    public List<Member> getMemberForFindInfo(Member member) {
        return memberRepository.getMemberFind(member);
    }

    /**
     * 아이디 패스워드 찾기
     * @param param (mode, id, name, email)
     * @return
     */
    public Member getFindMember(Map<String, String> param){
        if("pw".equals(param.get("mode"))){
           return memberRepository.getFindPw(param);
        }else{
           return memberRepository.getFindId(param);
        }
    }

    /**
     * 회원 접속일 등록
     * @return member
     */
    public int updateMemberAsLastLoginDt(Member member) {
        return memberRepository.updateMemberAsLastLoginDt(member);
    }

    /**
     * 비밀번호 변경기간체크
     * @param member
     * @return
     */
    public Date getPwChange(Member member) {
        return memberRepository.getPwChange(member);
    }

    /**
     * 비밀번호 나중에 변경하기
     * @param member
     * @return
     */
    public int setPwChangeAfter(Member member){
        return memberRepository.setPwChangeAfter(member);
    }

    /**
     * 휴대폰 인증정보 수정
     * @param member
     * @return
     */
    public int setAuthUpdate(Member member) { return memberRepository.setAuthUpdate(member); }

    /**
     * 비밀번호 틀린횟수 증가
     * @param username
     * @return
     */
    public int increaseWrongPasswordCount(String username) {
        return memberRepository.increaseWrongPwCnt(username);
    }

    /**
     * 비밀번호 틀린횟수 조회
     * @param id
     * @return
     */
    public int getWrongPwCnt(String id) {
        return memberRepository.getWrongPwCnt(id);
    }

    /**
     * 비밀번호 틀린횟수 리셋
     * @param id
     */
    public int resetWrongPwCnt(String id) {
        return memberRepository.resetWrongPwCnt(id);

    }

    /**
     * 이름과 전번으로 멤버찾기
     * @param member
     * @return
     */
    public Member findByMember(Member member) {
        return memberRepository.findByMember(member);
    }

    public int updateMemberLastLoginTime(Member member) {
        return memberRepository.updateMemberLastLoginTime(member);
    }

    /**
     * 휴면해제
      * @param member
     */
    public int awakeSleepMember(Member member) {
        return memberRepository.awakeSleepMember(member);
    }
}
