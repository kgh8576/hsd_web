<html>
<head>
    <title>한솥도시락 > 자주하는질문</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.footer.css"/>

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

      function gtag() {
        dataLayer.push(arguments);
      }

      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
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
      !function (f, b, e, v, n, t, s) {
        if (f.fbq) return;
        n = f.fbq = function () {
          n.callMethod ?
            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
        };
        if (!f._fbq) f._fbq = n;
        n.push = n;
        n.loaded = !0;
        n.version = '2.0';
        n.queue = [];
        t = b.createElement(e);
        t.async = !0;
        t.src = v;
        s = b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t, s)
      }(window, document, 'script',
        'https://connect.facebook.net/en_US/fbevents.js');
      fbq('init', '241666853119648');
      fbq('track', 'PageView');
    </script>
    <noscript>
        <img height="1" width="1" src="https://www.facebook.com/tr?id=241666853119648&ev=PageView&noscript=1"/>
    </noscript>
    <!-- End Facebook Pixel Code -->

    <%--<style>
        .accordion {
            /*background-color: #eee;
            color: #444;*/
            cursor: pointer;
            padding: 18px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
            /*transition: 0.4s;*/
        }

        .panel {
            padding: 0 18px;
            display: none;
            background-color: white;
            overflow: hidden;
        }
    </style>--%>


</head>
<body>

<div class="content area_footer">
    <section class="faq">
        <!-- 공지사항 -->
        <div class="no_list_wrap">
            <form:form id="searchForm" name="searchForm" method="get">
                <input type="hidden" name="pageNo" value="${FAQ.pageNo}"/>
                <div class="area_no_tit">
                        <%--<h2 class="h2_tit h2_01 mo_version">자주하는 질문</h2>--%>
                    <div class="title tab_st01">
                        <h2 class="h2_tit h2_02">고객 센터</h2>
                        <div class="tab_wrap">
                            <ul class="tab_menu col_02">
                                <li class="active"><a href="#none">자주하는 질문</a></li>
                                <li><a href="${cp}/footer/customer_voice">고객의 소리</a></li>
                            </ul>
                        </div>
                    </div>
                    <div>
                        <dl class="faq_form mo_version" style="overflow: hidden;">
                                <%--셀렉트박스--%>
                            <dd class="question_select">
                        <span class="select">
                            <select class="classic" title="질문 선택 분류" id="question_type" name="questionType">
                                <option value="">전체</option>
                                <c:if test="${!empty faqCategories}">
                                    <c:forEach var="faqCategory" items="${faqCategories}">
                                        <c:choose>
                                            <c:when test="${selectCategory eq faqCategory.category_code}">
                                                <option value="${faqCategory.category_code}" selected>${faqCategory.category_name}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${faqCategory.category_code}">${faqCategory.category_name}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </c:if>
                            </select>
                        </span>
                            </dd>
                            <!-- 검색창 -->
                            <dt class="question_search">
                                <div class="in_box">
                                    <span class="form text">
                                        <input type="text" id="fck_text_01" maxlength="16" name="searchInfo['all']" value="${FAQ.searchInfo['all']}">
                                        <label for="fck_text_01">검색어 입력</label>
                                        <a href="javascript:fnList(1);" class="btn_overlap se_box"><span class="blind">검색아이콘</span></a>
                                    </span>
                                </div>
                            </dt>
                            <!-- //검색창 -->
                            <dd class="faq-btn">
                                <div class="btn_wrap">
                                    <span class="btn btn_st03"><a href="javascript:fnList(1);"  style="min-height:50px; padding:15px" class="c_02">검색</a></span>
                                </div>
                            </dd>
                            <dd class="no_total">
                                <p>
                                    <span>총&nbsp;<em class="emphasis">${pagination.totalCount}</em>건</span>
                                </p>
                            </dd>
                        </dl>
                    </div>
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
                        <c:forEach var="faq" items="${list}">
                            <tr style="cursor:pointer;" onclick="fnView('${faq.idx}');" onmouseover="window.status='#none'" onmouseout="window.status=''">
                            <%--<tr style="cursor:pointer;" onmouseover="window.status='#none'" onmouseout="window.status=''" class="accordion">--%>
                                <td class="td_01 no">${faq.rowNum}</td>
                                <td class="td_02">
                                    <div class="list_tbody">
                                        <p>
                                            <span class="ell">${faq.title}</span>
                                        </p>
                                    </div>
                                </td>
                                <td>${faq.categoryName}</td>
                                <td class="td_03"><fmt:formatDate value="${faq.regDttm}" pattern="yyyy-MM-dd"/></td>
                            </tr>
                            <%--<tr class="panel">
                                <td colspan="4">
                                            ${faq.contents}
                                </td>
                            </tr>--%>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!-- //공지사항 list -->

                <!-- page -->
                <ui:pagination paginationInfo="${pagination}" jsFunction="fnList"/>
                <!-- //page -->
            </c:if>
        </div>
        <!-- //공지사항 -->
        <!-- hansot info -->
        <jsp:include page="info.jsp"/>
        <!-- //hansot info -->
    </section>
</div>
<script>

  // 페이지 이동
  function fnList(pageNo) {
    console.log('fn list : ', pageNo);
    document.searchForm.pageNo.value = pageNo;
    document.searchForm.submit();
  }

  // 상세페이지 이동
  function fnView(idx) {
    document.searchForm.action = "${cp}/footer/faq_view/" + idx;
    document.searchForm.submit();
  }
</script>

<script>
   // 아코디언 script
  /*var acc = document.getElementsByClassName("accordion");
  var i;

  for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var panel = this.nextElementSibling;
      if (panel.style.display === "block") {
        panel.style.display = "none";
      } else {
        panel.style.display = "block";
      }
    });
  }*/
</script>

</body>
</html>
