package kr.co.hsd.core.board.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

/**
 * Created by lee young eun on 2017-08-09.
 */
@Alias("onlineqna")
@Data
public class OnlineQna extends Base {

    private Long idx;

    @NotNull
    private String name;

    @Pattern(regexp="^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$")
    @NotNull
    private String email;

    @NotNull
    private String hp;

    /** 국내/해외 */
    @Pattern(regexp="^(D|A)$")
    private String storeLoc;

    private String zipcode;

    private String addr1;

    private String addr2;

    /** 점포유무 */
    @Pattern(regexp="^(Y|N)$")
    private String storeYn;

    /** 평수 */
    private float storeSpace;

    /** 창업시기 */
    private int foundationTime;

    /** 예상 창업비용 */
    private int foundationCost;

    /** 한솥 선택 경로 */
    private int selectType;

    @NotNull
    private String title;

    private String contents;

    /** 마케팅 및 광고에의 활용 */
    private String marketing_agree = "N";

    /** 가맹점 관리 */
    private String store_agree = "N";

}
