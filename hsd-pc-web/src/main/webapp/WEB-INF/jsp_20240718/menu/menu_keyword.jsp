<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>추천키워드 > 한솥 메뉴</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.menu.css" />
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/jquery.mCustomScrollbar.min.css"/>
    <script type="text/javascript" src="${cp}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>

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

<div class="content menu keyword">
    <section class="menu_all">
        <!-- 한솥 메뉴 -->
        <div class="menu_all_wrap tab_st01">
            <!-- title -->
            <div class="title">
                <h2 class="h2_tit h2_02">한솥 메뉴</h2>
                <div class="tab_wrap">
                    <ul class="tab_menu col_02">
                        <li><a href="${cp}/menu/menu_list">전체메뉴</a></li>
                        <li class="active"><a href="#none">추천 키워드</a></li>
                    </ul>
                </div>
            </div>
            <!-- //title -->
            <!-- 메뉴 cont-->
            <div class="hansot_menu">
                <!-- pc:left -->
                <div class="left_wrap">
                    <!-- lnb -->
                    <div class="lnb">
                        <div class="lnb_inner">
                            <ul id="lnbList">
                                <c:forEach var="list" items="${goodsKeyword}">
                                <li class="dp1" id="cate_${list.idx}">
                                    <p class="dp1_tit"><a href="#none" onclick="showMenuList('${list.idx}');return false;">${list.keyword}</a></p>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <!-- mobile_close -->
                        <div class="lnb_btn_close">
                            <a href="#none"><span class="blind">close</span></a>
                        </div>
                        <!-- ///mobile_close -->
                    </div>
                    <!-- //lnb -->
                    <!-- mobile dim -->
                    <div class="dim"></div>
                    <!-- mobile dim -->
                    <!-- mobile -->
                    <div class="mo_title mo_version">
                        <h3 class="h3_tit"><span class="currentKeyword"></span></h3>
                        <div class="lnb_btn">
                            <a href="#none"><span>목록</span></a>
                        </div>
                    </div>
                    <!-- mobile -->
                    <!-- banner -->
                    <c:if test="${banners != null and banners.size() > 0}">
                        <div class="mo_banner mo_version">
                            <c:forEach var="list" items="${banners}">
                                <a href="${list.link}"><img src="${list.imagePath}" alt="banner" /></a>
                            </c:forEach>
                        </div>
                    </c:if>
                    <!-- //banner -->
                </div>
                <!-- //pc:left -->
                <!-- menu_list -->
                <div class="menu_list_wrap">
                    <!-- category1 -->
                    <div class="list_wrap" id="list_wrap">
                        <h3 class="h3_tit fz_02 currentKeyword"></h3>
                        <ul class="menu_cont" id="menu_cont">

                        </ul>
                    </div>
                    <!-- //category1 -->
                    <!-- 안내문구 -->
                    <div class="menu_guidance fz_03">
                        <p>한솥의 모든 메뉴는 1시간 이내에 드시는 것이 가장 맛있습니다.</p>
                    </div>
                    <!-- //안내문구 -->
                </div>
                <!-- //menu_list -->
            </div>
            <!-- //메뉴 cont -->
        </div>
        <!-- //한솥 메뉴 -->
    </section>
</div>

<jsp:include page="/WEB-INF/jsp/more/menu_more.jsp" />

<script>
    var keyword = parseInt('${param.keyword}');
    $(function(){

        if(!isNaN(keyword) && $("#cate_"+keyword).length > 0) {
            $("#cate_"+keyword).addClass("active");
            showMenuList(keyword);
        }else {
            $(".lnb .dp1:eq(0)").addClass("active");
            $("#lnbList").find("a:eq(0)").click();
        }
    });

    // 메뉴 리스트 가져오기
    function showMenuList(idx) {
        $(".currentKeyword").text($("#cate_"+idx).find("a").text());

        $.ajax({
            type: 'POST',
            url: "${cp}/api/menu/keyword_list/" + idx,
            headers: {
                Accept : "application/json; charset=utf-8",
                "Content-Type": "application/json; charset=utf-8"
            },
            dataType : "json"
        }).done(function(data) {

            var list = "";
            $.each(data,function(key, row){
                list += '<li class="item">';
                list += '    <div class="item-spacer">';
                list += '       <a href="${cp}/menu/menu_view/' + row["idx"] + '?keyword=' + idx + '" class="item-cont"></a>';
                list += '       <div class="item-img">';
                list += '           <img src="' + row["imagePath"] + '" alt="' + row["title"] + '">';
                list += '       </div>';

                if(row["newYn"] == 'Y') {
                    list += '       <div class="item-icon">';
                    list += '           <div class="icon icon-new">';
                    list += '               <span>NEW</span>';
                    list += '           </div>';
                    list += '       </div>';
                }

                list += '       <div class="item-text">';
                list += '           <h4 class="h fz_03">' + row["title"] + '</h4>';
                list += '           <div class="item-price">';
                list += '               <span class="blind">가격: </span><strong>' + tss.util.comma(row["price"]) + '</strong>원';
                list += '           </div>';
                list += '       </div>';
                list += '   </div>';
                list += '</li>';
            });

            $("#menu_cont").html(list);

            // 모바일에서 gnb 닫기
            if($('.dim').hasClass('on')) {
                $(".lnb_btn_close").trigger('click');
                $("#list_wrap").scrollToMe();
            }

            // url 변경
            if(typeof(history.pushState) == 'function') {
                history.pushState(null, null, location.pathname + '?keyword='+idx);
            }

        }).fail(function() {
            tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
        });
    }
</script>
</body>
</html>
