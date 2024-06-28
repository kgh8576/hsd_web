package kr.co.hsd.core.board.domain;

import lombok.Data;

@Data
public class FAQCategory {
    int idx;
    String category_code;
    String category_name; //faq 카테고리(주문앱:app, 계정:account, 결제:payment, 쿠폰:coupon, 음식:food, 사회공헌:contribution, 점포:store)
}
