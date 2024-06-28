<!DOCTYPE html>
<html lang="ko">
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

    <security:csrfMetaTags />

    <title><sitemesh:write property='title'/></title>

    <%-- 공통 스타일 --%>
    <%@ include file="/WEB-INF/layout/common/styles.jsp" %>

    <%-- 공통 스크립트 --%>
    <%@ include file="/WEB-INF/layout/common/scripts.jsp" %>

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