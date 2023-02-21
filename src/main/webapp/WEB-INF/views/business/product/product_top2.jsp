<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<div class="product-top">
	<ul class="list-product ${LANG eq 'ko' ? '' : 'eng'}">
		
		<li <c:if test="${CON_REQUEST_URI.indexOf('electricity') > -1}">class="active"</c:if>>
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/electricity#link">
				<div class="img-flex v2"><img src="${CON_STATIC_URL}/asset/images/business/product01.png" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
				<strong class="title"><spring:message code="product.electricity" text="전력"></spring:message></strong>
			</a>
		</li>
		<li <c:if test="${CON_REQUEST_URI.indexOf('renewable') > -1}">class="active"</c:if>>
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/renewable#link">
				<div class="img-flex v2"><img src="${CON_STATIC_URL}/asset/images/business/product02.png" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
				<strong class="title"><spring:message code="product.renewable" text="신재생"></spring:message></strong>
			</a>
		</li>
		<li <c:if test="${CON_REQUEST_URI.indexOf('communication') > -1}">class="active"</c:if>>
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/communication#link">
				<div class="img-flex v2"><img src="${CON_STATIC_URL}/asset/images/business/product03.png" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
				<strong class="title"><spring:message code="product.communication" text="통신"></spring:message></strong>
			</a>
		</li>
		<li <c:if test="${CON_REQUEST_URI.indexOf('material') > -1}">class="active"</c:if>>
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/material#link">
				<div class="img-flex v2"><img src="${CON_STATIC_URL}/asset/images/business/product04.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
				<strong class="title"><spring:message code="product.material2" text="소재"></spring:message></strong>
			</a>
		</li>
	</ul>
</div>