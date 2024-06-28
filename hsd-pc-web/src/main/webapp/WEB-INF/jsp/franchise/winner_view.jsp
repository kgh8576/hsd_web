<html>
<head>
    <title>공모전 수상작</title>

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
    <section class="success_view mo_version">
        <!-- 성공수기 view -->
        <div class="suc_wrap">
            <!-- title -->
            <h2 class="h2_tit h2_01"><a href="#none" onclick="goList();return false;">공모전 수상작</a></h2>
            <!-- //title -->
            <!-- 성공수기 cont -->
            <div class="suc_view_wrap cont_st02">
                <!-- article -->
                <div class="area_article">
                    <h3 class="h3_tit fz_02">
                        <span class="grade">[${result.cateName}]</span>
                        <span class="tit">${result.title}</span>
                    </h3>
                    <div class="suc_store">
                        <span class="date">${result.storeName}</span>
                    </div>
                </div>
                <!-- //article -->
                <!-- area_cont -->
                <div class="area_cont">
                    <div class="view_txt pa_02">
                        <img src="${result.thumImg}" alt="${result.storeName}" />
                        ${result.contents}
                    </div>
                    <!-- area btn-->
                    <div class="view_btn_wrap">
                        <div class="btn_wrap view_list">
                            <span class="btn btn_st03">
                                <a href="#none" onclick="goList();return false;" class="active c_01"><em class="mo_none">목록</em></a>
                            </span>
                        </div>
                        <!-- next,prev -->
                        <div class="np_btn_wrap">
                            <c:if test="${prev == null}">
                                <div class="btn_wrap prev_btn">
                                <span class="btn btn_np">
                                    <a href="#none" class="off"><em class="blind">prev</em></a>
                                </span>
                                </div>
                            </c:if>
                            <c:if test="${prev != null}">
                                <div class="btn_wrap prev_btn">
                                <span class="btn btn_np">
                                    <a href="#none" onclick="goView('${prev.prevIdx}');return false;"><em class="blind">prev</em></a>
                                </span>
                                    <p class="p_txt np_txt">${prev.prevTitle}</p>
                                </div>
                            </c:if>

                            <c:if test="${next == null}">
                                <div class="btn_wrap next_btn">
                                <span class="btn btn_np">
                                    <a href="#none" class="off"><em class="blind">next</em></a>
                                </span>
                                </div>
                            </c:if>
                            <c:if test="${next != null}">
                                <div class="btn_wrap next_btn">
                                <span class="btn btn_np">
                                    <a href="#none" onclick="goView('${next.nextIdx}');return false;"><em class="blind">next</em></a>
                                </span>
                                    <p class="n_txt np_txt">${next.nextTitle}</p>
                                </div>
                            </c:if>
                        </div>
                        <!-- // next,prev -->
                    </div>
                    <!-- //area btn -->
                </div>
                <!-- //area_cont -->
            </div>
            <!-- //성공수기 cont -->
        </div>
        <!-- //성공수기 view -->
    </section>
</div>
<script type="text/javascript">
    // 목록이동
    function goList(){
        location.href = "${cp}/franchise/winner";
    }

    // 이전글, 다음글
    function goView(idx){
        location.href = "${cp}/franchise/winner_view/"+idx;
    }
</script>
</body>
</html>
