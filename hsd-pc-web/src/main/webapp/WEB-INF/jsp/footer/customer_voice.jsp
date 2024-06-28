<html>
<head>
    <title>한솥도시락 > 고객의 소리</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.footer.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.inquiry.css"/>
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/jquery.mCustomScrollbar.min.css"/>

    <script type="text/javascript" src="${cp}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="${cp}/assets/js/korToEng.js"></script>
    <script type="text/javascript" src="${cp}/assets/js/jquery.autocomplete.min.js"></script>

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
</head>
<body>

<div class="content area_footer">
    <section class="customer_voice">
        <!-- 고객의 소리 -->
        <div class="customer_wrap mo_version">
            <div class="title tab_st01">
                <h2 class="h2_tit h2_02">고객 센터</h2>
                <div class="tab_wrap">
                    <ul class="tab_menu col_02">
                        <li><a href="${cp}/footer/faq_list">자주하는 질문</a></li>
                        <li class="active"><a href="#none">고객의 소리</a></li>
                    </ul>
                </div>
            </div>
            <div class="customer_cont cont_st02">
                <!-- customer_left -->
                <div class="customer_tit fz_02">
                    <p>
                        <span class="s_block">항상 고객에게</span>
                        <span class="s_block">귀 기울이는</span>
                        <span class="s_block">한솥이 되겠습니다</span>
                    </p>
                </div>
                <!-- //customer_left -->
                <!-- customer_right -->
                <div class="customer_sub">
                    <form:form id="regForm" name="regForm" method="POST" action="${cp}/footer/customer_voice_proc">
                    <div class="customer_info pa_02">
                        <!-- 고객정보 -->
                        <c:if test="${currentUser==null}">
                            <div class="customer_form" style="margin-bottom: 75px;">
                                <h4 class="h4_tit fz_02">고객정보</h4>

                                    <%--비로그인 유저--%>

                                <!-- 이름 -->
                                <div class="in_box">
                                    <dl class="in_box_th">
                                        <dt>이름</dt>
                                        <dd>
                                        <span class="form text">
                                            <input type="text" id="fck_text_01" name="name"
                                            <c:if test="${currentUser!=null}">
                                                   value="${currentUser.name}"
                                            </c:if>
                                            >
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
                                            <input type="text" id="fck_email" name="email"
                                            <c:if test="${currentUser!=null}">
                                                   value="${currentUser.email}"
                                            </c:if>
                                                   style="width:400px;
                                                   margin-right:10px;
                                                   -webkit-ime-mode:disabled;
                                                   -moz-ime-mode:disabled;
                                                   -ms-ime-mode:disabled;
                                                   ime-mode: disabled">
                                            <label for="fck_email">이메일 주소를 입력해주세요</label>
                                        </span>
                                            <!-- checkbox -->
                                            <span class="form checkbox">
                                            <input type="checkbox" id="agree_email" name="agreeEmail">
                                            <label for="agree_email">받기</label>
                                        </span>
                                        <dt style="font-size: 15px; margin-top: 5px;">*문의 내용에 대한 답변을 이메일로 받기 원하실 경우 받기를
                                            선택해주세요.
                                        </dt>
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
                                            <input type="text" id="fck_phone" name="hp"
                                                   style="width:400px; margin-right:10px"
                                            <c:if test="${currentUser!=null}">
                                                   value="${currentUser.mobile_phone}"
                                            </c:if>
                                            >
                                            <label for="fck_phone">휴대폰 번호를 입력해주세요</label>
                                        </span>
                                            <!-- checkbox -->
                                            <span class="form checkbox">
                                            <input type="checkbox" id="agree_mobile" name="agreeMobile">
                                            <label for="agree_mobile">받기</label>
                                        </span>
                                        <dt style="font-size: 15px; margin-top: 5px;">*문의 내용에 대한 답변을 문자로 받기 원하실 경우 받기를
                                            선택해주세요.
                                        </dt>
                                        </dd>
                                    </dl>
                                </div>
                                <!-- //휴대폰 -->
                            </div>
                        </c:if>
                        <!-- //고객정보 -->
                        <!-- 문의내용 -->
                        <div class="customer_form form_02" style="margin-top:0">
                            <h4 class="h4_tit fz_02">문의내용</h4>
                            <!-- 상담구분 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>문의구분</dt>
                                    <dd>
                                        <span class="select">
                                            <select class="classic" id="cate" name="cate" title="상담구분">
                                                <option value="">문의구분을 선택해주세요</option>
                                            </select>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //문의구분 -->
                            <!-- 점포명 -->
                            <!-- 시/도 선택 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>점포명</dt>
                                    <!-- 시/도 선택 -->
                                    <dd class="shop_select">
                                        <span class="select">
                                            <select class="classic" id="sido-cv" name="sido" title="시/도 선택 구분">
                                                <option value="">시/도 선택</option>
                                            </select>
                                        </span>
                                    </dd>
                                    <!-- //시/도 선택 -->
                                    <!-- 군/구 선택 -->
                                    <dd class="shop_select">
                                        <span class="select">
                                            <select class="classic" id="gungoo-cv" name="gungoo" title="군/구 선택 구분">
                                                <option value="">군/구 선택</option>
                                            </select>
                                        </span>
                                    </dd>
                               <%--     <dd class="shop_select">
                                            <div class="btn_wrap search_store_btn">
                                <span class="btn btn_st03"><a
                                        href="#none" class="c_01" id="search_shop_button">검색</a></span>
                                            </div>

                                    </dd>--%>
                                    <!-- //군/구 선택 -->
                                    <span class="form text autocomplete-wrapper">
                                                <input type="text" id="store-cv" name="store">
                                                <label for="store-cv">점포명을 입력해주세요</label>
                                        </span>

                                </dl>
                                    <%-- <dd class="shop_select shop_last">
                                        <span class="select">
                                           <select class="classic" id="store" name="store" title="점포명 선택">
                                                <option value="">점포명 선택</option>
                                            </select>
                                    </span>
                                </dd>--%>
                                <!-- //점포명 선택 -->
                            </div>
                            <!-- //점포명 -->
                            <!-- 문의내용 -->
                            <div class="in_box in_qna">
                                <dl class="in_box_th">
                                    <dt>문의내용</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="fck_text_02" name="title">
                                            <label for="fck_text_02">제목을 입력해주세요.</label>
                                        </span>
                                    </dd>
                                    <dd>
                                        <div class="textarea_wrap cont_area">
                                                <textarea title="내용입력" placeholder="내용을 입력해주세요."
                                                          name="contents"></textarea>
                                        </div>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //문의내용 -->
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
                                                <input type="file" id="fileupload" name="file" data-ref-type="customer"
                                                       class="file_input" onfocus="this.blur();"/>
                                            </label>
                                            <input type="hidden" id="attachFile" name="attachFile" value="">
                                        </span>
                                    </dd>
                                    <dt style="font-size: 15px; margin-top: 5px;">*업로드 최대용량은 50MB 입니다.</dt>
                                </dl>
                            </div>
                            <!-- //파일첨부 -->
                        </div>
                        <!-- //문의내용 -->
                        <div class="ad_wrap">
                            <h4 class="h4_tit fz_02">개인정보 수집 동의</h4>
                            <span class="form checkbox">
                                    <input type="checkbox" id="agree_01" name="agree1">
                                    <label for="agree_01">개인정보 수집 이용에 동의 합니다.</label>
                                </span>
                            <div class="area_step first">
                                <div class="fz_04 cont_area">
                                    <span>- 개인정보 수집·이용 목적 : 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 만14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인, 각종 고지·통지, 고충처리 등을 목적으로 개인정보를 처리합니다.</span>
                                    <span>- 개인정보 항목 : 성명, 생년월일, 연락처, 주소, 이메일, 서비스 이용 기록, 접속 로그, 쿠키, 접속 IP 정보</span>
                                    <span>- 보유기간 : 회원 탈퇴 시 까지 보유</span>
                                    <span>- 보유근거 : 고객문의, 요청관리, 사용자 식별, 서비스 개선</span>
                                </div>
                            </div>
                        </div>
                            <%--<jsp:include page="/WEB-INF/layout/common/privacy.jsp"/>--%>
                        <!-- btn -->
                        <div class="customer_btn">
                                <%--  <div class="btn_wrap">
                                      <span class="btn btn_st03"><a href="javascript:$('#regForm').reset();"
                                                                    class="c_03">취소</a></span>
                                  </div>--%>
                            <div class="btn_wrap">
                                <span class="btn btn_st03"><a href="#none" class="c_01"
                                                              onclick="$('#regForm').submit();">문의신청</a></span>
                            </div>
                        </div>
                        <!--// btn -->
                        </form:form>
                    </div>
                    <!-- //customer_right -->
                </div>
            </div>
            <!-- //고객의 소리 -->
            <!-- hansot info -->
            <jsp:include page="info.jsp"/>
            <!-- //hansot info -->
    </section>
</div>
<style>
    div.cont_area {
        height: 150px;
        border: 2px solid #eeecec;
        box-sizing: border-box;
        padding: 12px 18px;
        overflow: hidden;
    }

    div.cont_area span {
        display: block;
        color: #939292;
        line-height: 160%;
        font-weight: normal;
    }
</style>
<script type="text/javascript">
    // 개인정보 수집동의
    $(".cont_area").mCustomScrollbar({
        theme: "minimal-dark",
        scrollInertia: 400
    });

    // 문의구분
    searchCode('CC01', 'cate');

    $(function () {
        // 시도, 군구, 점포명선택
        if ($("#sido-cv").length > 0) {
            searchSidoCV();

            $("#sido-cv").on("change", function () {
                searchGungooCV();
            });
        }
        if ($("#store-cv").length > 0) {
            $("#gungoo-cv").on("change", function () {
                //       searchStoreCV();
            });
        }
        /*     $( "#store-cv" ).autocomplete({
                 source: "search.php",
                 minLength: 2,
                 select: function( event, ui ) {
                     log( "Selected: " + ui.item.value + " aka " + ui.item.id );
                 }
             });*/

/*        $('#search_shop_button').click(function() {
            var sido = $("#sido-cv").val();
            var gungoo = $("#gungoo-cv").val();
            if(sido == "" || gungoo == "") return;

            $.getJSON("/api/find/store?sido=" + sido + "&gungoo=" + gungoo, function(data){
                $("#store > option").not(":eq(0)").remove();
                $.each(data,function(key,val){
                    $("#store").append("<option value='" + val['name'] + "'>" + val['name'] + "</option>");
                });
            });
        });*/

        //autocomplete
        $('#store-cv').devbridgeAutocomplete({
            serviceUrl: '${cp}/api/store_search_cv',
            paramName: 'searchKeyword',
            triggerSelectOnValidInput : false,
            minChars: 0,
            params: {
                sido: function () {
                    return $('#sido-cv option:selected').val()
                },
                gungoo: function () {
                    return $('#gungoo-cv option:selected').val()
                }
            },
            onSelect: function (response) {
                console.log('transform : ', response);
                return {
                    // suggestions: $.map(response.myData, function(dataItem) {
                    //     return { value: dataItem.valueField, data: dataItem.dataField };
                    // })
                };
            }
        });

        // 파일업로드
        var url = '${cp}/api/fileupload/' + $('#fileupload').data('ref-type');
        $('#fileupload').fileupload({
            url: url,
            dataType: 'json',
            done: function (e, data) {
                $("#attachFile").val('/customer/' + data.result.attach_file);  // 파일 경로
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
                    //chkPhone: true
                },
                cate: {
                    required: true,
                },
                store: {
                    // required: true,
                    checkStore: true
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
                cate: {
                    required: "문의구분을 선택해 주세요."
                },
                store: {
                    // required: "점포명을 선택해 주세요.",
                    checkStore: "점포명을 선택해 주세요"
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
                    alert("개인정보의 필수적인 사항에 대한 수집이용에 동의해주세요.");
                    $("#agree_01").focus();
                    return;
                }

                $("#agree_mobile").val($("#agree_mobile").is(":checked"));

                $("#agree_email").val($("#agree_email").is(":checked"));


                $.ajax({
                    type: 'PUT',
                    url: "${cp}/api/customer_voice",
                    headers: {
                        Accept: "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    data: JSON.stringify(tss.util.serializeObject($(form)))
                }).done(function () {
                    tss.util.alert("고객님의 소중한 의견이 접수되었습니다.\n확인을 누르시면 메인화면으로 이동합니다.");
                    location.href = "${cp}/";
                }).fail(function () {
                    tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
                });
                return false;
            }
        });

        var cellPhone = document.getElementById('fck_phone');
        cellPhone.onkeyup = function (event) {
            event = event || window.event;
            var _val = this.value.trim();
            this.value = autoHypenPhone(_val);
        }

        /*$("#fck_email").on('keyup',function () {
          var check =  /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
          if(check.test($("#fck_email").val())){
            var korText = $("#fck_email").val();
            console.log("korText : " +korText);
            var engText = korToEng($("#fck_email").val());
            console.log("engText : " +engText);
            $("#fck_email").val(engText);
            //console.log($("#fck_email").val());
          }
        });*/


    });

    /*   function searchStoreCV() {
           var storeCV = $('#store-cv').val().trim();
           if(storeCV == null || storeCV=== '' || storeCV === undefined ) {
               var sido = $("#sido-cv").val();
               var gungoo = $("#gungoo-cv").val();
               if(sido == "" || gungoo == "") return;

               $.getJSON("/api/store_search_cv?sido=" + sido + "&gungoo=" + gungoo+"&searchKeyword=&idx", function(data){
                   var storeData;
                   console.log('data : ', data);
                  /!* $.each(data,function(key,val){
                       console.log('key : ', key )
                       console.log('    value  : ', value )
                   });*!/
                  var keyEvent = $.Event("keyup");
                  keyEvent.which = 32
                   for(var i=0; i<3; i++){
                       console.log('i : ', i);
                   $('#store-cv').trigger(keyEvent);
                   }
               });
           }
       }*/
    // 시도
    function searchSidoCV() {
        $.getJSON("/api/find/sido", function (data) {
            $.each(data, function (key, val) {
                $("#sido-cv").append("<option value='" + val['sidoCode'] + "'>" + val['sidoName'] + "</option>");
            });
        });
    }

    // 군구
    function searchGungooCV() {
        var sido = $("#sido-cv").val();
        if (sido == "") return;

        $.getJSON("/api/find/sido?sido=" + sido, function (data) {
            $("#gungoo-cv > option").not(":eq(0)").remove();
            //  $("#store-cv > option").not(":eq(0)").remove();
            $.each(data, function (key, val) {
                $("#gungoo-cv").append("<option value='" + val['gungooCode'] + "'>" + val['gungooName'] + "</option>");
            });
        });
    }

</script>
</body>
</html>
