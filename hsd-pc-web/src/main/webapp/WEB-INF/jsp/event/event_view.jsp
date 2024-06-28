<html>
<head>
    <title>한솥도시락 > 온라인 이벤트</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.event.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.event.layer.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.inquiry.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.join.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/jquery.mCustomScrollbar.min.css"/>
    <%--<script type="text/javascript" src="${cp}/assets/js/ev_toggle.js"></script>--%>
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

      //모바일 이벤트 종료로 주석처리 
      //
      // function gtag() {
      //   dataLayer.push(arguments);
      // }

      gtag('js', new Date());

      gtag('config', 'UA-111772169-1');
    </script>

    <!-- Global site tag (gtag.js) - AdWords: 864658366 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-864658366"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      //모바일 이벤트 종료로 주석처리
      // function gtag() {
      //   dataLayer.push(arguments);
      // }

      gtag('js', new Date());

      gtag('config', 'AW-864658366');
    </script>
</head>
<body>

<div class="content event">
    <section class="on_event_view">
        <form:form id="listForm" name="listForm" method="get" action="${cp}/event/event_list">
            <input type="hidden" name="pageNo" value="${board.pageNo}"/>
            <input type="hidden" name="cate" value="${board.cate}"/>
        </form:form>
        <!-- 이벤트 view -->
        <div class="online_wrap">
            <!-- title -->
            <div class="ontitle view">
                <h2 class="h2_tit h2_01 mo_version"><a href="javascript:goList();">이 달의 이벤트</a></h2>
            </div>
            <!-- //title -->
            <!-- 이벤트 cont -->
            <div class="event_view mo_version cont_st02">
                <!-- article -->
                <div class="area_article">
                    <%--<span class="event_div">${result.cateName}</span>--%>
                    <h3 class="h3_tit fz_02">
                        <span>${result.title}</span>
                    </h3>
                    <div class="subject">
                        <span class="date">
                            <fmt:formatDate value="${result.startDt}" pattern="yyyy-MM-dd"/> ~
                            <fmt:formatDate value="${result.endDt}" pattern="yyyy-MM-dd"/>
                        </span>
                    </div>

                    <!--  2018_04_02_Finnq 한솥 모바일 상품권 도착 -->
                     <%--<c:if test="${result.idx eq 258 or result.idx eq 259 or result.idx eq 269 or result.idx eq 270}">--%>
                        <%--<div class="mWrap" id="mWrap">--%>
                            <%--<div class="events_1">--%>
                                <%--<img src="http://devcdn.cocas.co.kr/2018/hansot/images/02.jpg"/>--%>
                                <%--<a href="#" onClick="now_get();"><img--%>
                                        <%--src="http://devcdn.cocas.co.kr/2018/hansot/images/btn_03.png"--%>
                                        <%--class="btn02"/></a>--%>
                            <%--</div>--%>
                            <%--<div class="events_1m">--%>
                                <%--<img src="http://devcdn.cocas.co.kr/2018/hansot/images/01.jpg"/>--%>
                                <%--<a href="#" onClick="now_get();"><img--%>
                                        <%--src="http://devcdn.cocas.co.kr/2018/hansot/images/btn_02.png"--%>
                                        <%--class="btn02"/></a>--%>
                            <%--</div>--%>
                            <%--<a href="#" onClick="toggle_object();"><img--%>
                                    <%--src="http://devcdn.cocas.co.kr/2018/hansot/images/check_01.png" id="check_01"--%>
                                    <%--class="check_01"/></a>--%>
                            <%--<a href="#" onClick="close_banner();"><img--%>
                                    <%--src="http://devcdn.cocas.co.kr/2018/hansot/images/btn_01.png" class="btn01"/></a>--%>
                        <%--</div>--%>
                    <%--</c:if>--%>
                    <!--  2018_04_02_Finnq 한솥 모바일 상품권 도착 끝-->

                </div>
                <!-- //article -->
                <!-- area_cont -->
                <div class="area_cont">
                    <div class="view_txt pa_02">
                        ${result.contents}

                        <c:if test="${result.cate == '9'}">
                            <!-- 이벤트 신청 폼 -->
                            <form:form id="regForm" name="regForm" method="post" action="${cp}/event/menu_proc"
                                       onsubmit="return;">
                                <input type="hidden" name="bidx" value="${result.idx}"/>
                                <div class="customer_info customer_sub event_form">
                                    <!-- 이벤트 신청 -->
                                    <div class="customer_form">
                                        <h4 class="h4_tit fz_02">이벤트 신청</h4>
                                        <!-- 이름 -->
                                        <div class="in_box">
                                            <dl class="in_box_th">
                                                <dt>이름</dt>
                                                <dd>
                                            <span class="form text">
                                                <input type="text" id="fck_text_01" name="name">
                                                <label for="fck_text_01">이름을 입력해주세요</label>
                                            </span>
                                                </dd>
                                            </dl>
                                        </div>
                                        <!-- //이름 -->
                                        <!-- 이메일 -->
                                        <div class="in_box">
                                            <dl class="in_box_th">
                                                <dt>이메일</dt>
                                                <dd>
                                            <span class="form text">
                                                <input type="text" id="fck_email" name="email" style="ime-mode:active">
                                                <label for="fck_email">이메일 주소를 입력해주세요</label>
                                            </span>
                                                </dd>
                                            </dl>
                                        </div>
                                        <!-- //이메일 -->
                                        <!-- 휴대폰 -->
                                        <div class="in_box">
                                            <dl class="in_box_th">
                                                <dt>휴대폰</dt>
                                                <dd>
                                            <span class="form text">
                                                <input type="text" id="fck_phone" name="hp" maxlength="13">
                                                <label for="fck_phone">휴대폰 번호를 입력해주세요</label>
                                            </span>
                                                </dd>
                                            </dl>
                                        </div>
                                        <!-- //휴대폰 -->
                                        <!-- 신청내용 -->
                                        <div class="in_box in_qna">
                                            <dl class="in_box_th">
                                                <dt>신청내용</dt>
                                                <dd>
                                            <span class="form text">
                                                <input type="text" id="fck_text_02" name="title" value="단체주문 이벤트 참여">
                                                <label for="fck_text_02">제목을 입력해주세요</label>
                                            </span>
                                                </dd>
                                                <dd>
                                                    <div class="textarea_wrap cont_area">
                                                <textarea title="내용입력" placeholder="내용을 입력해주세요." name="contents">
이벤트 참여

○ 아래 항목에 기입하시기 바랍니다.

· 이용 점포명 :
· 점 포 번 호 :
· 구 매 일 자 :
· 구 매 내 역 :
· 영수증 번호 :
. 이벤트를 알게된 경로 :

○ 영수증 사진을 아래에 파일 첨부하시기 바랍니다.
○ 위 내용을 확인하신 후 확인 버튼을 누르세요.
○ 모바일 상품권은 15일 이내에 문자로 발송해 드립니다.
○ 제공하신 개인정보는 행사종료 후 개인정보 취급방침에 따라 일괄 폐기를 진행 합니다.

감사합니다.
                                                </textarea>
                                                    </div>
                                                </dd>
                                            </dl>
                                        </div>
                                        <!-- //신청내용 -->
                                        <!-- 파일첨부 -->
                                        <div class="in_box">
                                            <dl class="in_box_th">
                                                <dt>파일첨부</dt>
                                                <dd class="file_wrap">
                                            <span class="form text">
                                            <input type="text" id="attachName" name="attachName" readonly="readonly"
                                                   onfocus="this.blur();"/>
                                            <label for="fileupload" style="overflow:hidden;">
                                                <span class="btn_overlap" style="line-height: 120%;">파일첨부</span>
                                                <input type="file" id="fileupload" name="file"
                                                       data-ref-type="event-order" class="file_input"
                                                       onfocus="this.blur();"/>
                                            </label>
                                            <input type="hidden" id="attachFile" name="attachFile" value="">
                                        </span>
                                                </dd>
                                            </dl>
                                        </div>
                                        <!-- //파일첨부 -->
                                        <!-- 개인정보 수집 이용동의 -->
                                        <div class="join_sub event_prive">
                                            <h4 class="h4_tit prive">개인정보 수집·이용 동의</h4>
                                            <div class="textarea_wrap">
                                                <div class="cont_area">
                                                    <jsp:include page="../footer/agree1.jsp"/>
                                                </div>
                                                <!-- 동의 -->
                                                <span class="form checkbox">
                                            <input type="checkbox" id="agree_01">
                                            <label for="agree_01">동의합니다</label>
                                            <span class="ck_txt">(필수)</span>
                                        </span>
                                                <!-- //동의 -->
                                            </div>
                                        </div>
                                        <!-- //개인정보 수집 이용동의 -->
                                        <div class="btn_wrap pa_01">
                                            <span class="btn btn_st03"><a href="#none" class="c_03"
                                                                          onclick="$('#regForm').submit();">보내기</a></span>
                                        </div>
                                    </div>
                                    <!-- //이벤트 신청 -->
                                </div>
                            </form:form>
                            <!-- // 이벤트 신청 폼 -->
                        </c:if>
                    </div>
                    <!-- area btn-->
                    <div class="view_btn_wrap">
                        <div class="btn_wrap view_list">
    <span class="btn btn_st03">
    <a href="javascript:goList();" class="active c_01"><em class="mo_none">목록</em></a>
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
                        <!-- //next,prev -->
                    </div>
                    <!-- //area btn -->
                </div>
                <!-- //area_cont -->
            </div>
            <!-- //이벤트 cont -->
        </div>
        <!-- //이벤트 view -->
    </section>
</div>
<script type="text/javascript">


    //모바일 이벤트 종료로 주석처리
//  $( document ).ready(function() {
//        init();
//  });
//
//  function init()
//  {
//    var myCookie = getCookie("notToday");
//    if(myCookie!="Y" || myCookie === null ){
//      document.getElementById('mWrap').style.display="block";
//    } else
//    {
//      document.getElementById('mWrap').style.display = "none";
//    }
//  }


  if ($(".cont_area").length > 0) {
    $(".cont_area").mCustomScrollbar({
      theme: "minimal-dark",
      scrollInertia: 400
    });
  }

  $(function () {
    // 파일업로드
    var url = '${cp}/api/fileupload/' + $('#fileupload').data('ref-type');
    $('#fileupload').fileupload({
      url: url,
      dataType: 'json',
      done: function (e, data) {
        $("#attachFile").val('/event-order/' + data.result.attach_file);  // 파일 경로
        $("#attachName").val(data.result.attach_name);  // 파일명
      },
      fail: function (e, data) {
        alert('파일 업로드 중에 에러가 발생했습니다.');
      }
    });


    // validate & submit
    $('#regForm').validate({
      rules: {
        name: {
          required: true
        },
        email: {
          required: true,
          email: true
        },
        hp: {
          required: true,
          chkPhone: true
        },
        title: {
          required: true
        },
        contents: {
          required: true
        }
      },
      messages: {
        name: {
          required: "이름을 입력해 주세요."
        },
        email: {
          required: "이메일을 입력해 주세요.",
          email: "이메일을 정확히 입력해 주세요."
        },
        hp: {
          required: "휴대폰번호를 입력해 주세요.",
          chkPhone: "휴대폰번호를 정확히 입력해 주세요. ex)010-0000-0000"
        },
        title: {
          required: "제목을 입력해 주세요."
        },
        contents: {
          required: "내용을 입력해 주세요."
        }
      },
      submitHandler: function (form) {
        if (!$("#agree_01").is(":checked")) {
          alert("개인정보 수집·이용에 동의해주세요.");
          $("#agree_01").focus();
          return;
        }

        $.ajax({
          type: 'PUT',
          url: "${cp}/api/event_order",
          headers: {
            Accept: "application/json; charset=utf-8",
            "Content-Type": "application/json; charset=utf-8"
          },
          data: JSON.stringify(tss.util.serializeObject($(form)))
        }).done(function () {
          tss.util.alert("이벤트 참여가 완료되었습니다.");
          location.href = "${cp}/";
        }).fail(function () {
          tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
        });
        return false;
      }
    });
  });

  // 목록이동
  function goList() {
    document.listForm.submit();
  }

  // 이전글, 다음글
  function goView(idx) {
    document.listForm.action = "${cp}/event/event_view/" + idx + "?" + $("#listForm").serialize();
    document.listForm.submit();
  }
</script>
</body>
</html>
