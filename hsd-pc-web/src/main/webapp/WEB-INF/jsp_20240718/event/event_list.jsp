<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥도시락 > 온라인 이벤트</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.event.css" />

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

	  gtag('event', 'view_promotion', {'event_category' : 'engagement',});
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

<div class="content event">
    <section class="on_event_list">
        <!-- 온라인 이벤트 -->
        <div class="online_wrap tab_st01">
            <!-- title -->
            <form:form id="searchForm" name="searchForm" method="post" action="">
            <input type="hidden" id="pageSize" name="pageSize" value="12" />
            <input type="hidden" id="pageNo" name="pageNo" value="${param.pageNo}" />
            <input type="hidden" id="cate" name="cate" value="${param.cate}" />
            </form:form>
            <div class="ontitle">
                <h2 class="h2_tit h2_01 mo_version">이 달의 이벤트</h2>
                <%--<div class="tab_wrap mo_version ">--%>
                    <%--<ul class="tab_menu">--%>
                        <%--<li> <a href="javascript:fnSearch();">전체</a></li>--%>
                        <%--<c:forEach items="${codeList}" var="code">--%>
                        <%--<li <c:if test="${param.cate == code.idx}">class="active"</c:if> ><a href="javascript:fnSearch('${code.idx}')">${code.getCVal()}</a></li>--%>
                        <%--</c:forEach>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            </div>
            <!-- //title -->

            <div class="tab_cont active mo_version" id="listArea">
            </div>

            <!-- btn -->
            <div class="btn_wrap" id="btnMore">
                <span class="btn btn_st04">
                    <a href="javascript:fnMore();" class="c_05">더 보기</a>
                </span>
            </div>
            <!-- //btn -->
        </div>
        <!-- //온라인 이벤트 -->
    </section>
</div>
<script type="text/javascript">
    var bid = "event";
    var pageNo = 1;
    $(function(){
        getList();
        if($(".tab_menu .active").length < 1) $(".tab_menu li:eq(0)").addClass("active");
    });

    // 리스트 불러오기
    function getList(){
        $("#pageNo").val(pageNo);
        $.ajax({
            type: 'POST',
            url: "${cp}/api/board/"+bid,
            headers: {
                Accept : "application/json; charset=utf-8",
                "Content-Type": "application/json; charset=utf-8"
            },
            data: JSON.stringify(tss.util.serializeObject($("#searchForm"))),
            dataType : "json"
        }).done(function(data) {

            var list = "";

            // 리스트
            if(data.list.length > 0) {
                $.each(data.list, function (key, val) {

                    var startdt = getFormattedDate(new Date(val["startDt"]));
                    var enddt = getFormattedDate(new Date(val["endDt"]));
                    var now = new Date();
                    var ing = true;
                    var liClass = '';

                    if(new Date(val["endDt"]) < new Date(now.getFullYear(), now.getMonth(), now.getDate())) {
                        ing = false;
                        liClass = 'off';
                    }

                    list += '<li class="' + liClass + '">';
                    list += '   <a href="javascript:goDetail(\'' + val["idx"] + '\')" class="event_link"></a>';
                    list += '   <figure class="ev_wrap">';
                    list += '   <span class="ev_visual">';
                    list += '       <img src="' + val["thumImg"] + '" alt="이벤트" />';
                    list += '   </span>';
                    list += '   <figcaption>';
                    list += '       <h3 class="h3_tit fz_02">';
                    list += '           <span>' + val["title"] + '</span>';
                    list += '       </h3>';
                    if(ing == false) {
                        list += '   <p class="date">이벤트가 종료되었습니다.</p>';
                        list += '   <span class="event_ie">종료</span>';
                    } else {
                        list += '   <p class="date">' + startdt + '~' + enddt + '</p>';
                        list += '   <span class="event_ie">진행중</span>';
                    }
                    list += '      </figcaption>';
                    list += '   </figure>';
                    list += '</li>';

                });

                if(pageNo == 1) $("#listArea").empty();
                if($("#listArea > ul").length > 0) {
                    $("#listArea > ul").append(list);
                } else{
                    $("#listArea").append("<ul class='event_list_wrap'>" + list + "</ul>");
                }

                // focus
                $(".event_list_wrap li a").on('mouseover focusin', function(){
                    $(this).parent().addClass('on');
                })

                $(".event_list_wrap li a").on('mouseleave focusout', function(){
                    $(this).parent().removeClass('on');
                });
            } else {
                list += '<div class="search_none">';
                list += '    <p>검색 결과가 없습니다.</p>';
                list += '</div>';
                $("#listArea").html(list);
            }

            $("#pageNo").val(data.pagination["currentPageNo"]);

            // 더보기
            if(data.pagination["currentPageNo"] >= data.pagination["endPageNo"]){
                $("#btnMore").hide();
            }

        }).fail(function() {
            tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
        });
    }

    // 더보기
    function fnMore(){
        pageNo++;
        getList();
    }

    // 검색
    function fnSearch(cate){
        pageNo = 1;
        $("#cate").val(cate);
        getList();
    }

    // 상세보기
    function goDetail(idx){
        location.href = "${cp}/event/event_view/"+idx+"?"+$("#searchForm").serialize();
    }
</script>
</body>
</html>
