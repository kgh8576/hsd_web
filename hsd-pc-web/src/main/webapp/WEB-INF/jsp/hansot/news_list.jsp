<html>
<head>
    <title>한솥 NEWS</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.hansot.css" />

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

<div class="content hansot">
    <section class="news">
        <!-- NEWS -->
        <div class="news_wrap">
            <!-- title -->
            <div class="ontitle">
                <h2 class="h2_tit h2_01 mo_version">한솥 NEWS</h2>
                <form:form id="searchForm" name="searchForm" method="get" action="" onsubmit="return false;">
                <input type="hidden" id="pageNo" name="pageNo" value="1" />
                <dl class="no_form mo_version">
                    <!-- 검색창 -->
                    <dt>
                        <div class="in_box">
                            <span class="form text">
                                <input type="text" id="fck_text_01" maxlength="16" name="searchWord">
                                <label for="fck_text_01">검색어 입력</label>
                                <a href="javascript:fnSearch();" class="btn_overlap se_box"><span class="blind">검색아이콘</span></a>
                            </span>
                        </div>
                    </dt>
                    <!-- //검색창 -->
                    <dd>
                        <div class="btn_wrap">
                            <span class="btn btn_st03"><a href="javascript:fnSearch();" class="c_02">검색</a></span>
                        </div>
                    </dd>
                    <dd class="no_total">
                        <p>
                            <span>총&nbsp;<em class="emphasis" id="totalCnt"></em>건</span>
                        </p>
                    </dd>
                </dl>
                </form:form>
            </div>
            <!-- //title -->

            <!-- 검색결과 없을경우 -->
            <div class="search_none" id="search_none" style="display:none;">
                <p>검색 결과가 없습니다.</p>
            </div>
            <!-- //검색결과 없을경우 -->

            <!-- list -->
            <div class="news_list_wrap mo_version" id="listArea">
            </div>
            <!-- //list -->
            <div class="btn_wrap btn_more" id="btnMore">
                <span class="btn btn_st04">
                    <a href="javascript:fnMore();" class="c_05">더 보기</a>
                </span>
            </div>
        </div>
        <!-- //NEWS -->
    </section>
</div>
<script type="text/javascript">
    var bid = "news";
    var pageNo = 1;
    $(function(){
        getList();
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
            // 전체갯수
            $("#totalCnt").text(data.pagination["totalCount"]);

            var list = "";

            // 리스트
            if(data.list.length > 0) {
                $.each(data.list, function (key, val) {

                    var regdt = getFormattedDate(new Date(val["regDt"]));

                    list += '<li>';
                    list += '   <div class="news_list">';
                    list += '       <div class="news_visual">';
                    list += '           <img src="' + val["thumImg"] + '" alt="news" />';
                    list += '       </div>';
                    list += '       <div class="news_txt">';
                    list += '           <span class="news_div">' + val["etc"] + '</span>';
                    list += '           <h3 class="h3_tit fz_02">';
                    list += '               <a href="'+val["link"]+'" target="_blank" title="새 창 열림">' + val["title"] + '</a>';
                    list += '           </h3>';
                    list += '           <p class="story_txt">';
                    list += '               <span>' + val["description"] + '</span>';
                    list += '           </p>';
                    list += '           <p class="date">' + regdt + '</p>';
                    list += '       </div>';
                    list += '   </div>';
                    list += '</li>';

                });

                $("#search_none").hide();
                if(pageNo == 1) $("#listArea").empty();
                if($("#listArea > ul").length > 0) {
                    $("#listArea > ul").append(list);
                } else{
                    $("#listArea").append("<ul>" + list + "</ul>");
                }
            } else {
                $("#listArea").empty();
                $("#search_none").show();
            }

            $("#pageNo").val(data.pagination["currentPageNo"]);

            // 더보기
            if(data.pagination["currentPageNo"] >= data.pagination["endPageNo"]){
                $("#btnMore").hide();
            } else {
                $("#btnMore").show();
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
    function fnSearch(){
        pageNo = 1;
        getList();
    }
</script>
</body>
</html>
