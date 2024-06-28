package kr.co.hsd.core.board.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import javax.validation.constraints.NotNull;
import java.util.Date;

/**
 * Created by lee young eun on 2017-08-09.
 */
@Alias("briefing")
@Data
public class Briefing extends Base {

    private int idx;

    @NotNull
    private String name;

    @NotNull
    private String hp;

    private int joinLoc;

    private int joinNum;

    private String joinDate;    // 사용자에서 입력받는값

    private Date joinDt;

    private String lunchYn;

}
