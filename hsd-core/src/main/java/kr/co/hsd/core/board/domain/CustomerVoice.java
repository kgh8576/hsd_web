package kr.co.hsd.core.board.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.Date;

/**
 * Created by lee young eun on 2017-08-07.
 */
@Alias("customervoice")
@Data
public class CustomerVoice extends Base {

    private int idx;

    @NotNull
    private String name;

    @Pattern(regexp="^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$")
    @NotNull
    private String email;

    @NotNull
    private String hp;

    /** 상담내용 */
    @NotNull
    private int cate;

    /** 점포명 */
    @NotNull
    private String store;

    @NotNull
    private String title;

    private String cateName;

    private int resStatus;

    // Todo member idx 추후 관계맺을지 생각해봐야함 임시로 하느라 관계 못맺음
    private Long memberIdx;

    private String contents;

    private String resContents;

    private String attachFile;

    private String attachName;

    private Date regdt;
    private Date resdt;

    /** 마케팅 및 광고에의 활용 */
    private String marketing_agree = "N";

    /** 가맹점 관리 */
    private String store_agree = "N";

    private boolean agreeEmail;

    private boolean agreeMobile;


    /** 이전글 번호 */
    private Long prevIdx;

    /** 이전글 제목 */
    private String prevTitle;

    /** 다음글 번호 */
    private Long nextIdx;

    /** 다음글 제목 */
    private String nextTitle;
}
