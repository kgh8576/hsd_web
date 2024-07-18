<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- popup -->
<c:if test="${popups != null and popups.size() > 0}">
<div class="main-pop" id="pop">
    <div class="main-area">
        <div class="main-area-cont">
            <div class="main-slide swiper-container">
                 <div class="swiper-wrapper">
                    <c:forEach var="popup" items="${popups}">
                    <div class="pop-01 swiper-slide">
                        <div class="main-pop-cont">
                            <span class="pop-img">
                                <a href="${popup.link}" target="${popup.target}">
                                    <img src="${popup.imagePath}" alt="팝업 이미지" />
                                </a>
                            </span>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <!-- Add Arrows -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <div class="pop-btn">
                <span class="btn-noview">
                    <a href="#none" class="btnp-close-oneday" idx="${popup.idx}">하루동안 보지 않기</a>
                </span>
                <span class="btn-close">
                    <a href="#none" class="btnp-close">닫기</a>
                </span>
            </div>
        </div>
    </div>
    <div class="dim"></div>
</div>

<script type="text/javascript">
    if($.cookie("main_pop") == "no") {
        $('.main-pop').css('display', 'none');
        $('body').removeClass('fixed').css('height', '');
    }

    $(document).ready(function(){
        //mainSwiper
        var popSwiper = new Swiper('.main-slide.swiper-container', {
            simulateTouch: false,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            pagination: '.swiper-pagination',
            paginationType: 'fraction',
            paginationClickable: true,
            loop: $(".main-slide.swiper-container").length > 1 ? true : false,
            //autoplay: 2500,
            autoplayDisableOnInteraction: false
        });

        //mobile_height
        $(function mobile_h() {
            if(window.innerWidth <= 1023) {
                $('body').css('height', $(window).height()).addClass('fixed');
            }
        });

        //popup
        $(function main_pop() {
            // 닫기
            $('.btnp-close').on('click', function() {
                $('.main-pop').css('display', 'none');
                $('body').removeClass('fixed').css('height', '');
            });

            // 하루동안보지않기
            $('.btnp-close-oneday').on('click',function(){
                $.cookie("main_pop", "no", {expires:1, path : "<c:url value='/' />"});
                $('.main-pop').css('display', 'none');
                $('body').removeClass('fixed').css('height', '');
            });
        });
    });
</script>
<!-- //popup -->
</c:if>