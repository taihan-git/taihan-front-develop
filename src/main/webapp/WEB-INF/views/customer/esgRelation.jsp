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
                            <li class="${report.reportType eq 'ESG' or empty report.reportType ? 'active' : ''}">
                                <a href="javascript:void(0)" onclick="location.href='?reportType=ESG';">
                               <spring:message code="esg.report1" text="ESG 리포트"/></a>
                            </li>
                            <li class="${report.reportType eq 'DISRULE' ? 'active' : ''}">
                                <a href="javascript:void(0)" onclick="location.href='?reportType=DISRULE';">
                                <spring:message code="esg.report2" text="공개 규정집"/></a>
                            </li>
                            <li class="${report.reportType eq 'ETC' ? 'active' : ''}">
                                <a href="javascript:void(0)" onclick="location.href='?reportType=ETC';">
                                <spring:message code="esg.report3" text="기타 자료실"/></a>
                            </li>
                        </ul>
                    </div>

                    <div class="link-wrap fixed">
                        <div class="link-select">
                                <a href="#" class="current">
                                    <c:if test="${report.reportType eq 'ESG' or empty report.reportType}">
                                    <spring:message code="esg.report1" text="ESG 리포트"/>
                                    </c:if>
                                    <c:if test="${report.reportType eq 'DISRULE'}">
                                    <spring:message code="esg.report2" text="공개 규정집"/>
                                    </c:if>
                                    <c:if test="${report.reportType eq 'ETC'}">
                                    <spring:message code="esg.report3" text="기타 자료실"/>
                                    </c:if>
                                </a>

                            <ul class="list-select">
                                <li class="${report.reportType eq 'ESG' or empty report.reportType ? 'active' : ''}"><a href="javascript:void(0)" onclick="location.href='?reportType=ESG';"><spring:message code="esg.report1" text="ESG 리포트"/></a></li>
                                <li class="${report.reportType eq 'DISRULE' ? 'active' : ''}"><a href="javascript:void(0)" onclick="location.href='?reportType=DISRULE';"><spring:message code="esg.report2" text="공개 규정집"/></a></li>
                                <li class="${report.reportType eq 'ETC' ? 'active' : ''}"><a href="javascript:void(0)" onclick="location.href='?reportType=ETC';"><spring:message code="esg.report3" text="기타 자료실"/></a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="board-body">
                        <c:if test="${not empty list}">
                            <ul class="list-board">
                                <c:forEach var="item" items="${list}">
                                    <li>
                                        <a href="javascript:void(0)" class="list-item">
                                            <strong class="title">${item.title}</strong>
                                        </a>
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysFile}','${item.orgFile}');" class="btn-type download-type">
                                            <span><spring:message code="Ir.btnDown" text="다운로드"/></span>
                                            <i class="ico-down"></i>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                            <!-- paging -->
                            <div class="paging-wrap">
                                    ${navi.firstPage}
                                    ${navi.prevBlock}
                                    ${navi.pageList}
                                    ${navi.nextBlock}
                                    ${navi.lastPage}
                            </div>
                            <!-- paging -->
                        </c:if>
                        <c:if test="${empty list}">
                            <div class="nodata-box">
                                <i class="ico-exclam"></i>
                                <p><spring:message code="Ir.noData" text="등록된 게시물이 없습니다."/></p>
                            </div>
                        </c:if>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<!--//content-->

<script>
    var reportType = isEmpty("${report.reportType}") ? "ESG" : "${report.reportType}";

    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '060204');
        },100);

    })

    function goPage(no){
        if( no == '#'){
            return;
        }
        location.href = location.pathname +"?reportType="+reportType+"&pageNo="+no;
    }
</script>





