<html>
<head>
    <title>협력업체 등록</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.footer.css" />
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.inquiry.css" />
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

<div class="content area_footer">
    <section class="re_partners mo_version">
        <!-- 협력업체 등록 -->
        <div class="customer_wrap">
            <h2 class="h2_tit h2_01">협력업체 등록</h2>
            <div class="customer_cont cont_st02">
                <!-- 협력업체 등록 안내-->
                <div class="customer_tit">
                    <p class="fz_02">
                        <span class="s_block">한솥과 함께 할</span>
                        <span class="s_block">우수 협력업체를</span>
                        <span class="s_block">모집합니다</span>
                    </p>
                    <div class="space_wrap">
                        <p>
                            <span class="s_block">처음 거래를 시작하려는 협력업체는</span>
                            <span class="s_block">등록 절차 안내를 참고하시기 바랍니다.</span>
                        </p>
                    </div>
                </div>
                <!-- //협력업체 등록 안내 -->
                <!-- 협력업체 등록 양식 -->
                <form:form id="regForm" name="regForm" method="post" onsubmit="return false;">
                <div class="customer_sub">
                    <div class="customer_info pa_02">
                        <!-- 등록절차 -->
                        <div class="customer_form">
                            <h4 class="h4_tit fz_02">등록절차</h4>
                            <!-- step -->
                            <div class="step_wrap">
                                <dl class="step_01">
                                    <dt>협력업체 등록 신청</dt>
                                    <dd>신청 접수 양식 작성</dd>
                                </dl>
                                <dl class="step_02">
                                    <dt>접수 서류 관리자 확인</dt>
                                    <dd>서류 검토 후 적합 여부 확인</dd>
                                </dl>
                                <dl class="step_03">
                                    <dt>심사 후 결과 통보</dt>
                                    <dd>빠른 시일 내에 결과 통보</dd>
                                </dl>
                            </div>
                            <!-- //step -->
                        </div>
                        <!-- //등록절차 -->
                        <!-- 작성자 정보 -->
                        <div class="customer_form form_02 division">
                            <h4 class="h4_tit fz_02">작성자 정보</h4>
                            <!-- 담당자명 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>담당자명</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyManager" name="companyManager">
                                            <label for="companyManager">담당자명 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //담당자명 -->
                            <!-- 이메일 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>이메일</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyEmail" name="companyEmail" style="ime-mode:active">
                                            <label for="companyEmail">이메일 주소를 입력</label>
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
                                            <input type="text" id="companyTel" name="companyTel">
                                            <label for="companyTel">휴대폰 번호 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //휴대폰 -->
                            <!-- 팩스 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>팩스</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyFax" name="companyFax">
                                            <label for="companyFax">팩스 번호 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //팩스 -->
                        </div>
                        <!-- //작성자 정보 -->
                        <!-- 회사 정보 -->
                        <div class="customer_form form_03 division">
                            <h4 class="h4_tit fz_02">회사 정보</h4>
                            <!-- 회사명 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>회사명</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="company" name="company">
                                            <label for="company">회사명 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //회사명 -->
                            <!-- 대표자명 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>대표자명</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="ceo" name="ceo">
                                            <label for="ceo">대표자명 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //대표자명 -->
                            <!-- 설립일 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>설립일</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="establishdt" name="establishdt">
                                            <label for="establishdt">설립일 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //설립일 -->
                            <!-- 설립형태 -->
                            <div class="in_box found">
                                <dl class="in_box_th">
                                    <dt>설립형태</dt>
                                    <dd class="radio_wrap">
                                        <span class="form radio" id="companyType">
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //설립형태 -->
                            <!-- 사업자등록번호 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>사업자등록번호</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyNum" name="companyNum">
                                            <label for="companyNum">사업자등록번호 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //사업자등록번호 -->
                            <!-- 영업신고번호 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>영업신고번호</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyReportNum" name="companyReportNum">
                                            <label for="companyReportNum">영업신고번호 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //영업신고번호 -->
                            <!-- 업종 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>업종</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companySector" name="companySector">
                                            <label for="companySector">업종 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //업종 -->
                            <!-- 업태 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>업태</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyCate" name="companyCate">
                                            <label for="companyCate">업태 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //업태 -->
                            <!-- 연 매출 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>연 매출</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companySales" name="companySales">
                                            <label for="companySales">연 매출 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //연 매출 -->
                            <!-- 자본금 -->
                            <div class="in_box">
                                <dl class="in_box_th">
                                    <dt>자본금</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyCapital" name="companyCapital">
                                            <label for="companyCapital">자본금 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //자본금 -->
                            <!-- 홈페이지 -->
                            <div class="in_box full">
                                <dl class="in_box_th">
                                    <dt>홈페이지</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="homepage" name="homepage">
                                            <label for="homepage">홈페이지 주소 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //홈페이지 -->
                            <!-- 본사 주소 -->
                            <div class="in_box full">
                                <dl class="in_box_th">
                                    <dt>본사 주소</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyAddr" name="companyAddr">
                                            <label for="companyAddr">본사 주소 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //본사 주소 -->
                            <!-- 공장 주소 -->
                            <div class="in_box full">
                                <dl class="in_box_th">
                                    <dt>공장 주소</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="factoryAddr" name="factoryAddr">
                                            <label for="factoryAddr">공장 주소 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //공장 주소 -->
                            <!-- 공장부지 -->
                            <div class="in_box factory">
                                <dl class="in_box_th">
                                    <dt>공장부지</dt>
                                    <dd class="deposit_wrap">
                                        <!-- 공장대지 -->
                                        <span class="form text">
                                            <em class="deposit">공장대지</em>
                                            <input type="text" id="companyPlant1" name="companyPlant1">
                                            <label for="companyPlant1"></label>
                                            <em class="space">평</em>
                                        </span>
                                        <!-- //공장대지 -->
                                        <!-- 건평 -->
                                        <span class="form text">
                                            <em class="deposit">건평</em>
                                            <input type="text" id="companyPlant2" name="companyPlant2">
                                            <label for="companyPlant2"></label>
                                            <em class="space">평</em>
                                        </span>
                                        <!-- //건평 -->
                                        <!-- 냉동제조설비 -->
                                        <span class="form text top">
                                            <em class="deposit">냉동제조설비</em>
                                            <input type="text" id="companyPlant3" name="companyPlant3">
                                            <label for="companyPlant3"></label>
                                            <em class="space">평</em>
                                        </span>
                                        <!-- //냉동제조설비 -->
                                        <!-- 부대시설 -->
                                        <span class="form text top">
                                            <em class="deposit">부대시설</em>
                                            <input type="text" id="companyPlant4" name="companyPlant4">
                                            <label for="companyPlant4"></label>
                                            <em class="space">평</em>
                                        </span>
                                        <!-- //부대시설 -->
                                    </dd>
                                </dl>
                            </div>
                            <!-- //공장부지 -->
                            <!-- 종업원수 -->
                            <div class="in_box worker">
                                <dl class="in_box_th">
                                    <dt>종업원수</dt>
                                    <dd class="deposit_wrap">
                                        <span class="form text top">
                                            <input type="text" id="employeeCount" name="employeeCount" maxlength="5">
                                            <label for="employeeCount">종업원 수 입력</label>
                                            <em class="space">명</em>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //종업원수 -->
                            <!-- HACCP인증여부 (ISO) -->
                            <div class="in_box haccp">
                                <dl class="in_box_th">
                                    <dt>HACCP인증여부 (ISO)</dt>
                                    <dd class="radio_wrap">
                                        <span class="form radio">
                                            <label>
                                                <input type="radio" name="haccpYn" value="Y" checked="checked">
                                                <span>예</span>
                                            </label>
                                            <label>
                                                <input type="radio" name="haccpYn" value="N">
                                                <span>아니오</span>
                                            </label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //HACCP인증여부 (ISO) -->
                            <!-- 제품명 -->
                            <div class="in_box full">
                                <dl class="in_box_th">
                                    <dt>제품명</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="productName" name="productName">
                                            <label for="productName">제품명 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //제품명 -->
                            <!-- 제품설명 -->
                            <div class="in_box full">
                                <dl class="in_box_th">
                                    <dt>제품설명</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="productDesc" name="productDesc">
                                            <label for="productDesc">제품설명 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //제품설명 -->
                            <!-- 회사소개 -->
                            <div class="in_box full">
                                <dl class="in_box_th">
                                    <dt>회사소개</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="companyDesc" name="companyDesc">
                                            <label for="companyDesc">회사소개 입력</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //회사소개 -->
                        </div>
                        <!-- //회사 정보 -->
                        <jsp:include page="/WEB-INF/layout/common/privacy.jsp" />
                    </div>
                    <!-- btn -->
                    <div class="customer_btn">
                        <div class="btn_wrap">
                            <span class="btn btn_st03"><a href="javascript:$('#regForm').reset();" class="c_03">취소</a></span>
                        </div>
                        <div class="btn_wrap">
                            <span class="btn btn_st03"><a href="#none" class="c_01" onclick="$('#regForm').submit();">보내기</a></span>
                        </div>
                    </div>
                    <!--// btn -->
                </div>
                </form:form>
                <!-- 협력업체 등록 양식 -->
            </div>
        </div>
        <!-- //협력업체 등록 -->
    </section>
</div>
<!-- more_cont -->
<script type="text/javascript">
    $(function(){
        // 설립형태
        searchCode('CT01', 'companyType', 'radio');

        $(function(){
            // validate & submit
            $('#regForm').validate({
                rules: {
                    companyManager: {
                        required: true
                    },
                    companyEmail: {
                        required: true,
                        email: true
                    },
                    companyTel: {
                        required: true,
                        chkPhone: true
                    },
                    companyFax: {
                        required: true,
                        chkTel : true
                    },
                    company: {
                        required: true,
                    },
                    ceo: {
                        required: true
                    },
                    establishdt: {
                        required: true
                    },
                    companyNum: {
                        required: true
                    },
                    companyReportNum: {
                        required: true
                    },
                    companySector: {
                        required: true
                    },
                    companyCate: {
                        required: true
                    },
                    companySales: {
                        required: true
                    },
                    companyCapital: {
                        required: true
                    },
                    homepage: {
                        required: true
                    },
                    companyAddr: {
                        required: true
                    },
                    factoryAddr: {
                        required: true
                    },
                    companyPlant1: {
                        required: true
                    },
                    companyPlant2: {
                        required: true
                    },
                    companyPlant3: {
                        required: true
                    },
                    companyPlant4: {
                        required: true
                    },
                    employeeCount: {
                        required: true
                    },
                    productName: {
                        required: true
                    },
                    productDesc: {
                        required: true
                    },
                    companyDesc: {
                        required: true
                    }
                },
                messages: {
                    companyManager: {
                        required: "담당자명을 입력해 주세요."
                    },
                    companyEmail: {
                        required: "이메일을 입력해 주세요.",
                        email: "이메일을 정확히 입력해 주세요."
                    },
                    companyTel: {
                        required: "휴대폰번호를 입력해 주세요.",
                        chkPhone: "휴대폰번호를 정확히 입력해 주세요. ex)010-0000-0000"
                    },
                    companyFax: {
                        required: "팩스번호를 입력해 주세요.",
                        chkTel: "팩스번호를 정확히 입력해 주세요. ex)02-0000-0000"
                    },
                    company: {
                        required: "회사명을 입력해 주세요.",
                    },
                    ceo: {
                        required: "대표자명을 입력해 주세요."
                    },
                    establishdt: {
                        required: "설립일을 입력해 주세요."
                    },
                    companyNum: {
                        required: "사업자등록번호를 입력해 주세요."
                    },
                    companyReportNum: {
                        required: "영업신고번호를 입력해 주세요."
                    },
                    companySector: {
                        required: "업종을 입력해 주세요."
                    },
                    companyCate: {
                        required: "업태를 입력해 주세요."
                    },
                    companySales: {
                        required: "연 매출을 입력해 주세요."
                    },
                    companyCapital: {
                        required: "자본금을 입력해 주세요."
                    },
                    homepage: {
                        required: "홈페이지 주소를 입력해 주세요."
                    },
                    companyAddr: {
                        required: "본사주소를 입력해 주세요."
                    },
                    factoryAddr: {
                        required: "공장주소를 입력해 주세요."
                    },
                    companyPlant1: {
                        required: "공장대지 평수를 입력해 주세요."
                    },
                    companyPlant2: {
                        required: "공장부지 건평을 입력해 주세요."
                    },
                    companyPlant3: {
                        required: "냉동제조설비 평수를 입력해 주세요."
                    },
                    companyPlant4: {
                        required: "부대시설 평수를 입력해 주세요."
                    },
                    employeeCount: {
                        required: "종업원수를 입력해 주세요."
                    },
                    productName: {
                        required: "제품명을 입력해 주세요."
                    },
                    productDesc: {
                        required: "제품설명을 입력해 주세요."
                    },
                    companyDesc: {
                        required: "회사소개를 입력해 주세요."
                    }
                },
                submitHandler : function(form){
                    if(!$("#agree_01").is(":checked")) {
                        alert("개인정보의 필수적인 사항에 대한 수집이용에 동의해주세요.");
                        $("#agree_01").focus();
                        return;
                    }

                    $.ajax({
                        type: 'PUT',
                        url: "${cp}/api/partners",
                        headers: {
                            Accept : "application/json; charset=utf-8",
                            "Content-Type": "application/json; charset=utf-8"
                        },
                        data: JSON.stringify(tss.util.serializeObject($(form)))
                    }).done(function() {
                        tss.util.alert("협력업체 등록이 접수되었습니다.\n확인을 누르시면 메인화면으로 이동합니다.");
                        location.href = "${cp}/";
                    }).fail(function() {
                        tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
                    });
                    return false;
                }
            });
        });

    });
</script>
</body>
</html>
