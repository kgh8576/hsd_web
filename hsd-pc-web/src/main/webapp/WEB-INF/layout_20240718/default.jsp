<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/taglibs.tld" prefix="ui" %>
<html lang="ko">
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<spring:eval expression="T(kr.co.hsd.web.util.SecurityUtils).isAuthenticated()" var="isAuthenticated" />
<spring:eval expression="T(kr.co.hsd.web.util.SecurityUtils).getCurrentUser()" var="currentUser" />

<jsp:useBean id="globalDate" class="java.util.Date" />

<c:set var="jsessionid" value="<%=request.getRequestedSessionId()%>" />
<c:if test="${jsessionid == null}">
    <c:set var="jsessionid" value="${globalDate}" />
</c:if>

<%-- 일반전화 지역번호 목록 --%>
<c:set var="commonTelDialArray" value="02,031,032,033,041,042,043,044,049,051,052,053,054,055,061,062,063,064,070" />
<%-- 휴대전화 식별번호 목록 --%>
<c:set var="commonPhoneDialArray" value="010,011,016,017,018,019" />
<%-- 이메일 도메인 목록 --%>
<c:set var="commonEmailDialArray" value="naver.com,hanmail.net,nate.com,gmail.com" />
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

    <!-- SNS LINK -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta property="og:description" content="" />
    <!--// SNS LINK -->

    <%-- <security:csrfMetaTags /> --%>

    <title><sitemesh:write property='title'/></title>

    <%-- 공통 스타일 --%>
    <%@ include file="/WEB-INF/layout/common/styles.jsp" %>

    <%-- 공통 스크립트 --%>
    <%@ include file="/WEB-INF/layout/common/scripts.jsp" %>
	
	<%-- 공통 Header --%>
    <%-- <%@ include file="/WEB-INF/layout/common/globalHeader.jsp" %> --%>
	
    <%-- 서버 메세지 alert --%>
    <%@ include file="/WEB-INF/layout/common/messages-alert.jsp" %>

    <sitemesh:write property='head'/>
</head>
<body ontouchstart>
<!-- wrap s -->
<div id="wrap" class="${wrapClass}">
    <!-- inc header s -->
    <%@ include file="/WEB-INF/layout/common/header.jsp" %>
    <!--// inc header e -->

    <%@ include file="/WEB-INF/layout/common/popup.jsp" %>

    <!-- container s -->
    <c:choose>
        <c:when test="${empty containerClass}">
            <c:set var="containerClass" value="sub_page" />
        </c:when>
    </c:choose>
    <div id="container" class="${containerClass}">
        <sitemesh:write property='body'/>
    </div>
    <!--// container e -->

    <!-- inc footer s -->
    <%@ include file="/WEB-INF/layout/common/footer.jsp" %>
    <!--// inc footer e -->

</div>
<!--// wrap e -->
</body>
</html>