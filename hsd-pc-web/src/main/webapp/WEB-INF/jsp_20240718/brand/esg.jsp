<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>ESG 경영</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.brand.css" />
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/animate.css" />

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
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
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
            <p class="menu_tit mo_version">ESG 경영</p>
            <div class="bs_cont mo_tr">
                <h2 class="h2_tit">한솥의 ESG 경영</h2>
                <div class="bs_txt">
                    <p>
                        한솥도시락은 UN에서 2015년 공포한 SDGs(지속가능개발목표)에 부응하여 기업차원에서 실천이 요구되는 ESG 경영에 매진하여 왔습니다.
                    </p>
                    <p>
                        ESG란 환경보호(Environment)·사회공헌(Social)·윤리경영(Governance)의 약자로, 기업이 환경보호에 앞장서며,
                        사회적 약자에 대한 지원과 남녀 평등한 직장문화의 조성 등 사회공헌 활동을 하며,
                        법과 윤리를 철저히 준수하는 윤리경영 등 ESG경영을 실천해야 지속적인 성장이 가능하다는 뜻입니다.
                        유럽연합이나 미국 등에서는 이미 기업을 평가하는데 중요한 기준으로 자리잡고 있으며,
                        현재 전 세계적으로 확산돼 나가고 있는 추세입니다.
                        국내에서는 아직까지 보편화 되어있지 않으나 한솥도시락은 창업 때부터 ESG경영을 실천해오고 있습니다.
                    </p>
                </div>
                <div class="bs_img mo_tr">
                    <%--<img src="${cp}/assets/images/brand/brand_esg.jpg" alt="ESG기업의 3대 요건" />--%>
                    <img src="${cp}/assets/images/brand/brand_esg.jpg" alt="ESG기업의 3대 요건" usemap="#map"/>
                    <map name="map" id="map">
                        <area target="" alt="social" title="social" href="https://www.hsd.co.kr/hansot/social" shape="rect" coords="240,422,121,323">
                    </map>
                </div>
            </div>
        </div>
    </section>
    <!-- //group_order -->
</div>

<jsp:include page="/WEB-INF/jsp/more/brand_more.jsp" />

<script type="text/javascript" src="${cp}/assets/js/jquery.viewportchecker.min.js"></script>
<script type="text/javascript" src="${cp}/assets/js/imageMapResizer.min.js"></script>


<script>
  $(document).ready(function() {

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
