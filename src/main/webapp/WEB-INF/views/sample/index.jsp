<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<div>
<c:forEach var="item" items="${list}" varStatus="st">
    <div>${item.title}</div>
    <div>${item.lang}</div>
</c:forEach>
</div>