package kr.co.hsd.core.board.service;

import kr.co.hsd.core.board.domain.*;
import kr.co.hsd.core.board.repository.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

/**
 * Created by lee young eun on 2017-08-07.
 */
@Service("customerService")
public class CustomerService {

    private final Logger log = LoggerFactory.getLogger(CustomerService.class);

    @Inject
    private CustomerVoiceRepository customerVoiceRepository;

    @Inject
    private GroupOrderRepository groupOrderRepository;

    @Inject
    private PartnersRepository partnersRepository;

    @Inject
    private OnlineQnaRepository onlineQnaRepository;

    @Inject
    private BriefingRepository briefingRepository;

    @Inject
    private EventOrderRepository eventOrderRepository;


    /**
     * 고객의 소리 등록하기
     * @param customerVoice
     * @return
     */
    public int insertCustomerVoice(CustomerVoice customerVoice) {
        return customerVoiceRepository.insertBoard(customerVoice);
    }

    /**
     * 단체주문하기
     * @param groupOrder
     * @return
     */
    public int insertGroupOrder(GroupOrder groupOrder) {
        return groupOrderRepository.insertBoard(groupOrder);
    }

    /**
     * 협력업체 신청하기
     * @param partners
     * @return
     */
    public int insertPartners(Partners partners) {
        return partnersRepository.insertBoard(partners);
    }

    /**
     * 온라인 창업문의
     * @param onlineQna
     * @return
     */
    public int insertQna(OnlineQna onlineQna){
        return onlineQnaRepository.insertQna(onlineQna);
    }

    /**
     * 창업설명회 참석일 조회
     *
     * @return List<BriefingDate>
     * */
    public List<BriefingDate> listBriefingDate() {
        List<BriefingDate> list= briefingRepository.listBriefingDate();
        return list;
    }

    /**
     * 참업설명회 예약
     * @param briefing
     * @return
     */
    public int insertBriefing(Briefing briefing){
        return briefingRepository.insertBriefing(briefing);
    }

    /**
     * 이벤트 신청하기
     * @param eventOrder
     * @return
     */
    public int insertEventOrder(EventOrder eventOrder) {
        return eventOrderRepository.insertBoard(eventOrder);
    }


    /**
     * 게시판 카운트 조회
     * @param customerVoice
     * @return int
     */
    @Transactional(readOnly = true)
    public int listCustomerVoiceCnt(CustomerVoice customerVoice) {
        return customerVoiceRepository.listCustomerVoiceCnt(customerVoice);
    }

    /**
     * 게시판 목록 조회
     * @param customerVoice
     * @return List<CustomerVoice>
     */
    @Transactional(readOnly = true)
    public List<CustomerVoice> listCustomerVoice(CustomerVoice customerVoice) {
        return customerVoiceRepository.listCustomerVoice(customerVoice);
    }

    /**
     * 게시판 상세 조회
     * @param idx
     * @return CustomerVoice
     */
    @Transactional(readOnly = true)
    public CustomerVoice getCustomerVoice(Long idx) {
        return customerVoiceRepository.getCustomerVoice(idx);
    }

    /**
     * 이전글 조회
     * @param map
     * @return
     */
    @Transactional(readOnly = true)
    public CustomerVoice getPrevCustomerVoice(Map<String, Long> map) {
        return customerVoiceRepository.getPrevCustomerVoice(map);
    }

    /**
     * 다음글 조회
     * @param map
     * @return
     */
    @Transactional(readOnly = true)
    public CustomerVoice getNextCustomerVoice(Map<String, Long> map) {
        return customerVoiceRepository.getNextCustomerVoice(map);
    }

    public void deleteCustomerVoice(Long idx) {
        customerVoiceRepository.deleteCustomerVoice(idx);
    }
}
