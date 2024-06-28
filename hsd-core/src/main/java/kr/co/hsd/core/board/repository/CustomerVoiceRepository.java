package kr.co.hsd.core.board.repository;

import kr.co.hsd.core.board.domain.CustomerVoice;
import kr.co.hsd.core.config.support.DefaultMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-08-07.
 */
@DefaultMapper
@Repository
public interface CustomerVoiceRepository {


    /**
     * 고객의소리 등록하기
     * @param customerVoice
     * @return
     */
    int insertBoard(CustomerVoice customerVoice);

    /**
     * 게시판 카운트 조회
     * @param customerVoice 조회 조건
     * @return int
     */
    int listCustomerVoiceCnt(CustomerVoice customerVoice);

    /**
     * 게시판 목록 조회
     * @param customerVoice 조회 조건
     * @return List<CustomerVoice>
     */
    List<CustomerVoice> listCustomerVoice(CustomerVoice customerVoice);

    /**
     * 게시판 조회
     * @param idx
     * @return CustomerVoice
     */
    CustomerVoice getCustomerVoice(@Param("idx") Long idx);

    /**
     * 이전글 조회
     * @param map
     * @return
     */
    CustomerVoice getPrevCustomerVoice(Map<String, Long> map);

    /**
     * 다음글 조회
     * @param map
     * @return
     */
    CustomerVoice getNextCustomerVoice(Map<String, Long> map);

    void deleteCustomerVoice(Long idx);
}
