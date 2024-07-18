<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>ESG 경영</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.brand.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/animate.css"/>

    <!-- HSD GA4 Google tag (gtag.js) 2024.05.28 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-H1K45E95JV"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'G-H1K45E95JV');
	</script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-111772169-1');
    </script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

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
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
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

<div class="content brand">
    <!-- group_order -->
    <section class="brand_esg">
        <!-- 상단bg 영역 -->
        <div class="brand_visual_wrap mo_tr">
            <div class="visual_bg"></div>
        </div>
        <!-- //상단bg 영역 -->
        <!-- section01 -->
        <div class="bs_wrap section_01">
            <p class="menu_tit mo_version">SDGs</p>
            <div class="bs_cont mo_tr">
                <h2 class="h2_tit">SDGs(<span class="sdgs_small_title">Sustainable Development Goals</span>)란?</h2>
                <div class="bs_txt" style="float: none;">
                    <p>
                        지속가능 개발목표 또는 지속가능 발전목표를 뜻함.
                        2015년 만료된 새천년발전목표(Millennium Development Goals, MDGs)의 후속 목표로 채택되었다.
                    </p>
                    <p>
                        슬로건은 <strong>‘단 한 사람도 소외되지 않는 것(Leave no one behind)’</strong>으로, 2016년부터 2030년까지
                        선진국과 개발도상국이 함께 이행한다. 2030 지속가능발전의제(Transforming our world: the 2030
                        Agenda for Sustainable Development)라고도 한다.
                    </p>
                    <p>
                        UN에서 2015년에 채택된 의제로, 2030년까지 이행하며, 17대 목표, 169개 세부목표, 230개
                        지표를 담고 있다.
                    </p>
                </div>
            </div>
        </div>
        <!-- section02 -->
        <div class="bs_wrap section_02">
            <div class="bs_cont">
                <h2 class="h2_tit">SDGs 17대 목표 내용</h2>
                <img src="${cp}/assets/images/brand/sdgs.png" alt="SDGs 17대 목표 내용" style="width: 100%;"/>
            </div>
        </div>
        <!-- //group_order -->
    </section>


</div>

<jsp:include page="/WEB-INF/jsp/more/brand_more.jsp"/>

<script type="text/javascript" src="${cp}/assets/js/jquery.viewportchecker.min.js"></script>
<script type="text/javascript" src="${cp}/assets/js/imageMapResizer.min.js"></script>


<script>
    $(document).ready(function () {

        $('map').imageMapResize();

        //contents viewportChecker
        $('.bs_cont').addClass("hidden").viewportChecker({
            classToAdd: 'visible animated fadeInUp',
            offset: 120
        });
    });
</script>

</body>
</html>
