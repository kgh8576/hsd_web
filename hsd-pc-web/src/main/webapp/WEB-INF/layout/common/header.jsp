<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- header -->
<header id="header">
    <!-- header flex-->
    <div class="hd_flex">
        <div class="area_flex">
            <ul>
                <li>
                    <c:if test="${!isAuthenticated}">
                    <a href="${cp}/login">로그인</a>
                    </c:if>
                    <c:if test="${isAuthenticated}">
                    <a href="${cp}/logout">로그아웃</a>
                    </c:if>
                </li>
                <li>
                    <c:if test="${!isAuthenticated}">
                    <a href="${cp}/join/join_step1">회원가입</a>
                    </c:if>
                    <c:if test="${isAuthenticated}">
                    <a href="${cp}/join/modify">마이페이지</a>
                    </c:if>
                </li>
                <li class="sns_insta">
                    <a href="https://www.instagram.com/hansot_official/" target="_blank" title="새 창 열림" ><span class="blind">instagram</span></a>
                </li>
                <li class="sns_face">
                    <a href="https://www.facebook.com/hansotOfficial/?ref=ts&fref=ts" target="_blank" title="새 창 열림" ><span class="blind">facebook</span></a>
                </li>
            </ul>
        </div>
    </div>
    <!-- //header flex -->

    <!-- header content -->
    <div class="hd_fixed">
        <div class="hd_content">
            <div class="logo">
                <h1><a href="${cp}/"><span class="blind">한솥</span></a></h1>
            </div>
            <!-- gnb -->
            <section id="gnb" class="area_gnb mo_version">
                <!-- 모바일 로그인/회원가입 -->
                <div class="m_area_flex">
                    <ul>
                        <li>
                            <c:if test="${!isAuthenticated}">
                                <a href="${cp}/login">로그인</a>
                            </c:if>
                            <c:if test="${isAuthenticated}">
                                <a href="${cp}/logout">로그아웃</a>
                            </c:if>
                        </li>
                        <li>
                            <c:if test="${!isAuthenticated}">
                                <a href="${cp}/join/join_step1">회원가입</a>
                            </c:if>
                            <c:if test="${isAuthenticated}">
                                <a href="${cp}/join/modify">마이페이지</a>
                            </c:if>
                        </li>
                    </ul>
                </div>
                <!-- //모바일 로그인/회원가입 -->

                <div class="gnb_menu">
                    <ul>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">BRAND</a></p>
                            <div class="dp2">
                                <ul>
                                    <li class="active"><a href="${cp}/brand/story">브랜드 스토리</a></li>
                                    <li><a href="${cp}/brand/philosophy">브랜드 철학</a></li>
                                    <li><a href="${cp}/brand/legacy">브랜드 유산</a></li>
                                    <%--<li><a href="${cp}/brand/esg">ESG 경영</a></li>--%>

                                    <%--<li><a href="${cp}/brand/bi">NEW BI 소개</a></li>--%>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">ESG</a></p>
                            <div class="dp2">
								<ul>
                                    <li class="active"><a href="https://www.esg.hsd.co.kr/" target="_blank">한솥ESG경영</a></li>
									<%--<li class="active"><a href="https://www.naver.com/">한솥이란?</a></li>--%>
                                    <%--<li><a href="${cp}/esg/environment">환경보호(Environment)</a></li>--%>
                                    <%--<li><a href="${cp}/hansot/social">사회공헌(Social)</a></li>--%>
                                    <%--<li><a href="${cp}/esg/management">윤리경영(Governance)</a></li>--%>
                                    <li><a href="${cp}/esg/sdgs">세계 40대 브랜드 선정</a></li>

                                    <%--<li><a href="${cp}/brand/bi">NEW BI 소개</a></li>--%>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">MENU</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="${cp}/menu/menu_list">전체메뉴</a></li>
                                    <li><a href="${cp}/menu/material">식재료 이야기</a></li>
                                    <li><a href="${cp}/menu/chancha">페루찬차마요커피</a></li>
                                    <li><a href="${cp}/menu/menu_order">단체 주문</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">STORE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="${cp}/store/store_find">주변점포찾기</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">EVENT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="${cp}/event/event_list">이 달의 이벤트</a></li>
                                    <li><a href="${cp}/event/store_event_list">신규점 오픈이벤트</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">FRANCHISE</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="${cp}/franchise/hansot_store">Why 한솥 가맹점</a></li>
                                    <li><a href="${cp}/franchise/success">성공수기</a></li>
                                    <li><a href="${cp}/franchise/process">창업개설절차</a></li>
                                    <li><a href="${cp}/franchise/calc">예상 창업 비용</a></li>
                                    <%--<li><a href="${cp}/franchise/found_money">창업 자금 마련</a></li>--%>
                                    <%--<li><a href="${cp}/franchise/system">엔젤가맹점 제도</a></li>--%>
                                    <li><a href="${cp}/franchise/qna">창업문의</a></li>
                                    <li><a href="${cp}/franchise/briefing">창업설명회 일정·신청</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="dp1">
                            <p class="dp1_tit"><a href="#none">HANSOT</a></p>
                            <div class="dp2">
                                <ul>
                                    <li><a href="${cp}/hansot/promise">한솥의 약속</a></li>
                                    <li><a href="${cp}/hansot/vision">한솥의 비전</a></li>
                                    <li><a href="${cp}/hansot/history">연혁&amp;수상</a></li>
                                    <%--<li><a href="${cp}/hansot/social">사회공헌활동</a></li>--%>
                                    <li><a href="${cp}/hansot/news_list">한솥 NEWS</a></li>
                                    <li><a href="${cp}/hansot/location">오시는 길</a></li>
                                    <li><a href="${cp}/footer/faq_list">고객센터</a></li>
                                    <li class="h_last"><a href="${cp}/footer/incruit">인재채용</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
            <!--// gnb -->
            <!-- pc:bg -->
            <div class="bg_layer"></div>
            <!-- //pc:bg -->
            <!-- mobile_btn -->
            <div class="mobile_menu_btn">
                <div class="hamburger" id="hamburger-6">
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
            </div>
            <!-- //mobile_btn -->
        </div>
        <!--// header content -->
    </div>
</header>
<!--// header -->

