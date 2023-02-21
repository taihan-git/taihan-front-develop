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
                            <li class="active"><a href="#list1"><spring:message code="cert.cate1" text="품질인증"/></a></li>
                            <li><a href="#list2"><spring:message code="cert.cate2" text="환경인증"/></a></li>
                            <li><a href="#list3"><spring:message code="cert.cate3" text="안전보건인증"/></a></li>
                            <c:if test="${LANG eq 'ko'}">
                            <li><a href="#list4"><spring:message code="cert.cate4" text="납세증명서"/></a></li>
                            </c:if>
                        </ul>
                    </div>

                    <div class="link-wrap fixed">
                        <div class="link-select">
                            <a href="#" class="current"><spring:message code="cert.cate1" text="품질인증"/></a>
                            <ul class="list-select">
                                <li class="active"><a href="#list1"><spring:message code="cert.cate1" text="품질인증"/></a></li>
                                <li><a href="#list2"><spring:message code="cert.cate2" text="환경인증"/></a></li>
                                <li><a href="#list3"><spring:message code="cert.cate3" text="안전보건인증"/></a></li>
                                <li><a href="#list4"><spring:message code="cert.cate4" text="납세증명서"/></a></li>
                            </ul>
                        </div>
                    </div>

                    <div id="list1" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="cert.cate1" text="품질인증"/></h3>
                        </div>
                        <c:if test="${not empty qualityCertList}">
                            <ul class="list-certify">
                                <c:forEach var="item" items="${qualityCertList}">
                                <li>
                                    <a href="javascript:void(0);" onclick="goFileDown('${item.sysFile}','${item.orgFile}');" class="list-item">
                                        <div class="img-flex">
                                            <img src="${CON_UPLOAD_URL}${item.sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                        </div>
                                        <div class="title-box">
                                            <strong class="title">${item.title}</strong>
                                            <p class="desc">
                                                ${cmnUtils:replaceBR(item.introText)}
                                            </p>
                                            <div class="btn-box"><span class="btn-type download-type2">
                                            <span><spring:message code="cert.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                        </div>
                                    </a>
                                </li>
                                </c:forEach>
                            </ul>
                        </c:if>

                        <c:if test="${empty qualityCertList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="cert.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>

                    <div id="list2" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="cert.cate2" text="환경인증"/></h3>
                        </div>
                        <c:if test="${not empty envirCertList}">
                            <ul class="list-certify">
                                <c:forEach var="item" items="${envirCertList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysFile}','${item.orgFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <p class="desc">
                                                        ${cmnUtils:replaceBR(item.introText)}
                                                </p>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="cert.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>
                        <c:if test="${empty envirCertList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="cert.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>


                    <div id="list3" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="cert.cate3" text="안전보건인증"/></h3>
                        </div>

                        <c:if test="${not empty safetyCertList}">
                            <ul class="list-certify">
                                <c:forEach var="item" items="${safetyCertList}">
                                    <li>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysFile}','${item.orgFile}');" class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_UPLOAD_URL}${item.sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.thumImgText}">
                                            </div>
                                            <div class="title-box">
                                                <strong class="title">${item.title}</strong>
                                                <p class="desc">
                                                        ${cmnUtils:replaceBR(item.introText)}
                                                </p>
                                                <div class="btn-box"><span class="btn-type download-type2">
                                                <span><spring:message code="cert.btnDown" text="다운받기"/></span><i class="ico-down"></i></span></div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:if>

                        <c:if test="${empty safetyCertList}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="cert.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>
				<c:if test="${LANG eq 'ko'}">
                    <div id="list4" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="cert.cate4" text="납세증명서"/></h3>
                        </div>
						
                        <c:if test="${not empty tax}">
                        <!-- 수정 -->
                            <div class="download-box">
                                <dl>
                                    <dt>${tax.title}</dt>
                                    <dd>
                                        <a href="javascript:void(0);" onclick="goFileDown('${tax.sysFile}','${tax.orgFile}');" class="btn-type btn-s">
                                            <span><spring:message code="cert.btnDown" text="다운로드"/></span><i class="ico-down"></i>
                                        </a>
                                    </dd>
                                </dl>
                            </div>
                        <!-- //수정 -->
                        </c:if>
                        <c:if test="${empty tax}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="cert.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>
				</c:if>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//content-->


<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '060203');
        },100);
    })
</script>





