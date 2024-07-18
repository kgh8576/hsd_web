<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥도시락 > 회원가입 > 04.가입완료</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.join.css" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111772169-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
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

<div class="content join">
    <section class="join_step_04 mo_version">
        <!-- 회원가입 -->
        <div class="join_step_wrap">
            <h2 class="h2_tit h2_01">회원가입</h2>
            <div class="join_step_cont cont_st01">
                <!-- 회원가입 완료 -->
                <div class="join_complete">
                    <p>
                        <span class="s_block"><em class="emphasis">${name}(${id})</em>님,</span>
                        <span class="s_block">한솥의 소중한 회원이 되신 것을 환영합니다.</span>
                        <span class="s_block">이제 한솥의 다양한 이야기를 만나보세요.</span>
                    </p>
                    <!-- btn -->
                    <div class="btn_wrap">
                        <span class="btn btn_st02"><a href="${cp}/login" class="c_02">로그인</a></span>
                        <span class="btn btn_login btn_main"><a href="${cp}/">메인으로 가기</a></span>
                    </div>
                    <!-- //btn -->
                </div>
                <!-- //회원가입 완료 -->
            </div>
        </div>
        <!-- //회원가입 -->
    </section>
</div>

</body>
</html>
