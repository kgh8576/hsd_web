package kr.co.hsd.core.common.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Alias("banner")
@Data
public class Banner {

    /** 인덱스 */
    private int idx;

    /** 구분(1: 메인비주얼, 2:메뉴) */
    private int gubun;

    /** 내용 */
    private String title;

    /** 이미지 경로 */
    private String imagePath;

    /** 모바일 이미지 경로 */
    private String imagePathM;

    /** 링크 */
    private String link;
}
