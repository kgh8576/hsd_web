<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥 > STORE > 주변점포찾기</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.store.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.pop.css"/>

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

      function gtag() {
        dataLayer.push(arguments);
      }

      gtag('js', new Date());

	  gtag('config', 'UA-43326926-1');

	  gtag('event', 'find_store', {'event_category' : 'engagement',});
    </script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag() {
        dataLayer.push(arguments);
      }

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

<div class="content store">
    <!-- store_find -->
    <section class="store_find">
        <div class="store_wrap">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_01 mo_version">주변점포찾기</h2>
                <!-- 주변점포찾기 Form -->
                <form:form id="searchForm" name="searchForm" method="get" onsubmit="searchStore(1);return false;">
                    <input type="hidden" id="idx" name="idx" value=""/>
                    <dl class="store_form mo_version" id="map_position">
                        <div class="in_box">
                            <dl class="in_box_th">
                                <dt class="blind">주변점포찾기</dt>
                                <!-- 시/도 선택 -->
                                <dd class="store_select">
                                <span class="select">
                                    <select class="classic" title="시/도 선택 구분" id="sido" name="sido">
                                        <option value="">시/도 선택</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //시/도 선택 -->
                                <!-- 군/구 선택 -->
                                <dd class="store_select last_selcet">
                                <span class="select">
                                    <select class="classic" title="구/군 선택 구분" id="gungoo" name="gungoo">
                                        <option value="">구/군 선택</option>
                                    </select>
                                </span>
                                </dd>
                                <!-- //군/구 선택 -->
                                <!-- 검색창 -->
                                    <%--<dd style="height: 50px;display: flex;align-items: center;margin-right: 10px;">
                                        <div class="radio_wrap">
                                            <span class="form radio">
                                                <label>
                                                    <input type="radio" name="searchCondition" value="address" checked="checked">
                                                    <span>주소</span>
                                                </label>
                                            </span>
                                            <div class="form radio no">
                                                <label>
                                                    <input type="radio" name="searchCondition" value="store">
                                                    <span>점포명</span>
                                                </label>
                                            </div>
                                        </div>
                                    </dd>--%>
                                <dd class="store_search">
                                    <div class="in_box">
                                    <span class="form text">
                                        <input type="text" maxlength="16" id="searchKeyword" name="searchKeyword">
                                        <label for="searchKeyword">검색어 입력</label>
                                        <a href="#none" onclick="searchStore(1);return false;"
                                           class="btn_overlap se_box"><span class="blind">검색아이콘</span></a>
                                    </span>
                                    </div>
                                </dd>
                                <!-- //검색창 -->
                                <!-- btn -->
                                <dd class="btn_store">
                                    <div class="btn_wrap">
                                        <span class="btn btn_st03"><a href="#none"
                                                                      onclick="searchStore(1);return false;"
                                                                      class="c_02" id="btn_search">매장찾기</a></span>
                                    </div>
                                </dd>
                                <!-- //btn -->
                            </dl>
                        </div>
                    </dl>
                </form:form>
                <!-- //주변점포찾기 Form -->
            </div>
            <!-- //title -->
            <!-- map -->
            <div class="store_map">
                <div class="map_img" id="map">
                </div>
            </div>
            <!-- //map -->
        </div>
    </section>
    <!-- //store_find -->

    <!--검색 결과 테이블-->
    <section class="store_search_result">
        <div class="table-wrapper">
            <table class="store_table">
            </table>
        </div>

        <div class="pager">
            <!-- page -->
            <!-- //page -->
        </div>

    </section>

    <!-- 신규 가맹점 -->
    <section class="store_new">
        <div class="store_new_wrap">
            <h2 class="h2_tit fz_01">
                <span class="s_block">한솥의</span>
                <span class="s_block"><em class="f_b">신규 가맹점</em>을</span>
                <span class="s_block">소개합니다</span>
            </h2>
            <div class="store_new_list">

                <div class="indi_wrap">
                    <!-- page -->
                    <!-- //page -->
                </div>
                <!-- //page, btn -->
            </div>
        </div>
    </section>
    <!-- //신규 가맹점 -->
</div>

<!-- 팝업 -->
<div id="map_popup" style="display:none;">
    <div class="marker_wrap">
        <div class="store_info_wrap" style="display:block;">
            <div class="store_info_de">
                <h3 class="name" id="pop_store_name"></h3>
                <p class="info_add" id="pop_store_address"></p>
                <p class="info_call" id="pop_store_phone"></p>
                <div class="detail">
                    <a href="javascript:openLayerPopup('pop-store');" class="btn_de">자세히 보기</a>
                </div>
                <a href="#none" class="btn_close" onclick="closeOverlay();"><span class="blind">close</span></a>
            </div>
        </div>
    </div>
</div>
<!-- // 팝업-->

<!-- 자세히보기 popup -->
<div class="pop-wrap" id="pop-store" style="display:none">
    <dl class="pop-store-wrap">
        <dt class="pop-header fz_02"><span id="pop2_store_name"></span>
            <a href="javascript:closeLayerPopup();" class="btnp-close">close</a>
        </dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    <dl class="pop-store-info">
                        <dt>주소</dt>
                        <dd id="pop2_store_address"></dd>
                        <dt>전화번호</dt>
                        <dd id="pop2_store_phone"></dd>
                        <dt>영업시간</dt>
                        <dd id="pop2_store_business_hour"></dd>
                    </dl>
                    <!-- 매장이벤트 -->
                    <dl class="shop_event">
                        <dt>신규점 오픈 이벤트</dt>
                        <dd id="pop2_store_event"></dd>
                    </dl>
                    <!-- //매장이벤트 -->
                    <!-- 좌석/주차 -->
                    <dl class="shop_etc">
                        <dt><span class="blind">좌석여부</span></dt>
                        <dd class="seat" id="pop2_store_seat"></dd>
                        <dt><span class="blind">주차여부</span></dt>
                        <dd class="car" id="pop2_store_car"></dd>
                    </dl>
                    <!-- //좌석/주차 -->
                </div>
            </div>
        </dd>
    </dl>
</div>
<!-- // 자세히보기 popup -->

<!-- 검색결과 없을경우 popup -->
<div class="pop-wrap" id="pop-search" style="display:none">
    <dl class="pop-search-wrap">
        <dt class="pop-header fz_02"></dt>
        <dd class="pop-box">
            <div class="pop-cont">
                <div class="pop-msg">
                    검색결과가 없습니다.
                </div>
                <a href="javascript:closeLayerPopup();" class="btnp-close">확인</a>
            </div>
        </dd>
    </dl>
</div>
<!-- //검색결과 없을경우 popup -->

<script type="text/javascript">
  $(function () {
    mapResize();
    currentLoc();
    newStore(1);    // 신규 가맹점
  });

  var useCurrentLoc = true;
  var lat, lng;
  var map, markerOptions, infowindow, contentString;
  var mapContainer = document.getElementById("map"); // 지도를 표시할 div
  var eventStoreIdx = $.trim('${param.StoreLoc}');    // 매장이벤트에서 넘어온 idx
  var markerList = [];

  // 현재위치
  function currentLoc() {

    if (eventStoreIdx != "" && !isNaN(parseInt(eventStoreIdx))) {
      chanageLoc(eventStoreIdx);
    } else {
      lat = 37.4964502;   // 위치 검색안될시 기본노출 : 강남역점
      lng = 127.0278032;

      // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
      if (navigator.geolocation) {
        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function (position) {
          lat = position.coords.latitude; // 현재 위도
          lng = position.coords.longitude; // 현재 경도
        });
      }

      loadMap();
    }
  }

  // 지도생성
  function loadMap() {
    var loc = new naver.maps.LatLng(lat, lng);
    var mapOption = {
      center: loc.destinationPoint(0, 500), // 지도의 중심좌표
      zoom: 9, // 지도의 확대 레벨
      minZoom: 3, // 지도의 최소 레벨
      logoControl: false,        // naver 로고
      mapDataControl: false      // 저작권 컨트롤
    };

    // 지도를 생성한다
    map = new naver.maps.Map(mapContainer, mapOption);
  }

  // 정보창열기
  function makeOverlay(idx) {
    closeOverlay();
    $.getJSON("${cp}/api/store_detail/" + idx, function (rst) {

      var data = rst[0];
      var event = rst[1];

      $("#pop_store_name, #pop2_store_name").text(data.name);
      $("#pop_store_address, #pop2_store_address").text(data.address);
      $("#pop_store_phone, #pop2_store_phone").text(tss.util.phoneFormat(data.phoneNumber));
      $("#pop2_store_business_hour").html(tss.util.nl2br(data.businessHour));

      $("#pop2_store_event").text("");
      if (event.length > 0) {
        var event_content = "";
        $.each(event, function (ekey, eval) {
		  const todayTimestamp = new Date().getTime();
		  if(eval.startDt < todayTimestamp && todayTimestamp < eval.endDt + 86400000){
			  event_content += eval.title + "<br/>";  
		  }
        });
        if(event_content == ""){
        	$("#pop2_store_event").text("이벤트가 없습니다.");
        }else{
        	$("#pop2_store_event").html(event_content);
        }
      } else {
        $("#pop2_store_event").text("이벤트가 없습니다.");
      }

      if (data.seatYn == 'Y') $("#pop2_store_seat").removeClass("off");
      else $("#pop2_store_seat").addClass("off");

      if (data.parkingYn == 'Y') $("#pop2_store_car").removeClass("off");
      else $("#pop2_store_car").addClass("off");

      contentString = $("#map_popup").html();
      var moveLatLon = new naver.maps.LatLng(data.lat, data.lng);
      infowindow = new naver.maps.InfoWindow({
        content: contentString,
        position: moveLatLon,
        pixelOffset: new naver.maps.Point(-22, -57),
        disableAnchor: true
      });

      infowindow.open(map);
      //$(".store_info_wrap").show();


      // 클릭한 지점이 중심으로 오도록 이동
      //map.setCenter(moveLatLon);
      var moveLatLon = new naver.maps.LatLng(data.lat, data.lng);
      map.panTo(moveLatLon);
    });
  }

  // 정보창닫기
  function closeOverlay() {
    if (infowindow != null) infowindow.close();
  }

  // 지도사이즈
  function mapResize() {
    var rate = window.innerWidth <= 1023 ? 0.9 : 0.598;
    var w = $(".store_wrap").width();
    var h = w * rate;


    mapContainer.style.width = w + 'px';
    mapContainer.style.height = h + 'px';
  }

  $(window).on("resize", function () {
    mapResize();
  });

  // 매장찾기
  function searchStore(pageNo) {
    useCurrentLoc = false;
    $("#idx").val("");
    /*console.log($("input[name='searchCondition']:checked").val());
    if($("input[name='searchCondition']:checked").val() == 'address') { //주소로 검색

    } else { //매장명으로 검색

    }*/

    for (var i = 0 ; i < markerList.length ; i++) {
      markerList[i].setMap(null);
    }


    $.getJSON("${cp}/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // 지도에 마커를 생성하고 표시한다.
          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: '<c:url value="/assets/images/common/icon_map.png" />',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // 마커에 클릭이벤트 등록
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // 오버레이 생성
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });
      }

    });

    renderSearchResult(pageNo);

  }

  //매장찾기 리스트 렌더
  function renderSearchResult(pageNo) {
    $.getJSON("${cp}/api/store_search/" + pageNo + "?" + $("#searchForm").serialize(), function (data) {
      //console.log(data);

      var list = "";

      if (data.list.length > 0) {

        list += '<tr>';
        list += ' <th>매장명</th>';
        list += ' <th>연락처</th>';
        list += ' <th>주소</th>';
        list += '<tr>';

        $.each(data.list, function (key, val) {

          list += '<tr>';
          list += ' <td class="store_name"><a href="#none" onclick="makeOverlay(' + val["idx"] + ');">' + val["name"] + '</a></td>';
          list += ' <td>' + tss.util.phoneFormat(val["phoneNumber"]) + '</td>';
          list += ' <td>' + val["address"] + '</td>';
          list += '<tr>';

        });

        $(".store_table > tbody > tr").remove();
        $(".store_table").prepend(list);
        searchPaging(data.pagination);
        $(".store_search_result").show();


        var moveLatLon = new naver.maps.LatLng(data.list[0].lat, data.list[0].lng);
        map.setCenter(moveLatLon);

      } else {
        openLayerPopup('pop-search');
        $(".store_search_result").hide();
      }

    });
  }

  // 신규 가맹점 _ 위치변경
  function chanageLoc(idx) {
    useCurrentLoc = false;
    $("#idx").val(idx);
    loadMap();

    $.getJSON("${cp}/api/store_search?" + $("#searchForm").serialize(), function (data) {
      if (data.length > 0) {

        $.each(data, function (key, val) {
          // 지도에 마커를 생성하고 표시한다.
          //console.log(val)

          markerOptions = {
            position: new naver.maps.LatLng(val.lat, val.lng).destinationPoint(0, 0),
            map: map,
            icon: {
              url: '<c:url value="/assets/images/common/icon_map.png" />',
              size: new naver.maps.Size(50, 52),
              scaledSize: new naver.maps.Size(42, 52),

            }
          };

          // 마커에 클릭이벤트 등록
          var marker = new naver.maps.Marker(markerOptions);
          naver.maps.Event.addListener(marker, 'click', function () {
            // 오버레이 생성
            makeOverlay(val.idx);
          });

          markerList.push(marker);

        });

        // 마커의 중심을 이동 시킵니다.
        if (useCurrentLoc === false) {
          lat = data[0].lat;
          lng = data[0].lng;
        }

        makeOverlay(data[0].idx);
      }

    });

    // 스크롤 위치 이동
    var offset = $("#map_position").offset();
    $("html, body").animate({scrollTop: offset.top}, 400);
  }


  // 신규 가맹점
  function newStore(pageNo) {
    $.ajax({
      type: 'POST',
      url: "${cp}/api/store_new/" + pageNo,
      headers: {
        Accept: "application/json; charset=utf-8",
        "Content-Type": "application/json; charset=utf-8"
      },
      dataType: "json"
    }).done(function (data) {

      var list = "";
      if (data.list.length > 0) {

        $.each(data.list, function (key, val) {

          var dd = getFormattedDate(new Date(val["openDt"]));
          var opendt = dd.replace(/-/gi, ".").substring(2);

          list += '<li>';
          list += '   <p class="new_date">' + opendt + ' OPEN</p>';
          list += '   <div class="new_info">';
          list += '   <h3 class="h3_tit fz_02 f_b">' + val["name"] + '</h3>';
          list += '   <p class="new_add"><span>' + val["address"] + '</span></p>';
          list += '   <p class="new_call">' + tss.util.phoneFormat(val["phoneNumber"]) + '</p>';
          list += '   <dl>';
          list += '       <dt><span>OPEN EVENT</span></dt>';

          if (val["openEvent"] != null) {
            list += '       <dd><span>' + val["openEvent"] + '</span></dd>';
          } else {
            list += '       <dd><span>이벤트가 없습니다</span></dd>';
          }
          list += '   </dl>';
          list += '   <a href="#none" class="location" onclick="chanageLoc(' + val["idx"] + ');">위치보기</a>';
          list += '   </div>';
          list += '</li>';

        });

        $(".store_new_list > ul").remove();
        $(".store_new_list").prepend("<ul>" + list + "</ul>");
        paging(data.pagination);

      } else {
        $(".store_new").hide();
      }

    }).fail(function () {
      $(".store_new").hide();
    });
  }

  // 신규매장 페이징
  function paging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // 이전페이지
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">이전페이지</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.prevPageNo + ')" class="arr prev">이전페이지</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:newStore(' + i + ')">' + i + '</a>';
      }
    }

    // 다음페이지
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">다음페이지</a>';
    } else {
      txt += '        <a href="javascript:newStore(' + data.nextPageNo + ')" class="arr next">다음페이지</a>';
    }
    txt += '    </div>';
    txt += '</div>';

    $(".indi_wrap > div").remove();
    $(".indi_wrap").append(txt);

  }

  // 매장 검색결과 페이징
  function searchPaging(data) {

    var txt = '';
    txt += '<div class="pageinate">';
    txt += '    <div class="cont">';

    // 이전페이지
    if (data.prevPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr prev off">이전페이지</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.prevPageNo + ')" class="arr prev">이전페이지</a>';
    }

    for (var i = data.startPageNo; i <= data.endPageNo; i++) {
      if (data.currentPageNo == i) {
        txt += '        <a href="#none" class="active">' + i + '</a>';
      } else {
        txt += '        <a href="javascript:renderSearchResult(' + i + ')">' + i + '</a>';
      }
    }

    // 다음페이지
    if (data.lastPageNo == data.currentPageNo) {
      txt += '        <a href="#none" class="arr next off">다음페이지</a>';
    } else {
      txt += '        <a href="javascript:renderSearchResult(' + data.nextPageNo + ')" class="arr next">다음페이지</a>';
    }
    txt += '    </div>';
    txt += '</div>';

    $(".pager > div").remove();
    $(".pager").append(txt);

  }

</script>
</body>
</html>
