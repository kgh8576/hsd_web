<html>
<head>
    <title>창업설명회</title>

    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.franchise.css" />
    <link rel="stylesheet" type="text/css" href="${cp}/assets/css/ui.inquiry.css" />

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
<div class="content franchise">
    <section class="briefing mo_version">
        <!-- 창업설명회 -->
        <div class="customer_wrap">
            <h2 class="h2_tit h2_01">창업설명회 일정·신청</h2>
            <div class="customer_cont cont_st02">
                <!-- 창업설명회 안내-->
                <div class="customer_tit">
                    <dl class="br_info call">
                        <dt class="fz_03">창업설명회 문의</dt>
                        <dd class="fz_01">070-8095-6020</dd>
                    </dl>
                    <dl class="br_info schedule">
                        <dt class="fz_03">
                            창업설명회 일정
                            <%--<span>주 1회 개최!</span>--%>
                        </dt>
                        <dd>
                            <%--<span class="s_block">- 매주 화요일:오후2시 (전국)</span>--%>
                            <span class="s_block">2024년  06월 13일(목) 11:00</span>
                            <span class="s_block">2024년  06월 13일(목) 15:00</span>
                            <span class="s_block">2024년  06월 28일(금) 11:00</span>
                            <span class="s_block">2024년  06월 28일(금) 15:00</span>
                        </dd>
                    </dl>
                    <dl class="br_info  location">
                        <dt class="fz_03">위치안내</dt>
                        <dd>
                            <a href="${cp}/hansot/location" class="location" target="_blank">오시는 길</a>
                        </dd>
                    </dl>
            <%--        <dl class="br_info reservation">
                        <dt class="fz_03">예약 안내</dt>
                        <dd>
                            <span class="s_block">사전예약 해주시는 분들에 한해 <strong>도시락이</strong></span>
                            <span class="s_block"><strong>제공</strong>됩니다.</span>
                        </dd>
                    </dl>--%>
                </div>
                <!-- //창업설명회 안내 -->
                <!-- 창업설명회 예약 -->
                <form:form name="regForm" id="regForm" method="post" onsubmit="return false;">
                <div class="customer_sub">
                    <div class="customer_info pa_02">
                        <!-- 창업설명회 예약 -->
                        <div class="customer_form">
                            <h4 class="h4_tit fz_02">창업설명회 예약</h4>
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
                            <!-- 연락처 -->
                            <div class="in_box bl">
                                <dl class="in_box_th">
                                    <dt>연락처</dt>
                                    <dd>
                                        <span class="form text">
                                            <input type="text" id="fck_phone" name="hp">
                                            <label for="fck_phone">휴대폰 번호를 입력해주세요</label>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //연락처 -->
                            <!-- 지역 -->
                            <%--<div class="in_box">
                                <dl class="in_box_th">
                                    <dt>창업희망지역</dt>
                                    <dd>
                                        <span class="select">
                                            <select class="classic" title="지역 선택" id="joinLoc" name="joinLoc" onchange="fnJoinDt();">
                                            </select>
                                        </span>
                                    </dd>
                                </dl>
                            </div>--%>
                            <%--<input type="hidden" name="joinLoc" value="31" >--%>
                            <!-- //지역 -->
                            <!-- 참석일 -->
                            <div class="in_box" style="margin-top: 36px">
                                <dl class="in_box_th">
                                    <dt>참석일</dt>
                                    <dd>
                                        <span class="select">
                                            <select class="classic" title="참석일 선택" id="joinDate" name="joinDate">
                                                <option value="">참석일을 선택해 주세요.</option>
                                            </select>
                                        </span>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //참석일 -->
                            <!-- 참석인원 -->
                            <div class="in_box bl">
                                <dl class="in_box_th">
                                    <dt>참석인원</dt>
                                    <dd>
                                        <!-- 명수 -->
                                        <span class="form text store_input">
                                            <input type="text" id="fck_text_02" name="joinNum" maxlength="3">
                                            <label for="fck_text_02">참석인원을 입력해주세요</label>
                                            <em class="btn_overlap line_no">명</em>
                                        </span>
                                        <!-- //명수 -->
                                    </dd>
                                </dl>
                            </div>
                            <!-- //참석인원 -->
                            <!-- 도시락신청 -->
                            <div class="in_box last" style="display:none">
                                <dl class="in_box_th">
                                    <dt>도시락신청</dt>
                                    <dd class="store_select">
                                        <div class="radio_wrap">
                                            <span class="form radio">
                                                <label>
                                                    <input type="radio" name="lunchYn" value="Y" >
                                                    <span>예</span>
                                                </label>
                                            </span>
                                            <span class="form radio no">
                                                <label>
                                                    <input type="radio" name="lunchYn" value="N" checked="checked">
                                                    <span>아니오</span>
                                                </label>
                                            </span>
                                        </div>
                                    </dd>
                                </dl>
                            </div>
                            <!-- //도시락신청 -->
                            <!-- 지역 -->
                                <div class="in_box last" >
                                    <dl class="in_box_th">
                                        <dt>창업희망지역</dt>
                                        <dd>
                                            <span class="select">
                                                <select class="classic" title="지역 선택" id="joinLoc" name="joinLoc" onchange="JoinDate();">
                                                    <option value="">창업희망지역을 선택해 주세요.</option>
                                                </select>
                                            </span>
                                        </dd>
                                    </dl>
                                </div>
                            <!-- //지역 -->
                        </div>
                        <!-- //고객정보 -->
                        <jsp:include page="/WEB-INF/layout/common/privacy-1.jsp"/>
                    </div>
                    <!-- btn -->
                    <div class="customer_btn">
                        <div class="btn_wrap">
                            <span class="btn btn_st03"><a href="#none" class="c_01" onclick="$('#regForm').submit();">예약하기</a></span>
                        </div>
                    </div>
                    <!--// btn -->
                </div>
                </form:form>
                <!-- //창업설명회 예약 -->
            </div>
        </div>
        <!-- //창업설명회 -->
    </section>
</div>

<jsp:include page="/WEB-INF/jsp/more/franchise_more.jsp" />

<!-- more_cont -->
<script type="text/javascript">
    $(function(){
        // validate & submit
        $('#regForm').validate({
            rules: {
                name: {
                    required: true
                },
                hp: {
                    required: true,
                    chkPhone: true
                },
                joinLoc: {
                    required: true,
                },
                joinDate: {
                    required: true
                },
                joinNum: {
                    required: true,
                    number: true
                }
            },
            messages: {
                name:{
                    required: "이름을 입력해 주세요."
                },
                hp: {
                    required: "휴대폰번호를 입력해 주세요.",
                    chkPhone: "휴대폰번호를 정확히 입력해 주세요. ex)010-0000-0000"
                },
                joinLoc: {
                    required: "지역을 선택해 주세요."
                },
                joinDate: {
                    required: "참석일을 선택해 주세요."
                },
                joinNum: {
                    required: "참석인원을 입력해 주세요.",
                    number: "참석인원은 숫자로 입력해 주세요."
                }
            },
            submitHandler : function(form){

   /*           if (!$("#agree_01").is(":checked")) {
                alert("개인정보의 필수적인 사항에 대한 수집이용에 동의해주세요.");
                $("#agree_01").focus();
                return;
              }*/

                $.ajax({
                    type: 'PUT',
                    url: "${cp}/api/briefing",
                    headers: {
                        Accept : "application/json; charset=utf-8",
                        "Content-Type": "application/json; charset=utf-8"
                    },
                    data: JSON.stringify(tss.util.serializeObject($(form)))
                }).done(function() {
                    tss.util.alert("창업설명회 예약이 접수되었습니다.\n확인을 누르시면 메인화면으로 이동합니다.");
                    location.href = "${cp}/";
                }).fail(function() {
                    tss.util.alert("일시적인 오류가 발생했습니다.\n화면을 새로고침 한 이후에 다시 시도해 주세요.");
                });
            }
        });

        // fnJoinDt();
        JoinDate();
    });

    // 지역
    searchCode('UL01', 'joinLoc');

    // 참석일
    function JoinDate() {

      $.ajax({
        url:"/api/briefing/date",
        type:"GET",
        headers: {
          Accept : "application/json; charset=utf-8",
          "Content-Type": "application/json; charset=utf-8"
        },
        success: function (date) {
          var time = '';
          var type = '';
          var briefingDate = '';
          var briefingTime = '';
          var briefingDateTime = new Date();

          for (var i=0; i<6; i++){
            briefingDate = moment(date[i].joinDate).format('YYYY-MM-DD');
            briefingTime = moment(date[i].joinDate).format('HH');
            briefingDateTime = moment(date[i].joinDate).format('YYYY-MM-DD HH:mm:ss');

            type = date[i].type.toString();
            if (type === "1"){
                $("#joinDate").append("<option value='" + briefingDateTime  +"'>" + briefingDate + " (수) " +briefingTime + " 시</option>");
            }else{
              $("#joinDate").append("<option value='" + briefingDateTime +"'>" + briefingDate + " (일) "+ briefingTime + " 시</option>");
            }
          }

        }
      })
    }


    // 참석일
    function fnJoinDt(){
        var today = new Date();
        today = new Date(today.getTime()+ (86400 * 1000));
        var gap = 0;
        var dd;
        var loc = parseInt($("#joinLoc").val());
        if(isNaN(loc)) loc = 31;
        var yoil = loc == 31 ? 3 : 2;
        //var dateArray = [];
        var j=0;
        for (var i=0;i<43;i++)
        {
          if (today.getDay() == 3){
            dd = getFormattedDate(today);
            if(loc == 31) {
              $("#joinDate").append("<option value='" + dd + " 19:00:00'>" + dd + " (수) 19시" + "</option>");
            }else{
              $("#joinDate").append("<option value='" + dd + " 14:00:00'>" + dd + " (화) 14시" + "</option>");
            }
            j++
          }
          //console.log(today.getDate());
          if (today.getDay() == 0 && today.getDate()<8){
            dd = getFormattedDate(today);
            $("#joinDate").append("<option value='" + dd + " 14:00:00'>" + dd + " (일) 14시" + "</option>");

            j++;
          }

          if (j>5)
            break;
          today= new Date(today.getTime() + (86400 * 1000));



        }

        /*sihun*/
        //오늘
      var todai = moment("2018-03-15");
      //이달의 시작일
      var begin = moment(moment("2018-03-15").format("YYYY-MM-01"));

      //다음달 시작일
      var nextBegin = _.cloneDeep(begin);
      nextBegin.add(1,'months');
      //다음달 시작일이 있는 주의 일요일
      var nextSunday = nextBegin.day("Sunday");

      console.log(begin.format("YYYY-MM-DD"));
      //오늘이 속한 주의 일요일
      var sunday = _.cloneDeep(begin);
      sunday.day("Sunday");


      //이번달 1일이 속한 주의 일요일이 지난달에 있으면 1주일을 더해준다
      if(begin.month() > sunday.month()) {
        console.log(sunday.add(1, 'weeks').format("YYYY-MM-DD"));
      }

      //오늘이 속한 주의 수요일 (클론딥 한 이유는 딥카피(주소복사가 아닌 데이터복사)를 하기위해..)
      var begin2 = _.cloneDeep(todai);
      begin2.day("Wednesday");

      console.log(todai.format("YYYYMMDD"));
      console.log(begin2.format("YYYYMMDD"));
      //오늘이 속한 주의 수요일구하기.. 이미 지났으면 그 다음주 수요일로..
      if(todai.format("YYYYMMDD") > begin2.format("YYYYMMDD")) {
        console.log(begin2.add(1, 'weeks').format("YYYY-MM-DD"));
      }

      var dateArr = [];

      //수요일을 어레이에 담기
      for (var l=0; l <5; l++) {
        dateArr.push(new Date(begin2.format("YYYY-MM-DD")));
        if( l < 4) {
          begin2.add(1, 'weeks')
        }
      }

      //첫째 일요일을 어레이에 껴넣기
      var isInserted = false;

      for (var k=0; k < 5 ; k++) {
        if(!isInserted && dateArr[k] > new Date(sunday.format("YYYY-MM-DD")) && todai.format("YYYYMMDD") < sunday.format("YYYYMMDD")) {

          dateArr.splice(k,0,new Date(sunday.format("YYYY-MM-DD")));
          isInserted = true
        }
      }

      //어레이중간에 다음달 첫째일요일 껴넣기
      if (dateArr.length <= 5) {
        console.log(dateArr.length);
        for(var m=0; m < 5 ; m++) {
          if(!isInserted && dateArr[m] > new Date(nextSunday.format("YYYY-MM-DD"))){
            dateArr.splice(m,0,new Date(nextSunday.format("YYYY-MM-DD")));
            isInserted = true
          }
        }
      }

      console.log(dateArr);





      /*sihun*/


      /*
              if(today.getDay() < yoil) {
                  gap = yoil - today.getDay();
              } else {
                  gap = 7 - (today.getDay() - yoil);
              }

              $("#joinDate option:gt(0)").remove();
              var first = new Date(today.getTime() + (gap * 86400 * 1000));
              var isSunday = false;

              for(var i = 1; i <=5; i++){
                  dd = getFormattedDate(first);
                if (today.getDate()<4&&isSunday==false){
                  for(var j=0; j<7; j++) {            //달이 바뀌는지 여부
                    var resultDay = new Date(today.getFullYear(), today.getMonth(), 1 + j );

                    if(resultDay.getDay()==0){
                      if(i<5){
                        var tt=getFormattedDate(resultDay);
                        $("#joinDate").append("<option value='" + tt + " 14:00:00'>" + tt + " (일) 14시" + "</option>");
                        i++;
                        isSunday=true;
                        break;
                      }
                    }
                  }

                }
                if (today.getMonth()!=first.getMonth()&&isSunday==false){
                  for(var j=0; j<7; j++) {            //달이 바뀌는지 여부
                    var resultDay = new Date(first.getFullYear(), first.getMonth(), 1 + j );
                    if (gap>4)
                      resultDay = new Date(today.getFullYear(), today.getMonth(), 1 + j );

                    if(resultDay.getDay()==0){
                      if(i<5){
                        var tt=getFormattedDate(resultDay);
                        $("#joinDate").append("<option value='" + tt + " 14:00:00'>" + tt + " (일) 14시" + "</option>");
                        i++;
                        isSunday=true;
                        break;
                      }
                    }
                  }

                }
                if(loc == 31) {
                  $("#joinDate").append("<option value='" + dd + " 19:00:00'>" + dd + " (수) 19시" + "</option>");
                }else{
                  $("#joinDate").append("<option value='" + dd + " 14:00:00'>" + dd + " (화) 14시" + "</option>");
                }

                var tempDate = new Date(first.getTime() + (7 * 86400 * 1000));

                if(tempDate.getMonth()>first.getMonth()&&isSunday==false){

                  for(var j=0; j<7; j++) {            //달이 바뀌는지 여부
                    var resultDay = new Date(tempDate.getFullYear(), tempDate.getMonth(), 1 + j );


                    if(resultDay.getDay()==0){
                      tempDate = resultDay;
                      break;
                    }
                  }

                  if(i<5){
                    dd=getFormattedDate(tempDate);
                    $("#joinDate").append("<option value='" + dd + " 14:00:00'>" + dd + " (일) 14시" + "</option>");
                    i++;
                    isSunday=true;
                    //continue;
                  }

                }


                  first = new Date(first.getTime() + (7 * 86400 * 1000));
              }
              */

    }

    var cellPhone = document.getElementById('fck_phone');
    cellPhone.onkeyup = function(event){
      event = event || window.event;
      var _val = this.value.trim();
      this.value = autoHypenPhone(_val);
    }
</script>
</body>
</html>
