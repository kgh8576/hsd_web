package kr.co.hsd.core.board.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.Date;

/**
 * Created by lee young eun on 2017-08-07.
 */
@Alias("grouporder")
@Data
public class GroupOrder {
    private int idx;

    @NotNull
    private String name;

    @Pattern(regexp="^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$")
    @NotNull
    private String email;

    @NotNull
    private String hp;

    @NotNull
    private String title;

    private String contents;

    private String attachFile;

    private String attachName;

    private Date regdt;

    /** 마케팅 및 광고에의 활용 */
    private String marketing_agree = "N";

    /** 가맹점 관리 */
    private String store_agree = "N";
}
