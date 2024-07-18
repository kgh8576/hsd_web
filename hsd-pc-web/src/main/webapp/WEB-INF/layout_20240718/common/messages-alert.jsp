<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
    <c:if test="${not empty errorMessages}">
    var errMsg = '';
    <c:forEach var="error" items="${errorMessages}">
    errMsg += '<c:out value="${error}" escapeXml="false"/>\n';
    </c:forEach>
    alert(errMsg);
    <c:remove var="errorMessages"/>
    </c:if>

    <c:if test="${not empty successMessages}">
    var successMsg = '';
    <c:forEach var="msg" items="${successMessages}">
    successMsg += '<c:out value="${msg}" escapeXml="false"/>\n';
    </c:forEach>
    alert(successMsg);
    <c:remove var="successMessages" scope="session"/>
    </c:if>
</script>
