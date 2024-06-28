package kr.co.hsd.core.board.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@EqualsAndHashCode(callSuper = true)
@Data
public class FAQ extends Base {

    Long idx;   //faq idx
    int categoryIdx;
    String categoryName;
    String title;   //faq 타이틀
    String contents;    //faq 내용
    Long sort;  //순서
    String category_code;
    String category_name;
    String question_type;

    Date regDttm;  //수정 일시
    Date updDttm;  //등록 일시

    /** 이전글 번호 */
    private Long prevIdx;

    /** 이전글 제목 */
    private String prevTitle;

    /** 다음글 번호 */
    private Long nextIdx;

    /** 다음글 제목 */
    private String nextTitle;
}
