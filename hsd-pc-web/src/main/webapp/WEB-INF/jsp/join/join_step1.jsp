<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥도시락 > 회원가입 > 01.약관동의</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.join.css" />
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/jquery.mCustomScrollbar.min.css"/>

    <script type="text/javascript" src="${cp}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

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
    <section class="join_step_01 mo_version">
        <!-- 회원가입_약관동의 -->
        <div class="join_step_wrap">
            <h2 class="h2_tit h2_01">회원가입</h2>
            <div class="join_step_cont cont_st01">
                <!-- join_left -->
                <div class="join_tit">
                    <h3 class="h3_tit">약관동의</h3>
                    <!-- pc -->
                    <p class="pc_s_block">
                        <span class="s_block">회원가입을 위해서 <em class="emphasis">이용약관 및</em> </span>
                        <span class="s_block"> <em class="emphasis">개인정보 수집 및 이용</em>에 대한</span>
                        <span class="s_block">안내를 읽고 <em class="emphasis">동의</em>해주세요.</span>
                    </p>
                    <!-- //pc -->
                    <!-- mobile -->
                    <p class="mo_s_block">
                        <span class="s_block">회원가입을 위해서</span>
                        <span class="s_block"><em class="emphasis">이용약관 및 개인정보 수집 및 이용</em>에 대한</span>
                        <span class="s_block">안내를 읽고 <em class="emphasis">동의</em>해주세요.</span>
                    </p>
                    <!-- //mobile -->
                </div>
                <!-- //join_left -->
                <!-- join_right -->
                <div class="join_sub">

                    <form:form name="joinForm" id="joinForm" method="post" action="${cp}/join/join_step2">
                    <h4 class="h4_tit">이용약관</h4>
                    <div class="textarea_wrap cont">
                        <div class="cont_area">
                            <jsp:include page="../footer/agree2.jsp" />
                        </div>

                        <!-- 동의 -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_use" name="agree_use" value="Y">
                            <label for="agree_use">동의합니다</label>
                            <span class="ck_txt">(필수)</span>
                        </span>
                        <!-- //동의 -->
                    </div>

                    <h4 class="h4_tit prive">개인정보 수집 및 활용동의</h4>
                    <div class="textarea_wrap">
                        <div class="cont_area">
                            <jsp:include page="../footer/agree1-1.jsp" />
                        </div>
                        <!-- 동의 -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_personal" name="agree_personal" value="Y">
                            <label for="agree_personal">동의합니다</label>
                            <span class="ck_txt">(필수)</span>
                        </span>
                        <!-- //동의 -->
                    </div>
                    <h4 class="h4_tit prive">마케팅 활용목적 동의</h4>
                    <div class="textarea_wrap">
                         <div class="cont_area">
                             <jsp:include page="../footer/agree3rd.jsp" />
                         </div>
                        <!-- 동의 -->
                        <span class="form checkbox">
                            <input type="checkbox" id="agree_3rd" name="agree_3rd" value="Y">
                            <label for="agree_3rd">동의합니다</label>
                            <span class="ck_txt">(선택)</span>
                        </span>
                            <!-- //동의 -->
                    </div>
                    </form:form>

                    <!-- 전체동의 -->
                    <div class="all_check_wrap">
                        <span class="form checkbox pa_01">
                            <input type="checkbox" id="allchk" onclick="allchk();">
                            <label for="allchk">위 약관에 모두 동의합니다</label>
                        </span>
                        <!-- btn -->
                        <div class="btn_wrap pa_01">
                            <span class="btn btn_st03"><a href="javascript:nextStep();" class="c_01">다음</a></span>
                        </div>
                        <!--// btn -->
                    </div>
                    <!--// 전체동의 -->
                </div>
                <!-- //join_right -->
            </div>
        </div>
        <!-- //회원가입_약관동의 -->
    </section>
</div>

<script>
    $(function(){

        $("#agree_personal, #agree_use, #agree_3rd").on('click',function(){
            if($("#agree_use").is(":checked") && $("#agree_personal").is(":checked") && $("#agree_3rd").is(":checked")){
                $("#allchk").prop("checked", true);
            }else{
                $("#allchk").prop("checked", false);
            }
        });

    });

    // 모두 동의
    function allchk(){
        if($("#allchk").is(":checked")){
            $("#joinForm :checkbox").prop("checked", true);
        }else{
            $("#joinForm :checkbox").prop("checked", false);
        }
    }

    // 다음
    function nextStep(){
        if(!$("#agree_use").is(":checked")){
            alert("이용약관에 동의해 주세요.");
            $("#agree_use").focus();
            return;
        }

        if(!$("#agree_personal").is(":checked")){
            alert("개인정보 보호정책에 동의해 주세요.");
            $("#agree_personal").focus();
            return;
        }

      $("#joinForm").submit();


      /*if(!$("#agree_3rd").is(":checked")){
        alert("마케팅 활용목적에 동의해 주세요.");
        $("#agree_3rd").focus();
        return;
      }*/


    }


    $(".cont_area").mCustomScrollbar({
        theme: "minimal-dark",
        scrollInertia: 400
    });

</script>
</body>
</html>
