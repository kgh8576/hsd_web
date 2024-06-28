package kr.co.hsd.core.store.domain;

import kr.co.hsd.core.common.Base;
import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.Date;

/**
 * Created by lee young eun on 2017-08-04.
 */
@Alias("store")
@Data
public class Store extends Base {

    /** 인덱스 */
    private int idx;

    /** 재장명 */
    private String name;

    /** 매장 고유 ID */
    private String storeId;

    /** 매장 전화번호 */
    private String phoneNumber;

    /** 시도코드 */
    private String sidoCode;

    /** 군구코드 */
    private String gungooCode;

    /** 매장 주소 */
    private String address;

    /** 좌석여부 (Y|N) */
    private String seatYn;

    /** 주차가능여부 (Y|N) */
    private String parkingYn;

    /** 위도 */
    private double lat;

    /** 경도 */
    private double lng;

    /** 영업시간 */
    private String businessHour;

    /** 휴점시작일시 */
    private Date closeDttmS;

    /** 휴점종료일시 */
    private Date closeDttmE;

    /** 오픈일 */
    private Date openDt;

    /** 신규 가맹점 노출 여부 */
    private String openShowYn;

    /** 오픈이벤트 */
    private String openEvent;

}
