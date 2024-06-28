package kr.co.hsd.core.goods.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

/**
 * Created by lee young eun on 2017-08-26.
 */
@Alias("goods")
@Data
public class Goods {

    /** 인덱스 */
    private int idx;

    /** 메뉴제목 */
    private String title;

    /** 메뉴 부제목 */
    private String subTitle;

    /** 가격 */
    private int price;

    /** 반찬구성갯수 */
    private int sideDishCount;

    /** 시리즈명 */
    private String series;

    /** 메뉴 이미지 경로 */
    private String imagePath;

    /** 열량 */
    private float calorie;

    /** 난류 */
    private int al1;

    /** 우유 */
    private int al2;

    /** 메밀 */
    private int al3;

    /** 땅콩 */
    private int al4;

    /** 대두 */
    private int al5;

    /** 밀 */
    private int al6;

    /** 고등어 */
    private int al7;

    /** 게 */
    private int al8;

    /** 돼지고기 */
    private int al9;

    /** 복숭아 */
    private int al10;

    /** 토마토 */
    private int al11;

    /** 새우 */
    private int al12;

    /** 아황산류 */
    private int al13;

    /** 호두 */
    private int al14;

    /** 닭고기 */
    private int al15;

    /** 쇠고기 */
    private int al16;

    /** 오징어 */
    private int al17;

    /** 조개류 */
    private int al18;

    /** 옵션메뉴 인덱스 */
    private String optionMenu;

    /** 웹카테고리 1depth */
    private int cate1;

    /** 웹카테고리 2depth */
    private int cate2;

    /** 신규 매뉴 */
    private String newYn;

    /** 상세이미지 */
    private List<String> detailImg;

    /** 추가가능 서브메뉴 */
    private List<GoodsSub> subMenu;

    /** 원산지 */
    private List<GoodsOrigin> origins;
}
