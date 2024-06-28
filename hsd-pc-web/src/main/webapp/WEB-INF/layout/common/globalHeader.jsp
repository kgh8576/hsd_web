<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/tld/taglibs.tld" prefix="ui" %>

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