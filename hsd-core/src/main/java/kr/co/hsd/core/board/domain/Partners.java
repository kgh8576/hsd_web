package kr.co.hsd.core.board.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * Created by lee young eun on 2017-08-07.
 */
@Alias("partners")
@Data
public class Partners {
    private int idx;

    /** 회사명 */
    @NotNull
    private String company;

    /** 설립일 */
    @NotNull
    private String establishdt;

    /** 대표자명 */
    @NotNull
    private String ceo;

    /** 설립형태 */
    @NotNull
    private int companyType;

    /** 사업자등록번호 */
    @NotNull
    private String companyNum;

    /** 영업신고번호 */
    @NotNull
    private String companyReportNum;

    /** 업종 */
    @NotNull
    private String companySector;

    /** 업태 */
    @NotNull
    private String companyCate;

    /** 연매출 */
    @NotNull
    private String companySales;

    /** 자본금 */
    @NotNull
    private String companyCapital;

    /** 담당자명 */
    @NotNull
    private String companyManager;

    /** 연락처 */
    @NotNull
    private String companyTel;

    /** 팩스번호 */
    @NotNull
    private String companyFax;

    /** 이메일 */
    @NotNull
    private String companyEmail;

    /** 홈페이지 */
    @NotNull
    private String homepage;

    /** 본사주소 */
    @NotNull
    private String companyAddr;

    /** 공장주소 */
    @NotNull
    private String factoryAddr;

    /** 공장대지 */
    @NotNull
    private String companyPlant1;

    /** 건평 */
    @NotNull
    private String companyPlant2;

    /** 냉동제조설비 */
    @NotNull
    private String companyPlant3;

    /** 부대시설 */
    @NotNull
    private String companyPlant4;

    /** 종업원수 */
    @NotNull
    private String employeeCount;

    /** HACCP 인증여부 */
    @NotNull
    private String haccpYn;

    /** 제품명 */
    @NotNull
    private String productName;

    /** 제품설명 */
    @NotNull
    private String productDesc;

    /** 회사설명 */
    @NotNull
    private String companyDesc;

    /** 등록일 */
    private Date regdt;

    /** 마케팅 및 광고에의 활용 */
    private String marketing_agree = "N";

    /** 가맹점 관리 */
    private String store_agree = "N";

}
