<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥메뉴</title>

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

<div class="content menu">
    <section class="menu_view">
        <!-- 메뉴상세 -->
        <div class="menu_view_wrap">
            <!-- title -->
            <div class="ontitle view">
                <c:choose>
                    <c:when test="${param.keyword != null and param.keyword != ''}">
                        <h2 class="h2_tit h2_01"><a href="javascript:goList();">추천키워드</a></h2>
                    </c:when>
                    <c:otherwise>
                        <h2 class="h2_tit h2_01"><a href="javascript:goList();">전체 메뉴</a></h2>
                    </c:otherwise>
                </c:choose>
            </div>
            <!-- //title -->
            <!-- 메뉴상세 cont -->
            <div class="view_cont">
                <!-- 상세이미지 -->
                <div class="menu_detail">
                    <!-- 이미지 -->
                    <div class="img_wrap mo_tr">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <c:forEach var="list" items="${goods.detailImg}">
                                <div class="detail_img swiper-slide">
                                    <img src="${list.DETAIL_IMAGE}" alt="메뉴 이미지" style="max-width:100%; height: auto;"/>
                                </div>
                                </c:forEach>
                            </div>
                            <!-- Pagination -->
                            <div class="pagi_wrap" style="display:none;">
                                <div class="pagi_cont">
                                    <div class="swiper-pagination"></div>
                                </div>
                            </div>
                            <!-- //Pagination -->
                        </div>
                    </div>
                    <!-- //이미지 -->
                    <!-- 상세설명 -->
                    <div class="txt_wrap">
                        <h3 class="he_tit">
                            <span class="dp1">${goods.series}</span>
                            <span class="dp2">${goods.title}</span>
                        </h3>
                        <p class="account">
                            ${goods.subTitle}
                        </p>
                        <!-- 옵션 -->
						<script>
						    // 밥&토핑 카운팅 변수
							let count1 = 0;
							let count2 = 0;
						</script>
                        <c:if test="${not empty goods.subMenu}">
                        <div class="option">
                            <ul class="cont_area">
                                <c:forEach var="options" items="${goods.subMenu}">
								
                                <!-- <li id="test"> -->
								<li id="test${options.idx}">
									<script>
										// 인덱스
										let test = "${options.idx}";
										
										let testa = "${options}"
										// console.log(testa);
									
									</script>
                                    <span class="form checkbox">
                                        <input type="checkbox" id="chk_${options.idx}" name="option_chk" value="${options.price}" onclick="addOptionMenu(${options.idx});">
                                        <label for="chk_${options.idx}">${options.title}</label>
                                    </span>
                                    <span class="p_price"><em><fmt:formatNumber value="${options.price}" pattern="#,###"/></em>원</span>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                        </c:if>
                        <!-- //옵션 -->
                        <!-- 합산 -->
                        <div class="total">
                            <c:if test="${not empty goods.subMenu}">
                            <dl>
                                <dt class="blind">상품+옵션</dt>
                                <dd>
                                    <span class="fz_03"><fmt:formatNumber value="${goods.price}" pattern="#,###"/></span>
                                    <span class="p_price fz_03"><em id="total_option">0</em></span>
                                </dd>
                            </dl>
                            </c:if>
                            <div class="price_wrap">
                                <span class="price fz_03"><em class="fz_01" id="total_price"><fmt:formatNumber value="${goods.price}" pattern="#,###"/></em>원</span>
                            </div>
                        </div>
                        <!-- 합산 -->
                    </div>
                    <!-- //상세설명 -->
                </div>
                <!-- //상세이미지 -->
                <!-- 열량 -->
                <div class="menu_info quantity">
                    <h4 class="h4_tit fz_02">열량</h4>
                    <p><span>${goods.calorie}</span>Kcal</p>
                </div>
                <!-- //열량 -->
                <!-- 알레르기 -->
                <div class="menu_info allergy">
                    <h4 class="h4_tit fz_02">알레르기</h4>
                    <div class="allergy_wrap">
                        <!-- list_01 -->
                        <div class="list_01">
                            <dl>
                                <dt style="height: 18px;">난류(계란)</dt>
                                <c:choose>
                                    <c:when test="${goods.al1 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al1 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al1 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>우유</dt>
                                <c:choose>
                                    <c:when test="${goods.al2 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al2 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al2 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>메밀</dt>
                                <c:choose>
                                    <c:when test="${goods.al3 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al3 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al3 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                        </div>
                        <!-- //list_01 -->
                        <!-- list_02 -->
                        <div class="list_02">
                            <dl>
                                <dt>땅콩</dt>
                                <c:choose>
                                    <c:when test="${goods.al4 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al4 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al4 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>대두</dt>
                                <c:choose>
                                    <c:when test="${goods.al5 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al5 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al5 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>밀</dt>
                                <c:choose>
                                    <c:when test="${goods.al6 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al6 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al6 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                        </div>
                        <!-- //list_02 -->
                        <!-- list_03 -->
                        <div class="list_03">
                            <dl>
                                <dt>고등어</dt>
                                <c:choose>
                                    <c:when test="${goods.al7 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al7 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al7 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>게</dt>
                                <c:choose>
                                    <c:when test="${goods.al8 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al8 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al8 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>돼지고기</dt>
                                <c:choose>
                                    <c:when test="${goods.al9 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al9 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al9 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                        </div>
                        <!-- //list_03 -->
                        <!-- list_04 -->
                        <div class="list_04">
                            <dl>
                                <dt>복숭아</dt>
                                <c:choose>
                                    <c:when test="${goods.al10 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al10 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al10 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>토마토</dt>
                                <c:choose>
                                    <c:when test="${goods.al11 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al11 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al11 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>새우</dt>
                                <c:choose>
                                    <c:when test="${goods.al12 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al12 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al12 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                        </div>
                        <!-- //list_04 -->
                        <!-- list_05 -->
                        <div class="list_05">
                            <dl>
                                <dt>아황산류</dt>
                                <c:choose>
                                    <c:when test="${goods.al13 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al13 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al13 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>호두</dt>
                                <c:choose>
                                    <c:when test="${goods.al14 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al14 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al14 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>닭고기</dt>
                                <c:choose>
                                    <c:when test="${goods.al15 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al15 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al15 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                        </div>
                        <!-- //list_05 -->
                        <!-- list_06 -->
                        <div class="list_06">
                            <dl>
                                <dt>쇠고기</dt>
                                <c:choose>
                                    <c:when test="${goods.al16 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al16 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al16 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>오징어</dt>
                                <c:choose>
                                    <c:when test="${goods.al17 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al17 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al17 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                            <dl>
                                <dt>조개류</dt>
                                <c:choose>
                                    <c:when test="${goods.al18 == 1}" >
                                        <dd class="true"><span class="blind">포함</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al18 == 2}" >
                                        <dd class="making"><span class="blind">가공/제조</span></dd>
                                    </c:when>
                                    <c:when test="${goods.al18 == 3}" >
                                        <dd class="false"><span class="blind">불포함</span></dd>
                                    </c:when>
                                    <c:otherwise>
                                        <dd><span class="blind"></span></dd>
                                    </c:otherwise>
                                </c:choose>
                            </dl>
                        </div>
                        <!-- //list_06 -->
                    </div>
                    <!-- 알레르기 항목 -->
                    <div class="classify">
                        <ul>
                            <li class="list_01">해당 알레르기 성분이 포함되어 있음</li>
                            <li class="list_02">해당 알레르기 성분이 직접적으로 포함되어 있지 않지만, 해당 성분을 가공하는 시설에서 가공/제조 하였음</li>
                            <li class="list_03">해당 알레르기 성분이 포함되어 있지 않음</li>
                        </ul>
                    </div>
                    <!-- //알레르기 항목 -->
                </div>
                <!-- //알레르기 -->
                <!-- 원산지 -->
                <c:if test="${goods.origins != null and goods.origins.size() > 0 }">
                <div class="menu_info country">
                    <h4 class="h4_tit fz_02">원산지</h4>
                    <div class="country_wrap">
                        <c:forEach var="list" items="${goods.origins}">
                        <dl>
                            <dt>${list.title}</dt>
                            <dd>${list.origin}</dd>
                        </dl>
                        </c:forEach>
                    </div>
                </div>
                </c:if>
                <!-- //원산지 -->
                <!-- btn -->
                <div class="btn_wrap view_list">
                    <span class="btn btn_st03">
                        <a href="javascript:goList();" class="active c_01"><em class="mo_none">목록</em></a>
                    </span>
                </div>
                <!-- //btn -->
            </div>
            <!-- //메뉴상세 cont -->
        </div>
        <!-- //메뉴상세 -->
    </section>
</div>

<jsp:include page="/WEB-INF/jsp/more/menu_more.jsp" />

<script type="text/javascript">

    if($(".detail_img").length > 1) {
        $(".pagi_wrap").show();

        function imageWrapSize(){
            if($(window).width() > 1023){
                return 500;
            }else if($(window).width() > 750){
                return 400;
            }else {
                return $(window).width();
            }
        }

        //상세 이미지 slide
        var swiper = new Swiper('.menu_detail .swiper-container', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            loop: true,
            autoplay: 5500,
            autoplayDisableOnInteraction: false,
            width: imageWrapSize()
        });
        $(window).on('resize', function(){
            swiper.params.width = imageWrapSize();
            swiper.onResize();
        });
    }

    // 옵션메뉴 체크
    function addOptionMenu(idx){
        var price = parseInt(${goods.price});
        var option_price = 0;
		
		
        if(idx == 15 || idx == 16 || idx == 17 || idx == 18 || idx == 19){
		    if(idx != 15) $("#chk_15").prop("checked", false);
			if(idx != 16) $("#chk_16").prop("checked", false);
            if(idx != 17) $("#chk_17").prop("checked", false);
            if(idx != 18) $("#chk_18").prop("checked", false);
            if(idx != 19) $("#chk_19").prop("checked", false);
        }
        $("input[name=option_chk]:checked").each(function(){
            option_price += parseInt($(this).val());
        });

        var total_price = tss.util.comma(price + option_price);
        $("#total_price").text(total_price);
        $("#total_option").text(tss.util.comma(option_price));
    }
	


    // 목록으로 이동
    var cate1 = parseInt('${param.cate1}');
    if(isNaN(cate1)) cate1 = "";
    var cate2 = parseInt('${param.cate2}');
    if(isNaN(cate2)) cate2 = "";
    var keyword = parseInt('${param.keyword}');
    function goList(){
        if(!isNaN(keyword)){
            location.href = "${cp}/menu/menu_keyword?keyword="+keyword;
        }else{
            location.href = "${cp}/menu/menu_list?cate1=" + cate1 + "&cate2=" + cate2 + "&idx=${idx}";
        }
    }

    // 원산지
    if($(".country_wrap > dl").length > 4){
        $(".country_wrap").addClass("col_0" + $(".country_wrap > dl").length);
    }

    // 옵션메뉴 스크롤
    if($(".option li").length > 1) {
        $(".option .cont_area").mCustomScrollbar({
            theme: "dark-3",
            scrollInertia: 400
        });
    }
	
	// 콘솔 확인
	// document.getElementById("mCSB_1_container").childNodes.forEach(e => {console.log(e.id)});
	// document.querySelector(".cont_area").childNodes.forEach(e => {console.log(e.id)});
	
	// 밥&토핑
	// document.getElementsByClassName("cont_area").childNodes.forEach(e => {
	
	// 태그만들기
	let tempdiv_out_bob = document.createElement("div");
	let tempdiv_out_toping = document.createElement("div");
	
	let tempdiv_in_bob = document.createElement("div");
	let tempdiv_in_toping = document.createElement("div");
	
	
	if(document.getElementById("mCSB_1_container") != null){ // 스크롤 있을때
	
		// console.log("스크롤 있을때");
		document.getElementById("mCSB_1_container").childNodes.forEach(e => {
			// console.log(e.id)
			
			// 태그 생성
			let div = document.createElement("div");
			let bobText = document.createTextNode( '밥' );
			let topText = document.createTextNode( '토핑' );
			
			div.style.height = '12px';
			div.style.fontWeight='bold';
			
			tempdiv_in_bob.style.fontWeight="bold";
			tempdiv_in_bob.style.height = '12px';
			tempdiv_in_bob.style.marginBottom = '15px';
			
			tempdiv_in_toping.style.fontWeight="bold";
			tempdiv_in_toping.style.height = '12px';
			tempdiv_in_toping.style.marginBottom = '15px';
			
			
			if(e.id === 'test15' && count1 == 0) {
			    tempdiv_in_bob.innerText = "밥";
				tempdiv_out_bob.append(tempdiv_in_bob);
				e.prepend(tempdiv_out_bob);
				// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
				// e.prepend("밥", div)
				count1++;
			} else if(e.id === 'test16' && count1 == 0){
			    tempdiv_in_bob.innerText = "밥";
				tempdiv_out_bob.append(tempdiv_in_bob);
				e.prepend(tempdiv_out_bob);
			    // e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
				// e.prepend("밥", div)
				count1++;
			} else if(e.id === 'test17' && count1 == 0){
			    tempdiv_in_bob.innerText = "밥";
				tempdiv_out_bob.append(tempdiv_in_bob);
				e.prepend(tempdiv_out_bob);
				// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
				// e.prepend("밥", div)
				count1++;
			} else if(e.id === 'test18' && count1 == 0){
			    tempdiv_in_bob.innerText = "밥";
				tempdiv_out_bob.append(tempdiv_in_bob);
				e.prepend(tempdiv_out_bob);
				// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
				// e.prepend("밥", div)
				count1++;
			} else if(e.id === 'test19' && count1 == 0){
			    tempdiv_in_bob.innerText = "밥";
				tempdiv_out_bob.append(tempdiv_in_bob);
				e.prepend(tempdiv_out_bob);
				// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
				// e.prepend("밥", div)
				count1++;
			} else {
											
			}
			
			
			if(e.id === 'test24' && count2 == 0) {
			    tempdiv_in_toping.innerText = "토핑";
				tempdiv_out_toping.append(tempdiv_in_toping);
				e.prepend(tempdiv_out_toping);
				// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>토핑</div>";
				// e.prepend("토핑", div)
				count2++;
			} else if(e.id === 'test25' && count2 == 0){
			    tempdiv_in_toping.innerText = "토핑";
				tempdiv_out_toping.append(tempdiv_in_toping);
				e.prepend(tempdiv_out_toping);
				// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>토핑</div>";
				// e.prepend("토핑", div)
				count2++;
			} else if(e.id === 'test26' && count2 == 0){
			    tempdiv_in_toping.innerText = "토핑";
				tempdiv_out_toping.append(tempdiv_in_toping);
				e.prepend(tempdiv_out_toping);
				// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>토핑</div>";
				// e.prepend("토핑", div)
				count2++;
			} else {
											
			}
		});
	}
	
	if(document.getElementById("mCSB_1_container") == null){ // 스크롤 없을때
	
		// console.log("스크롤 없을때");
	    
		document.querySelector(".cont_area").childNodes.forEach(e => {
			// console.log(e.id)
			// 태그 생성
			let div = document.createElement("div");
			let bobText = document.createTextNode( '밥' );
			let topText = document.createTextNode( '토핑' );
			
			div.style.height = '12px';
			div.style.fontWeight='bold';
			
			tempdiv_in_bob.style.fontWeight="bold";
			tempdiv_in_bob.style.height = '12px';
			tempdiv_in_bob.style.marginBottom = '15px';
			
			tempdiv_in_toping.style.fontWeight="bold";
			tempdiv_in_toping.style.height = '12px';
			tempdiv_in_toping.style.marginBottom = '15px';
				
				if(e.id === 'test15' && count1 == 0) {
					tempdiv_in_bob.innerText = "밥";
					tempdiv_out_bob.append(tempdiv_in_bob);
					e.prepend(tempdiv_out_bob);
					// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
					// e.prepend("밥", div)
					count1++;
				} else if(e.id === 'test16' && count1 == 0){
					tempdiv_in_bob.innerText = "밥";
					tempdiv_out_bob.append(tempdiv_in_bob);
					e.prepend(tempdiv_out_bob);
					// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
					// e.prepend("밥", div)
					count1++;
				} else if(e.id === 'test17' && count1 == 0){
					tempdiv_in_bob.innerText = "밥";
					tempdiv_out_bob.append(tempdiv_in_bob);
					e.prepend(tempdiv_out_bob);
					// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
					// e.prepend("밥", div)
					count1++;
				} else if(e.id === 'test18' && count1 == 0){
					tempdiv_in_bob.innerText = "밥";
					tempdiv_out_bob.append(tempdiv_in_bob);
					e.prepend(tempdiv_out_bob);
					// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
					// e.prepend("밥", div)
					count1++;
				} else if(e.id === 'test19' && count1 == 0){
					tempdiv_in_bob.innerText = "밥";
					tempdiv_out_bob.append(tempdiv_in_bob);
					e.prepend(tempdiv_out_bob);
					// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>밥</div>";
					// e.prepend("밥", div)
					count1++;
				} else {
												
				}
				
				
				if(e.id === 'test24' && count2 == 0) {
					tempdiv_in_toping.innerText = "토핑";
					tempdiv_out_toping.append(tempdiv_in_toping);
					e.prepend(tempdiv_out_toping);
				    // e.innerHTML = "<div style='height: 20px; font-weight: bold;'>토핑</div>";
					// e.prepend("토핑", div)
					count2++;
				} else if(e.id === 'test25' && count2 == 0){
					tempdiv_in_toping.innerText = "토핑";
					tempdiv_out_toping.append(tempdiv_in_toping);
					e.prepend(tempdiv_out_toping);
				    // e.innerHTML = "<div style='height: 20px; font-weight: bold;'>토핑</div>";
					// e.prepend("토핑", div)
					count2++;
				} else if(e.id === 'test26' && count2 == 0){
					tempdiv_in_toping.innerText = "토핑";
					tempdiv_out_toping.append(tempdiv_in_toping);
					e.prepend(tempdiv_out_toping);
					// e.innerHTML = "<div style='height: 20px; font-weight: bold;'>토핑</div>";
					// e.prepend("토핑", div)
					count2++;
				} else {
												
				}
		});
	}
	
</script>
</body>
</html>
