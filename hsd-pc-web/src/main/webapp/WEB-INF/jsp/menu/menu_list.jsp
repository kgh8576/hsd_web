﻿<html>
<head>
    <title>전체메뉴 > 한솥 메뉴</title>

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
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-43326926-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-43326926-1');

	  gtag('event', 'view_item_list', {'event_category' : 'engagement',});
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

<div class="content menu">
    <section class="menu_all">
        <!-- 한솥 메뉴 -->
        <div class="menu_all_wrap tab_st01">
            <!-- title -->
            <div class="title">
                <h2 class="h2_tit h2_02">한솥 메뉴</h2>
                <div class="tab_wrap">
                    <ul class="tab_menu col_02">
                        <li class="active"><a href="#none">전체메뉴</a></li>
                        <li><a href="${cp}/menu/menu_keyword">추천 키워드</a></li>
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
                            <ul>
                                <!-- 전체보기 -->
                                <li class="dp1 dp_all active">
                                    <p class="dp1_tit"><a href="#none" onclick="allMenu();return false;">전체보기</a></p>
                                </li>
                                <!-- //전체보기 -->
                                <c:forEach var="cate" items="${goodsCategory}">
                                    <c:choose>
                                        <c:when test="${childCategory[cate.idx].size() == 0}">
                                            <c:set var="dp1_class" value="icon_none" />
                                        </c:when>
                                        <c:otherwise>
                                            <c:set var="dp1_class" value="" />
                                        </c:otherwise>
                                    </c:choose>

                                <li class="dp1 ${dp1_class}" id="cate_${cate.idx}" idx="${cate.idx}">
                                    <c:if test="${childCategory[cate.idx].size() == 0}">
                                    <p class="dp1_tit"><a href="#none" onclick="showMenuList(${cate.idx}, 0);return false;">${cate.name}</a></p>
                                    </c:if>
                                    <c:if test="${childCategory[cate.idx].size() > 0}">
                                    <p class="dp1_tit"><a href="#none" onclick="return false;">${cate.name}</a></p>
                                    <div class="dp2">
                                        <ul>
                                            <c:forEach var="child" items="${childCategory[cate.idx]}">
                                            <li id="child_${child.idx}"><a href="#none" onclick="showMenuList('${cate.idx}', '${child.idx}');return false;">${child.name}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                    </c:if>
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
                        <h3 class="h3_tit"><span>전체보기</span></h3>
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
                    <!-- 키워드 -->
                    <div class="keyword mo_version">
                        <h3 class="h3_tit">
                            당신을 위한 <em class="emphasis">#추천 키워드</em>
                        </h3>
                        <ul>
                            <c:forEach var="list" items="${goodsKeywords}">
                            <li><a href="${cp}/menu/menu_keyword?keyword=${list.idx}">${list.keyword}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- //키워드 -->
                </div>
                <!-- //pc:left -->
                <!-- menu_list -->
                <div class="menu_list_wrap">
                    <div id="menu_cont">

                    </div>

                    <!-- 더보기 btn -->
                    <div class="btn_wrap btn_more" style="display:none;" id="btn_more">
                        <span class="btn btn_st04">
                            <a href="#none" class="c_05" onclick="more();return false;">더 보기</a>
                        </span>
                    </div>
                    <!-- //더보기 btn -->
                    <!-- 안내문구 -->
                    <div class="menu_guidance fz_03">
                        <p>한솥의 모든 메뉴는 1시간 이내에 드시는 것이 가장 맛있습니다.</p>
                        <p>※메뉴 이미지는 실제 제품과 다를 수 있습니다.</p>
                        <p>※메뉴에 표기된 가격은 권장가격입니다.</p>
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
    var currentCate1 = parseInt('${param.cate1}');
    if(isNaN(currentCate1)) currentCate1 = 0;
    var currentCate2 = parseInt('${param.cate2}');
    if(isNaN(currentCate2)) currentCate2 = 0;
    var nextCate = 0;
    var page = parseInt('${param.page}');
    if(isNaN(page)) page = 0;
    var idx = parseInt('${param.idx}');
    if(isNaN(idx)) idx = 0;

    $(function(){
        if(currentCate1 > 0 && currentCate2 > 0){
            $(".lnb .dp1.active").removeClass("active");
            $(".lnb .dp2 li.active").removeClass("on");

            $("#cate_"+currentCate1).addClass("active");
            $("#child_"+currentCate2).addClass("on");

            showMenuList(currentCate1, currentCate2);
        }else {
            allMenu();
        }
    });

    // 전체메뉴 보기
    function allMenu() {
        currentCate1 = parseInt($(".lnb .dp1:eq(1)").attr("idx"));
        if(isNaN(currentCate1)) currentCate1 = 0;
        currentCate2 = 0;

        $("#menu_cont").html("");
        showMenuList(currentCate1, 0);
    }

    // 메뉴 리스트 가져오기
    function showMenuList(cate1, cate2) {
        cate1 = parseInt($.trim(cate1));
        cate2 = parseInt($.trim(cate2));
        if(isNaN(cate1)) cate1 = 0;
        if(isNaN(cate2)) cate2 = 0;

        $(".lnb .dp2 li").removeClass("on");
        $("#child_" + cate2).addClass("on");
        $.ajax({
            type: 'POST',
            url: "${cp}/api/menu/menu_list/" + cate1 + "/" + cate2,
            headers: {
                Accept : "application/json; charset=utf-8",
                "Content-Type": "application/json; charset=utf-8"
            },
            dataType : "json"
        }).done(function(data) {

            if(data.cate1Info == null) return;

            var cate1Info = data.cate1Info;
            var cate2Info = "";
            var list = "";
            var tails = "";

            $.each(data.subdata, function(key, row){
                cate2Info = row.cate2Info;

                list += '<div class="list_wrap" id="catelist_' + cate2Info.idx + '">';
                list += '    <p class="dp">' + cate1Info.name + '</p>';
                list += '    <h3 class="h3_tit fz_01">' + cate2Info.name + '</h3>';
                list += '    <ul class="menu_cont">';

                $.each(row.goodsList, function(key2, row2) {

                    tails = '?cate1=' + cate1Info.idx + '&cate2=' + cate2Info.idx;
                    if(page > 0) tails += '&page=' + page;


                    list += '        <li class="item" id="menuList_' + row2["idx"] + '">';
                    list += '            <div class="item-spacer">';
                    list += '                <a href="javascript:;" onclick="goDetail(\'' + cate1Info.idx + '\', \'' + cate2Info.idx + '\', \'' + row2["idx"] + '\')" class="item-cont"></a>';
                    list += '                <div class="item-img">';
                    list += '                    <img src="' + row2["imagePath"] + '" alt="' + row2["title"] + '">';
                    list += '                </div>';

                    if(row2["newYn"] == 'Y') {
                        list += '                <div class="item-icon">';
                        list += '                    <div class="icon icon-new">';
                        list += '                        <span>NEW</span>';
                        list += '                    </div>';
                        list += '                </div>';
                    }

                    list += '                <div class="item-text">';
                    list += '                    <h4 class="h fz_03">' + row2["title"] + '</h4>';
                    list += '                    <div class="item-price">';
                    list += '                        <span class="blind">가격: </span><strong>' + tss.util.comma(row2["price"]) + '</strong>원';
                    list += '                    </div>';
                    list += '                </div>';
                    list += '            </div>';
                    list += '        </li>';
                });

                list += '    </ul>';
                list += '</div>';
            });

            // 다음
            if($(".lnb .dp_all").hasClass("active")) {  // 전체보기
                $("#menu_cont").append(list);

                nextCate = $(".lnb li#cate_" + cate1).next().attr("idx");
                if (nextCate === undefined) {
                    $("#btn_more").hide();
                } else {
                    $("#btn_more").show();
                }

            }else{  // 카테고리 단독보기
                $("#menu_cont").html(list);
                $("#btn_more").hide();
            }

            // 모바일에서 gnb 닫기
            if($('.dim').hasClass('on')) {
                $(".lnb_btn_close").trigger('click');
                $("#menu_cont").scrollToMe();
            }

            // 해당메뉴로 이동
            if(idx > 0) {
                $("#menuList_" + idx).scrollToMe();
                idx = 0;
            }

        }).fail(function(data) {
            console.log(data);
            tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
        });
    }

    // 더보기
    function more() {
        page = page + 1;
        showMenuList(nextCate, 0);
    }

    // 상세이동
    function goDetail(cate1, cate2, idx) {

        var tails = "?cate1=" + cate1 + "&cate2=" + cate2;
        location.href = "${cp}/menu/menu_view/" + idx + tails;

        // url 변경
        if(typeof(history.pushState) == 'function') {
            var renewURL = location.pathname;
            history.pushState(null, null, renewURL + tails);
        }
    }
</script>
</body>
</html>
