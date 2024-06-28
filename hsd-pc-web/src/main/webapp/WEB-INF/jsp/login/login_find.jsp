<html>
<head>
    <title>한솥도시락 > 아이디/비밀번호 찾기</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.login.css" />

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

<div class="content login">
    <section class="login_find mo_version">
        <!-- 아이디/비밀번호 찾기 -->
        <div class="find_wrap login_pa tab_st01">
            <h2 class="h2_tit h2_02">아이디/비밀번호 찾기</h2>
            <div class="tab_wrap">
                <ul class="tab_menu col_02">
                    <li <c:if test="${param.mode ne 'pw'}"> class="active" </c:if> ><a href="#none">아이디 찾기</a></li>
                    <li <c:if test="${param.mode eq 'pw'}"> class="active" </c:if> ><a href="#none">비밀번호 찾기</a></li>
                </ul>
            </div>

            <!-- 아이디찾기 -->
            <div class="tab_cont id_find <c:if test="${param.mode ne 'pw'}">active</c:if>" >
                <h3 class="h3_tit idFind">아이디 찾기</h3>

                <div class="result false idFindError" style="display:none;">
                    <p class="resule_txt">
                        <span class="s_block">아이디를 찾을 수 없습니다.</span>
                        <span class="s_block">정보를 확인하신 후 다시 입력해주세요.</span>
                    </p>
                </div>

                <form:form name="idFindForm" id="idFindForm" method="post" cssClass="login_form" action="${cp}/login/login_complate">
                    <input type="hidden" name="mode" value="id" />
                    <fieldset>
                        <legend>아이디 찾기</legend>
                        <div class="area_login">
                            <!-- 이름 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="idName" name="name"  maxlength="10" />
                                    <label for="idName">이름</label>
                                </span>
                            </div>
                            <!-- //이름 -->
                            <!-- 이메일 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="idEmail" name="email" style="ime-mode:active"/>
                                    <label for="idEmail">이메일</label>
                                </span>
                            </div>
                            <!-- //이메일 -->
                        </div>
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="#none" class="c_01 disabled" id="btnIdFind" onclick="$('#idFindForm').submit();">아이디 찾기</a></span>
                        </div>
                    </fieldset>
                </form:form>

                <dl class="jion_go_btn idFindError" style="display:none;">
                    <dt>로그인 계정이 없으신가요?</dt>
                    <dd>
                        <span class="btn btn_login btn_join"><a href="${cp}/join/join_step1" class="c_01 disabled">회원가입</a></span>
                    </dd>
                </dl>
            </div>
            <!-- //아이디찾기 -->


            <!-- 비밀번호 찾기 -->
            <div class="tab_cont pw_find <c:if test="${param.mode eq 'pw'}">active</c:if>">
                <h3 class="h3_tit pwFind">비밀번호 찾기</h3>

                <div class="result false pwFindError" style="display:none;">
                    <p class="resule_txt">
                        <span class="s_block">계정 정보를 찾을 수 없습니다.</span>
                        <span class="s_block">정보를 확인하신 후 다시 입력해주세요.</span>
                    </p>
                </div>

                <form:form name="pwFindForm" id="pwFindForm" method="post" cssClass="login_form" action="${cp}/login/login_complate">
                    <input type="hidden" name="mode" value="pw" />
                    <fieldset>
                        <legend>비밀번호 찾기</legend>
                        <div class="area_login">
                            <!-- 이름 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="pwName" name="name" maxlength="10" />
                                    <label for="pwName">이름</label>
                                </span>
                            </div>
                            <!-- //이름 -->
                            <!-- 아이디 -->
                            <div class="in_box">
                                <span class="form text">
                                    <input type="text" id="pwId" name="id" />
                                    <label for="pwId">아이디</label>
                                </span>
                            </div>
                            <!-- //아이디 -->
                        </div>
                        <div class="btn_wrap">
                            <span class="btn btn_st02"><a href="#none" class="c_01 disabled" id="btnPwFind" onclick="$('#pwFindForm').submit();">비밀번호 찾기</a></span>
                        </div>
                    </fieldset>
                </form:form>

                <dl class="jion_go_btn pwFindError" style="display:none;">
                    <dt>로그인 계정이 없으신가요?</dt>
                    <dd>
                        <span class="btn btn_login btn_join"><a href="${cp}/join/join_step1" class="c_01 disabled">회원가입</a></span>
                    </dd>
                </dl>
            </div>
            <!-- //비밀번호 찾기 -->
        </div>
        <!-- //아이디/비밀번호 찾기 -->
    </section>
</div>

<form:form id="find_result" name="find_result" method="post" action="${cp}/login/login_complete">
    <input type="hidden" name="mode" value="" />
    <input type="hidden" name="id" value="" />
    <input type="hidden" name="name" value="" />
    <input type="hidden" name="mobile_phone" value="" />
</form:form>

<script type="text/javascript">
    $(function(){

        // 아이디 찾기 버튼 활성화
        $("#idFindForm :text").keyup(function(){
            if($("#idName").val() !="" && $("#idEmail").val() != "") {
                $("#btnIdFind").removeClass("disabled");
            }else {
                $("#btnIdFind").addClass("disabled");
            }
        });

        // 비밀번호 찾기 버튼 활성화
        $("#pwFindForm :text").keyup(function(){
            if($("#pwName").val() !="" && $("#pwId").val() != "")
                $("#btnPwFind").removeClass("disabled");
            else
                $("#btnPwFind").addClass("disabled");
        });

    });

    // id search validate
    $("#idFindForm").validate({
        rules: {
            name: {required: true},
            email: {
                required: true,
                email: true
            }
        },
        messages: {
            name : "이름을 입력해 주세요.",
            email: {
                required: "이메일을 입력해 주세요.",
                email: "이메일을 정확히 입력해 주세요."
            }
        },
        submitHandler: function(form){
            if($("#btnIdFind").hasClass("disabled")){
                return;
            }

            //form.submit();

            $.ajax({
                type: 'POST',
                url: "${cp}/api/login/find",
                data: $(form).serialize(),
                dataType: "json"
            }).done(function(data) {
                console.log(data);
                if(data.result == "ok"){
                    $("#find_result").find("[name=mode]").val("id");
                    $("#find_result").find("[name=id]").val(data.id);
                    $("#find_result").find("[name=name]").val(data.name);

                    $("#find_result").submit();
                }else if(data.result == "not"){ // 정보없음.
                    $(".idFind").hide();
                    $(".idFindError").show();

                    $("#idName").focus();
                }else{
                    alert(data.result);
                }

            }).fail(function() {
                tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
            });

        }
    });

    // pw search validate
    $("#pwFindForm").validate({
        rules: {
            name: {required: true},
            id: {
                required: true
            }
        },
        messages: {
            name : "이름을 입력해 주세요.",
            id: "아이디를 입력해 주세요."
        },
       submitHandler: function(form){
           if($("#btnPwFind").hasClass("disabled")){
               return;
           }

           //form.submit();

           $.ajax({
               type: 'POST',
               url: "${cp}/api/login/find",
               data: $(form).serialize(),
               dataType: "json"
           }).done(function(data) {
                console.log(data);
               if(data.result == "ok"){
                   $("#find_result").find("[name=mode]").val("pw");
                   $("#find_result").find("[name=name]").val(data.name);
                   $("#find_result").find("[name=mobile_phone]").val(data.mobile_phone);

                   $("#find_result").submit();
               }else if(data.result == "not"){ // 정보없음.
                   $(".pwFind").hide();
                   $(".pwFindError").show();

                   $("#pwName").focus();
               }else{
                   alert(data.result);
               }

           }).fail(function() {
               tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
           });
       }
    });
</script>
</body>
</html>
