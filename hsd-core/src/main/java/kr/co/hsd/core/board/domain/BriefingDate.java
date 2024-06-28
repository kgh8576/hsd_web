package kr.co.hsd.core.board.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.Date;

/**
 * Created by kwon yee jin on 2018-02-22.
 */
@Alias("briefingDate")
@Data
public class BriefingDate extends Base{

    private int idx;

    private int type;

    private Date joinDate;
}
