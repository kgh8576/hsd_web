<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>500 error</title>

    <%@ include file="/WEB-INF/layout/common/scripts.jsp" %>

    <%-- 공통 스타일 --%>
    <%@ include file="/WEB-INF/layout/common/styles.jsp" %>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.etc.css" />

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

<!-- wrap s -->
<div id="wrap">
    <!-- inc header s -->
    <%@ include file="/WEB-INF/layout/common/header.jsp" %>
    <!--// inc header e -->

    <!-- container s -->
    <div id="container" class="sub_page">
        <div class="content etc">
            <section class="error mo_version">
                <!-- ERROR -->
                <div class="error_wrap">
                    <h2 class="h2_tit h2_01">ERROR</h2>
                    <!-- error_cont -->
                    <div class="error_cont">
                        <p>
                            <span class="s_block">
                                <strong class="fz_02">서비스 이용에 불편을 드려 죄송합니다.</strong>
                            </span>
                            <span class="s_block">서버의 일시적인 문제로 인하여 페이지를 표시할 수 없습니다.</span>
                        </p>
                        <!-- btn -->
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="javascript:history.back();" class="c_02">이전 페이지로</a></span>
                            <span class="btn btn_st02"><a href="${cp}/" class="c_01">메인화면으로</a></span>
                        </div>
                        <!-- //btn -->
                    </div>
                    <!-- //error_cont -->
                </div>
                <!-- //ERROR -->
            </section>
        </div>
    </div>

    <!-- inc footer s -->
    <%@ include file="/WEB-INF/layout/common/footer.jsp" %>
    <!--// inc footer e -->
</div>
</body>
</html>
