package kr.co.hsd.core.board.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.Date;

/**
 * Created by lee young eun on 2017-07-31.
 */
@Alias("notice")
@Data
public class Notice extends Base {

    /** 인덱스 */
    private Long idx;

    /** 제목 */
    @NotNull
    private String title;

    /** 내용 */
    private String contents;

    /** 조회수 */
    private int hits = 0;

    /** 사용여부 */
    @Pattern(regexp="^(Y|N)$")
    private String useFlag;

    /** 수정일시 */
    private Date updDttm;

    /** 작성일 */
    private Date regDttm;

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
