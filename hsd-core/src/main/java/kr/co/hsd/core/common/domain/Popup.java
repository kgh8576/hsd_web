package kr.co.hsd.core.common.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Alias("popup")
@Data
public class Popup {

    /** 인덱스 */
    private int idx;

    /** 이미지 경로 */
    private String imagePath;

    /** 링크 */
    private String link;

    /** 타겟 */
    private String target;

}
