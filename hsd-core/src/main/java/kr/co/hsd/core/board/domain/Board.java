package kr.co.hsd.core.board.domain;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.apache.ibatis.type.Alias;

import kr.co.hsd.core.common.Base;
import lombok.Data;

/**
 * Created by lee young eun on 2017-07-31.
 */
@Alias("board")
@Data
public class Board extends Base {

    /** 인덱스 */
    private Long idx;

    /** 게시판코드 */
    @NotNull
    private String bid;

    /** 카테고리 */
    private int cate = 0;

    /** 카테고리명 */
    private String cateName;

    /** 매장코드 */
    private int store;

    /** 매장명 */
    private String storeName;

    /** 제목 */
    @NotNull
    private String title;

    /** 내용 */
    private String contents;

    /** 간략 설명 */
    private String description;

    /** 썸네일 이미지 경로 */
    private String thumImg;

    /** 첨부파일 경로 */
    private String attachFile;

    /** 첨부파일명 */
    private String attachName;

    /** 링크 */
    private String link;

    /** 출처/점주서명 */
    private String etc;

    /** 조회수 */
    private int hits = 0;

    /** 사용자 노출여부 */
    @Pattern(regexp="^(Y|N)$")
    private String showYn;

    /** 작성일 */
    private Date regDt;

    /** 이벤트 시작일 */
    private Date startDt;

    /** 이벤트 종료일 */
    private Date endDt;

    /** 정렬 컬럼 */
    private String orderKey;

    /** 정렬순서 */
    private String orderValue;

    /** 이전글 번호 */
    private Long prevIdx;

    /** 이전글 제목 */
    private String prevTitle;

    /** 다음글 번호 */
    private Long nextIdx;

    /** 다음글 제목 */
    private String nextTitle;
    
    
}
