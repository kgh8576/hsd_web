<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥도시락 > 로그인 > 본인인증</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.join.css" />
    <script type="text/javascript" src="${cp}/assets/js/join.js"></script>

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

    <style>
        .join_step_02 .join_step_cont .join_tit h3.h3_tit:before {content: '01';}
    </style>
</head>
<body>

<div class="content join">
    <section class="join_step_02 mo_version">
        <!-- 회원가입_약관동의 -->
        <div class="join_step_wrap">
            <h2 class="h2_tit h2_01">로그인</h2>
            <div class="join_step_cont cont_st01">
                <!-- join_left -->
                <div class="join_tit">
                    <h3 class="h3_tit">본인인증</h3>
                    <p class="pa_01">
                        <span class="s_block">오랫동안 접속을 하지 않아 휴면계정으로 전환되었습니다.</span>
                        <span class="s_block">휴대폰 인증을 통하여</span>
                        <span class="s_block"><em class="emphasis">본인인증</em>을 진행해주세요.</span>
                        <span class="c_block ck_01">입력하신 정보는 해당 인증기관에서</span>
                        <span class="c_block">직접 수집하며, 인증 이외의 용도로</span>
                        <span class="c_block">이용 또는 저장하지 않습니다.</span>
                    </p>
                </div>
                <!-- //join_left -->
                <!-- join_right -->
                <div class="join_sub">
                    <h4 class="h4_tit blind">휴대폰 인증</h4>
                    <div class="join_certi_wrap">
                        <div class="join_certi">
                            <span><a href="javascript:fnAuthMobileForLogin();">휴대폰 인증</a></span>
                        </div>
                    </div>
                </div>
                <!-- //join_right -->

                <form:form id="authFormForLogin" name="authForm" type="post" action="${cp}/login/sleep_verify_step2">
                    <input type="hidden" id="name" name="name" value="" />
                    <input type="hidden" id="mobilePhone" name="mobile_phone" value="" />
                    <input type="hidden" id="di" name="di" value="" />
                    <input type="hidden" id="mobileCertificationReqNum" name="mobile_certification_req_num" value="" />
                </form:form>
            </div>
        </div>
        <!-- //회원가입_약관동의 -->
    </section>
</div>
</body>
</html>
