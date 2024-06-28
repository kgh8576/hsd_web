package kr.co.hsd.core.sms.domain;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.Date;

/**
 * Created by lee young eun on 2017-07-28.
 */
@Alias("sms")
@Data
public class Sms {

   /** 상태값 (발송요청0, 전송중1, 전송2, 결과수신3) */
   private Long cur_state;

   /** 메시지 전송시각각*/
   private Date sent_date;

   /** 수신번호 (하이픈 제외) */
   private String call_to;

   /** 발신번호 (하이픈 제외) */
   private String call_from;

   /** 메시지 본문 */
   private String sms_txt;

   /** 메시지 type (4:sms, 5:url, 6:mms, 7:barcode) */
   private Long msg_type;
}
