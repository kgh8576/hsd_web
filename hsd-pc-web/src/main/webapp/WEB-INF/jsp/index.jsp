﻿<html>
<head>
    <title>한솥도시락</title>
	<meta name="naver-site-verification" content="43e6746b61b42a8c972fd8ad4654d001a33280e4" />
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.main.css" />
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.pop.css" />

    <script type="text/javascript" src="${cp}/assets/js/ui.main.js"></script>

    <script>
    $(function(){
        visualBackground();
    });
    $(window).resize(function() {
        visualBackground();
    });

    function visualBackground(){
        if(window.innerWidth <= 768){
            $(".visual_bg.vi_01").each(function(){
                var url = $(this).data("mobile-url");
               $(this).css('backgroundImage', "url(" + url + ")");
            });
        }else{
            $(".visual_bg.vi_01").each(function(){
                var url = $(this).data("web-url");
                $(this).css('backgroundImage', "url(" + url + ")");
            });
        }
    }
    </script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-43326926-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-43326926-1');
    </script>

    <!-- HSD GA4 Google tag (gtag.js) 2024.05.28 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-H1K45E95JV"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'G-H1K45E95JV');
	</script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'AW-864658366');
    </script>

    <!-- kakao pixcel -->
    <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
    <script type="text/javascript">
        kakaoPixel('5575357302971415199').pageView();
    </script>

    <!-- Facebook Pixel Code -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window,document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '241666853119648');
        fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->
</head>
<body>

<div class="content main">
    <!-- group_order -->
    <section class="main_wrap">
        <!-- main_visual -->
        <div class="main_visual_wrap mo_tr swiper-container">
            <div class="swiper-wrapper">
                <!-- visual01 -->
                <c:forEach var="banner" items="${banners}">
                <div class="visual_bg vi_01 swiper-slide"
                     data-mobile-url="${banner.imagePathM}" data-web-url="${banner.imagePath}"
                >
                    <c:if test="${not empty banner.link}">
                    <a href="${banner.link}" class="view_blind"><span class="blind">자세히보기</span></a>
                    </c:if>
                </div>
                </c:forEach>
                <!-- //visual01 -->
            </div>
            <!-- Pagination -->
            <div class="pagi_wrap">
                <div class="pagi_cont">
                    <div class="swiper-pagination"></div>
                    <!-- play,stop -->
                    <div class="btn_ps">
                        <a href="javascript:toggleSwiperAutoplay();"><span class="blind">swiper start/stop</span></a>
                    </div>
                    <!-- //play,stop -->
                </div>
            </div>
            <!-- //Pagination -->
        </div>
        <!-- //main_visual -->
        <!-- content01 -->
        <div class="main_cont_01">
            <div class="main_cont_wrap mo_tr">
                <!-- 전체메뉴 -->
                <div class="area_sc first">
                    <a href="${cp}/menu/menu_list" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
                            <img src="${cp}/assets/images/main/main_img_01.jpg" alt="전체메뉴 이미지">
                        </span>
                        <figcaption>
                            <p class="sc_tit fz_02">
                                <span class="s_block">가격 이상의 가치가 담긴</span>
                                <span class="s_block">다양한 메뉴를 확인해 보세요</span>
                            </p>
                            <span class="sc_txt">한솥 메뉴</span>
                        </figcaption>
                    </figure>
                </div>
                <!-- //전체메뉴 -->
                <!-- 주변점포찾기 -->
                <div class="area_sc">
                    <a href="${cp}/store/store_find" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
                            <img src="${cp}/assets/images/main/main_img_02.jpg" alt="주변점포찾기 이미지">
                        </span>
                        <figcaption>
                            <p class="sc_tit fz_02">
                                <span class="s_block">갓 지은 한끼가 기다리고 있는</span>
                                <span class="s_block">가까운 한솥 매장을 찾아보세요</span>
                            </p>
                            <span class="sc_txt">주변점포찾기</span>
                        </figcaption>
                    </figure>
                </div>
                <!-- //주변점포찾기 -->
            </div>
        </div>
        <!-- //content01 -->
        <!-- content02 -->
        <div class="main_cont_02">
            <div class="main_cont_wrap mo_tr">
                <!-- 한솥 intro -->
                <div class="main_intro">
                    <h2 class="h2_int fz_01">
                        <span class="s_block">가맹점주에게도</span>
                        <span class="s_block">든든한 한솥입니다</span>
                    </h2>
                    <p class="int_tit">
                        <span class="s_block">점주님들의 꿈을 실현시켜 드리기 위해</span>
                        <span class="s_block">가맹점주와 성공까지 동행하는 한솥!</span>
                        <span class="s_block">상담부터 개업까지 모든 희로애락을 함께 합니다.</span>
                    </p>
                </div>
                <!-- //한솥 intro -->
                <div class="to_wrap">
                    <!-- why한솥 가맹점 -->
                    <div class="area_sc first">
                        <a href="${cp}/franchise/hansot_store" class="sc_link"></a>
                        <figure class="sc_wrap">
                            <span class="sc_img">
                                <img src="${cp}/assets/images/main/main_img_03.jpg" alt="why한솥 가맹점 이미지">
                            </span>
                            <figcaption>
                                <p class="sc_tit fz_02">
                                    <span class="s_block">한솥은 언제나 고객과 점주님들의</span>
                                    <span class="s_block">이익을 먼저 생각합니다</span>
                                </p>
                                <span class="sc_txt">Why 한솥 가맹점</span>
                            </figcaption>
                        </figure>
                    </div>
                    <!-- //why한솥 가맹점 -->
                    <!-- 성공수기 -->
                    <div class="area_sc">
                        <a href="${cp}/franchise/success" class="sc_link"></a>
                        <figure class="sc_wrap">
                            <span class="sc_img">
                                <img src="${cp}/assets/images/main/main_img_04.jpg" alt="성공수기 이미지">
                            </span>
                            <figcaption>
                                <p class="sc_tit fz_02">
                                    <span class="s_block">한솥과 함께하는 가맹점주들의</span>
                                    <span class="s_block">성공 스토리입니다</span>
                                </p>
                                <span class="sc_txt">성공수기</span>
                            </figcaption>
                        </figure>
                    </div>
                    <!-- //성공수기 -->
                </div>
            </div>
        </div>
        <!-- //content02 -->
        <!-- content03 -->
        <div class="main_cont_03">
            <!-- full bg -->
            <div class="main_hansot">
                <div class="main_hansot_bg">
                </div>
                <!-- content -->
                <div class="main_cont_wrap">
                    <!-- text -->
                    <div class="main_info mo_version">
                        <h2 class="h2_info fz_01">
                            <span class="s_block">든든한 솥밥을 위해</span>
                            <span class="s_block">한솥이 지키고,</span>
                            <span class="s_block">키워가는 것들</span>
                        </h2>
                        <p class="info_tit">
                            <span class="s_block">한솥은 '따끈한 도시락으로 지역사회에 공헌한다' 라는</span>
                            <span class="s_block">기업이념 아래, 고객 이익을 최우선으로 하며 엄선된</span>
                            <span class="s_block">좋은 식재료만 사용하는 대한민국 외식종합기업 시장을</span>
                            <span class="s_block">리드하는 글로벌 종합외식기업 입니다.</span>
                        </p>
                        <!-- btn -->
                        <div class="btn_wrap btn_info">
                            <span class="btn btn_st04"><a href="${cp}/brand/philosophy" class="c_06">브랜드 철학</a></span>
                        </div>
                        <!-- //btn -->
                    </div>
                    <!-- //text -->
                </div>
                <!-- content -->
            </div>
            <!-- //full bg -->
        </div>
        <!-- //content03 -->
        <!-- content04 -->
        <div class="main_cont_04">
            <div class="main_cont_wrap">
                <div class="area_sc">
                    <a href="${cp}/menu/material" class="sc_link"></a>
                    <figure class="sc_wrap">
                        <span class="sc_img">
                            <img src="${cp}/assets/images/main/main_img_05.jpg" alt="식재료 이미지">
                        </span>
                        <figcaption>
                            <h2 class="h2_mt fz_01">
                                <span class="s_block">식재료 앞에서는</span>
                                <span class="s_block">한없이</span>
                                <span class="s_block">까탈스럽습니다</span>
                            </h2>
                            <p class="sc_tit">
                                <span class="s_block">맑고 깨끗한 자연 환경속에서 재배된 식재료가</span>
                                <span class="s_block">아니면 한솥이 될 수 없습니다.</span>
                                <span class="s_block">모든 식재료는 고객분들이 안심하고 드실 수 있도록</span>
                                <span class="s_block">엄격한 기준 아래 선별됩니다.</span>
                            </p>
                            <span class="sc_txt">식재료이야기</span>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
        <!-- //content04 -->
    </section>
    <!-- //group_order -->
</div>

<jsp:include page="/WEB-INF/jsp/more/main_more.jsp" />

<script type="text/javascript">
    //mainSwiper
    var mainSwiper = new Swiper('.main_visual_wrap.swiper-container', {
        simulateTouch: false,
        pagination: '.swiper-pagination',
        paginationClickable: true,
        loop: true,
        autoplay: 5000,
        autoplayDisableOnInteraction: false
    });

    // Toggle mainSwiper Autoplay
    function toggleSwiperAutoplay() {
        if(mainSwiper.autoplaying) {
            // 중단
            mainSwiper.stopAutoplay();
            $('.btn_ps').addClass('on');
        } else {
            // 시작
            mainSwiper.startAutoplay();
            $('.btn_ps').removeClass('on');
        }
    }
</script>
</body>
</html>