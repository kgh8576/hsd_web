<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>한솥도시락 > 공지사항</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.footer.css" />

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
    <section class="notice">
        <!-- 공지사항 -->
        <div class="no_list_wrap">
            <form:form id="searchForm" name="searchForm" method="get">
            <input type="hidden" name="pageNo" value="${notice.pageNo}" />
            <div class="area_no_tit">
                <h2 class="h2_tit h2_01 mo_version">공지사항</h2>
                <dl class="no_form mo_version">
                    <!-- 검색창 -->
                    <dt>
                        <div class="in_box">
                            <span class="form text">
                                <input type="text" id="fck_text_01" maxlength="16" name="searchInfo['all']" value="${notice.searchInfo['all']}">
                                <label for="fck_text_01">검색어 입력</label>
                                <a href="javascript:fnList(1);" class="btn_overlap se_box"><span class="blind">검색아이콘</span></a>
                            </span>
                        </div>
                    </dt>
                    <!-- //검색창 -->
                    <dd>
                        <div class="btn_wrap">
                            <span class="btn btn_st03"><a href="javascript:fnList(1);" class="c_02">검색</a></span>
                        </div>
                    </dd>
                    <dd class="no_total">
                        <p>
                            <span>총&nbsp;<em class="emphasis">${pagination.totalCount}</em>건</span>
                        </p>
                    </dd>
                </dl>
            </div>
            </form:form>

            <c:if test="${pagination.totalCount == 0}">
            <!-- 검색결과 없을경우 -->
            <div class="search_none">
                <p>검색 결과가 없습니다.</p>
            </div>
            <!-- //검색결과 없을경우 -->
            </c:if>

            <c:if test="${pagination.totalCount > 0}">
            <!-- 공지사항 list -->
            <div class="area_no_list">
                <table class="list_tb mo_version">
                    <caption>저층부</caption>
                    <colgroup>
                        <col class="width_01">
                        <col class="width_02">
                        <col class="width_03">
                        <col class="width_04">
                    </colgroup>
                    <tbody>
                    <c:forEach var="notice" items="${list}">
                    <tr style = "cursor:pointer;" onclick="fnView('${notice.idx}');" onmouseover="window.status='#none'" onmouseout="window.status=''">
                        <td class="td_01 no">${notice.rowNum}</td>
                        <td class="td_02">
                            <div class="list_tbody">
                                <p>
                                    <span class="ell">${notice.title}</span>
                                </p>
                            </div>
                        </td>
                        <td class="td_03"><fmt:formatDate value="${notice.regDttm}" pattern="yyyy-MM-dd" /></td>
                        <td class="td_04 no"><fmt:formatNumber value="${notice.hits}" type="number" /></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- //공지사항 list -->

            <!-- page -->
            <ui:pagination paginationInfo="${pagination}" jsFunction="fnList" />
            <!-- //page -->
            </c:if>
        </div>
        <!-- //공지사항 -->
        <!-- hansot info -->
        <jsp:include page="info.jsp" />
        <!-- //hansot info -->
    </section>
</div>
<script>
    // 페이지 이동
    function fnList(pageNo){
        document.searchForm.pageNo.value = pageNo;
        document.searchForm.submit();
    }

    // 상세페이지 이동
    function fnView(idx) {
        document.searchForm.action = "${cp}/footer/notice_view/" + idx;
        document.searchForm.submit();
    }
</script>

</body>
</html>
