<html>
<head>
    <title>한솥도시락 > 1:1 문의</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.join.css" />

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

<div class="content area_footer">
    <section class="question">
        <form:form id="listForm" name="listForm" method="get" action="${cp}/join/question_list">
            <input type="hidden" name="pageNo" value="${result.pageNo}" />
            <c:forEach items="${result.searchInfo}" var="item">
            <input type="hidden" name="searchInfo['${item.key}']" value="${item.value}" />
            </c:forEach>
        </form:form>
        <!-- 1:1 문의 view -->
        <div class="no_view_wrap">
            <div class="area_no_tit mo_version">
                <h2 class="h2_tit h2_01"><a href="#none" onclick="goList();return false;">1:1 문의</a></h2>
            </div>
            <div class="question_view mo_version cont_st02">
                <div class="area_article">
                    <h3 class="h3_tit fz_02">
                        <span>${result.title}</span>
                    </h3>
                    <div class="subject">
                        <span class="date"><fmt:formatDate value="${result.regdt}" pattern="yyyy-MM-dd" /></span>
                    </div>
                </div>
                 <div class="area_cont">
                    <div class="view_txt pa_02 view_detail_box">
                        ${result.contents}
                    </div>
                     <div class="view_txt pa_02 view_detail_box">
                         <c:choose>
                             <c:when test="${result.resContents == null || result.resContents == ''}">
                                 답변 대기중입니다.
                             </c:when>
                             <c:otherwise>
                                 ${result.resContents}
                             </c:otherwise>
                         </c:choose>
                    </div>
                    <div class="view_btn_wrap">
                        <div class="btn_wrap view_list">
                            <span class="btn btn_st03 detail_button">
                                <a href="#none" onclick="goDelete('${result.idx}');return false;" class="active c_01 delete_button"><em class="mo_none">삭제</em></a>
                            </span>
                            <span class="btn btn_st03 detail_button" >
                                <a href="#none" onclick="goList();return false;" class="active c_01 list_button"><em class="mo_none">목록</em></a>
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
                                    <a href="javascript:goView('${prev.prevIdx}');"><em class="blind">prev</em></a>
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
                                    <a href="javascript:goView('${next.nextIdx}');"><em class="blind">next</em></a>
                                </span>
                                <p class="n_txt np_txt">${next.nextTitle}</p>
                            </div>
                            </c:if>
                        </div>
                        <!-- // next,prev -->
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript">
    // 목록이동
    function goList(){
        location.href = "${cp}/join/question_list";
    }

    function goDelete(idx){
        if(confirm("정말 삭제 하시겠습니까?")){
            location.href = "${cp}/join/question_delete/"+idx;
        }
    }

    // 이전글, 다음글
    function goView(idx){
        document.listForm.action = "${cp}/join/question_view/"+idx;
        document.listForm.submit();
    }
</script>
</body>
</html>
