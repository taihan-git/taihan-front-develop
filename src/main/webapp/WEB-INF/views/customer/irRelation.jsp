<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>



<!--content-->
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
                            <li class="${report.reportType eq 'AUDIT' or empty report.reportType ? 'active' : ''}">
                                <a href="javascript:void(0)" onclick="location.href='?reportType=AUDIT';">
                                <spring:message code="Ir.report1" text="감사보고서"/></a>
                            </li>
                            <c:if test="${LANG eq 'ko'}">
                            <li class="${report.reportType eq 'BUSINESS' ? 'active' : ''}">
                                <a href="javascript:void(0)" onclick="location.href='?reportType=BUSINESS';">
                                <spring:message code="Ir.report2" text="사업보고서"/></a>
                            </li>
                            </c:if>
                            <li class="${report.reportType eq 'ANNUAL'  ? 'active' : ''}">
                                <a href="javascript:void(0)" onclick="location.href='?reportType=ANNUAL';">
                                <spring:message code="Ir.report3" text="애뉴얼리포트"/></a>
                            </li>
                        </ul>
                    </div>

                    <div class="link-wrap fixed">
                        <div class="link-select">
                            <a href="#" class="current">
                            <c:if test="${report.reportType eq 'AUDIT' or empty report.reportType}">
                                <spring:message code="Ir.report1" text="감사보고서"/>
                            </c:if>
                            <c:if test="${report.reportType eq 'BUSINESS'}">
                                <spring:message code="Ir.report2" text="사업보고서"/>
                            </c:if>
                            <c:if test="${report.reportType eq 'ANNUAL'}">
                                <spring:message code="Ir.report3" text="애뉴얼리포트"/>
                            </c:if>
                            </a>
                            <ul class="list-select">
                                <li class="${report.reportType eq 'AUDIT' or empty report.reportType ? 'active' : ''}"><a href="javascript:void(0)" onclick="location.href='?reportType=AUDIT';"> <spring:message code="Ir.report1" text="감사보고서"/></a></li>
                                <li class="${report.reportType eq 'BUSINESS' ? 'active' : ''}">  <a href="javascript:void(0)" onclick="location.href='?reportType=BUSINESS';"><spring:message code="Ir.report2" text="사업보고서"/></a></li>
                                <li class="${report.reportType eq 'ANNUAL'  ? 'active' : ''}"><a href="javascript:void(0)" onclick="location.href='?reportType=ANNUAL';">  <spring:message code="Ir.report3" text="애뉴얼리포트"/></a></li>
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
                                        <a href="javascript:void(0);" onclick="goFileDown('${item.sysFile}','${item.orgFile}');"  class="btn-type download-type">
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
    var reportType = isEmpty("${report.reportType}") ? "AUDIT" : "${report.reportType}";
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '060205');
        },100);
    })

    function goPage(no){
        if( no == '#'){
            return;
        }
        location.href = location.pathname +"?reportType="+reportType+"&pageNo="+no;
    }
</script>





