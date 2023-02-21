<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>


<!--content-->
<section id="content" class="sub-wrap customer">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/customer/visual_customer_01.jpg)">
        <div class="sub-title">
            <h2 class="title-type"><spring:message code="agency.title" text="고객문의"/></h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

    <div id="container" class="content-wrap">
        <form id="frm" onsubmit="return false">
        <div class="content-box">
            <div class="inner-box">
            	
            	<!-- 수정 -->
						<div class="title-wrap">
							<h3 class="title-type">대리점 안내</h3>
							<p>전국에 위치한 대한전선의 대리점을 안내해 드립니다.</p>
						</div>
            
                <div class="board-wrap">
                    <div class="board-top">
                        <!-- search -->
                       <div class="search-box v2">
                            <div class="select-type">
                                <select name="schArea">
                                	<option value="">
                                    <spring:message code="agency.schArea" text="전체"/></option>
                                    <c:forEach items="${areaList}" var="item">
                                    <option
                                            data-display="${item.agencyAreaNm}"
                                            value="${item.agencyAreaId}"
                                            <c:if test="${item.agencyAreaId eq agency.schArea}">selected</c:if>
                                    >
                                            ${item.agencyAreaNm}
                                    </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="select-type">
                                <select name="schProduct">
                                    <option  value="">
                                    <spring:message code="agency.schCate" text="품목"/></option>
                                    <c:forEach items="${productList}" var="item">
                                    <option
                                            data-display="${item.agencyProductNm}"
                                            value="${item.agencyProductId}"
                                            <c:if test="${item.agencyProductId eq agency.schProduct}">selected</c:if>
                                    >
                                            ${item.agencyProductNm}
                                    </option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div> 
                        <!-- //search -->
                    </div> 
                    
                    <div class="board-body">
                        <ul class="list-store">
                        <c:forEach items="${agencyList}" var="item">
                            <li>
                                <div class="title-box">
                                	<span class="category">${item.agencyProductNm}</span><!-- 수정 -->
                                    <strong class="title">${item.agencyNm}</strong>
                                </div>
                                <ul class="list-info">
                                    <%-- <li>
                                        <dl>
                                            <dt><i class="ico-subject"></i>
                                            <spring:message code="agency.cate" text="품목"/></dt>
                                            <dd>${item.agencyProductNm}</dd>
                                        </dl>
                                    </li> 10-14 수정 --%>
                                    <li>
                                        <dl>
                                            <dt><i class="ico-location"></i>
                                             <spring:message code="agency.addr" text="주소"/></dt>
                                            <dd>${item.agencyAddr}
                                                <a href="${item.googleMapUrl}" class="btn-map" target="_blank">
                                                <i class="ico-outer"><span class="hidden">주소보기</span></i>
                                                </a>
                                            </dd>
                                        </dl>
                                    </li>
                                    <li>
                                        <dl>
                                            <dt><i class="ico-tel"></i>
                                            <spring:message code="agency.tel" text="연락처"/></dt>
                                            <dd><a href="tel:${item.agencyTel}">${item.agencyTel}</a></dd>
                                        </dl>
                                    </li>
                                </ul>
                            </li>
                        </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</section>
<!--//content-->

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '060102');
        },100);

        $('select[name="schProduct"] , select[name="schArea"]').change(function(){
            var url = lang == 'ko' ? '/customer/agency' : '/en/customer/agency';
            var queryString = $('#frm').serialize();
            location.href = url +"?"+ queryString;
        })
    })
</script>





