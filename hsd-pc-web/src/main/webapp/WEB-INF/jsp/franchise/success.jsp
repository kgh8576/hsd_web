<html>
<head>
    <title>성공수기</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.franchise.css" />

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

<div class="content franchise success">
    <section class="success_list">
        <!-- 성공수기 -->
        <div class="suc_wrap tab_st01">
            <div class="ontitle">
                <h2 class="h2_tit h2_02 mo_version">성공 수기</h2>
                <div class="tab_wrap mo_version">
                    <ul class="tab_menu">
                        <li class="active"><a href="#none">성공 수기</a></li>
                        <li><a href="${cp}/franchise/winner">공모전 수상작</a></li>
                    </ul>
                </div>
            </div>
            <div class="suc_cont">
                <!-- 성공수기 intro -->
                <div class="suc_title">
                    <p class="fz_02">
                        <span class="s_block">한솥도시락 가맹점주들의</span>
                    </p>
                    <p class="fz_02">
                        <span class="s_block">생생한 '성공 수기'입니다.</span>
                    </p>
                </div>
                <!-- //성공수기 intro -->
                <!-- list -->
                <div class="suc_list_wrap mo_version">
                    <ul>
                        <c:forEach var="data" items="${list}">
                        <li style="height: auto;">
                            <c:choose>
                                <c:when test="${data.cate == 35}">
                                    <p class="suc_prime grand"><span>${data.cateName}</span></p>
                                </c:when>
                                <c:when test="${data.cate == 36}">
                                    <p class="suc_prime"><span>${data.cateName}</span></p>
                                </c:when>
                            </c:choose>
                            <div class="suc_list_cnt">
                                <!-- 지점/제목 -->
                                <div class="suc_list_tit">
                                    <span class="store_tit">${data.storeName}</span>
                                    <h3 class="h3_tit fz_02">${data.title}</h3>
                                </div>
                                <!-- //지점/제목 -->
                                <p class="suc_txt">
                                    ${data.description}
                                </p>
                                <!-- img -->
                                <c:if test="${data.thumImg != null && data.thumImg != ''}">
                                <span class="suc_img s_block" style="height: auto;">
                                    <img src="${data.thumImg}" alt="${data.storeName}" />
                                </span>
                                </c:if>
                                <!-- //img -->
                                <!-- 버튼 -->
                                <div class="btn_wrap">
                                    <span class="btn btn_st04">
                                        <a href="${cp}/franchise/success_view/${data.idx}" class="c_07">상세보기</a>
                                    </span>
                                </div>
                                <!-- //버튼 -->
                                <!-- border_bg -->
                                <span class="bg t_l"></span>
                                <span class="bg t_r"></span>
                                <span class="bg b_l"></span>
                                <span class="bg b_r"></span>
                                <!-- //border_bg -->
                            </div>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
                <!-- //list -->
            </div>
        </div>
        <!-- //성공수기 -->
    </section>
</div>

<jsp:include page="/WEB-INF/jsp/more/franchise_more.jsp" />

</body>
</html>
