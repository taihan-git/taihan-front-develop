<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>


<!--content-->
<section id="content" class="sub-wrap customer">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/customer/visual_customer_03.jpg)">
        <div class="sub-title">
            <h2 class="title-type"><spring:message code="customer.rsroomTitle" text="자료실"/></h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

    <div id="container" class="content-wrap">
        <div class="content-box">
            <div class="inner-box">

                <%-- Tab --%>
                <jsp:include page="inc/incTab.jsp"/>
                <%-- Tab --%>

                <div class="board-wrap tab">

                    <div class="side-tab">
                        <ul>
                            <li class="active">
                                <a href="#list1"><spring:message code="catalog.cate1" text="전력"/></a>
                                <ul>
                                    <li class="active"><a href="#list1"><spring:message code="catalog.cate11" text="송전용"/></a></li>
                                    <li><a href="#list1_2"><spring:message code="catalog.cate12" text="배전용"/></a></li>
                                    <li><a href="#list1_3"><spring:message code="catalog.cate13" text="산업용"/></a></li>
                                    <li><a href="#list1_4"><spring:message code="catalog.cate14" text="부스덕트"/></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#list2"><spring:message code="catalog.cate2" text="신재생"/></a>
                            </li>
                            <li>
                                <a href="#list3"><spring:message code="catalog.cate3" text="통신"/></a>
                            </li>
                            <li>
                                <a href="#list4"><spring:message code="catalog.cate4" text="소재"/></a>
                            </li>
                        </ul>
                    </div>

                    <div class="link-wrap fixed">
                        <div class="link-select">
                            <a href="#" class="current"><spring:message code="catalog.cate1" text="전력"/></a>
                            <ul class="list-select">
                                <li class="active"><a href="#list1"><spring:message code="catalog.cate1" text="전력"/></a></li>
                                <li><a href="#list2"><spring:message code="catalog.cate2" text="신재생"/></a></li>
                                <li><a href="#list3"><spring:message code="catalog.cate3" text="통신"/></a></li>
                                <li><a href="#list4"><spring:message code="catalog.cate4" text="소재"/></a></li>
                            </ul>
                        </div>
                    </div>

                    <div id="list1" class="board-body">
                    	<div class="title-wrap2 hidden">
							<h3 class="title-type"><spring:message code="catalog.cate11" text="전력"/></h3>
						</div>
                        <div class="title-wrap2 active">
                            <h3 class="title-type"><spring:message code="catalog.cate11" text="송전용"/></h3>
                        </div>
                        <c:if test="${not empty transList}">
                        <ul class="list-certify v2">
                            <c:forEach var="item" items="${transList}">
                                <li>
                                    <a href="javascript:void(0);" onclick="goFileDown('${item.sysPdfFile}','${item.orgPdfFile}');" class="list-item">
                                        <div class="img-flex">
                                            <img src="${CON_UPLOAD_URL}${item.sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                        </div>
                                        <div class="title-box">
                                            <strong class="title">${item.title}</strong>
                                            <div class="btn-box"><span class="btn-type download-type2">
                                            <span><spring:message code="catalog.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                        </div>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                        </c:if>
                        <c:if test="${empty transList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="catalog.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>


                    <div id="list1_2" class="board-body">
                        <div class="title-wrap2 active">
                            <h3 class="title-type"><spring:message code="catalog.cate12" text="배전용"/></h3>
                        </div>

                        <c:if test="${not empty distList}">
                            <ul class="list-certify v2">
                                <c:forEach var="item" items="${distList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysPdfFile}','${item.orgPdfFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="catalog.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <c:if test="${empty distList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="catalog.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>


                    <div id="list1_3" class="board-body">
                        <div class="title-wrap2 active">
                            <h3 class="title-type"><spring:message code="catalog.cate13" text="산업용"/></h3>
                        </div>
                        <c:if test="${not empty indsList}">
                            <ul class="list-certify v2">
                                <c:forEach var="item" items="${indsList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysPdfFile}','${item.orgPdfFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="catalog.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <c:if test="${empty indsList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="catalog.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>


                    <div id="list1_4" class="board-body">
                        <div class="title-wrap2 active">
                            <h3 class="title-type"><spring:message code="catalog.cate14" text="부스덕트"/></h3>
                        </div>
                        <c:if test="${not empty busdList}">
                            <ul class="list-certify v2">
                                <c:forEach var="item" items="${busdList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysPdfFile}','${item.orgPdfFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="catalog.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <c:if test="${empty busdList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="catalog.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>

                    <div id="list2" class="board-body">
                    	<div class="title-wrap2 hidden">
							<h3 class="title-type"><spring:message code="catalog.cate2" text="신재생"/></a></h4>
						</div>
                        <c:if test="${not empty reneList}">
                            <ul class="list-certify v2">
                                <c:forEach var="item" items="${reneList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysPdfFile}','${item.orgPdfFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="catalog.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <c:if test="${empty reneList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="catalog.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>

                    <div id="list3" class="board-body">
                    	<div class="title-wrap2 hidden">
							<h3 class="title-type"><spring:message code="catalog.cate3" text="통신"/></h4>
						</div>
                        <c:if test="${not empty comnList}">
                            <ul class="list-certify v2">
                                <c:forEach var="item" items="${comnList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysPdfFile}','${item.orgPdfFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="catalog.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <c:if test="${empty comnList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="catalog.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>


                    <div id="list4" class="board-body">
                    	<div class="title-wrap2 hidden">
							<h3 class="title-type"><spring:message code="catalog.cate4" text="소재"/></h4>
						</div>
                        <c:if test="${not empty materList}">
                            <ul class="list-certify v2">
                                <c:forEach var="item" items="${materList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysPdfFile}','${item.orgPdfFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="catalog.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <c:if test="${empty materList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="catalog.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '060202');
        },100);

    })
</script>





