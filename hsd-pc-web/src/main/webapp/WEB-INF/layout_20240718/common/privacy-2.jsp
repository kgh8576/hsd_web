<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 개인정보 수집동의 -->
<div class="ad_wrap">
    <h4 class="h4_tit fz_02">개인정보 수집 동의</h4>
    <!-- 수집동의_홈페이지 회원가입 및 온라인 주문 -->
    <div class="area_step first">
        <dl class="agree_check">
            <dt class="fz_03">
            <p class="h5_tit">개인정보의 필수적인 사항에 대한 수집이용</p>
            <span></span>
            </dt>
            <dd>
                <div class="cont_area fz_04">
                    <span>- 개인정보 수집·이용 목적 : 각종 고지·통지 목적으로 개인정보를 처리합니다.</span>
                    <span>- 개인정보 항목 : 성명, 연락처, 이메일</span>
                    <span>- 보유기간 : 주문 처리 후 1개월</span>
                    <span>- 보유근거 : 고객문의, 요청관리, 사용자 식별</span>
                </div>
            </dd>
        </dl>
        <!-- checkbox -->
        <span class="form checkbox">
            <input type="checkbox" id="agree_01" name="agree1">
            <label for="agree_01">동의합니다</label>
            <em class="emphasis">(필수)</em>
        </span>
        <!-- //checkbox -->
    </div>
    <!-- //수집동의_홈페이지 회원가입 및 온라인 주문 -->
</div>
<!-- //개인정보 수집동의 -->
<script type="text/javascript">
    $(".cont_area").mCustomScrollbar({
        theme:"minimal-dark",
        scrollInertia:400
    });
</script>
