<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<script type="text/javascript">
    var pageParam = {
        'frm'			: 'frm',
        'pageViewUrl'	: (lang == 'ko'? '' : '/en') + '/news/ir/notice',
        'searchViewUrl'	: (lang == 'ko'? '' : '/en') + '/news/ir/notice',
    };
</script>

<!--content-->
<section id="content" class="sub-wrap ir">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_ir_01.jpg?v4)">
        <div class="sub-title">
            <h2 class="title-type">IR</h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />

    <form id="frm" name="frm" method="get" onsubmit="return false">
    <input type="hidden" name="mode" value="${irNotice.mode}">
    <div id="container" class="content-wrap" id="contentWrapList">
        <div class="title-wrap">
            <h3 class="title-type"><spring:message code="notice.title" text="공고·공시" /></h3>
            <c:if test="${LANG eq 'ko' }"><p><span>공시정보, 공시관리규정 및</span> <span>IR관련 공고를 제공합니다.</span></p></c:if>
            <c:if test="${LANG eq 'en' }"><p><span>공시정보, 공시관리규정 및</span> <span>IR관련 공고를 제공합니다.(en)</span></p></c:if>
        </div>
        <!-- tab -->
        <div class="tab-wrap">
            <ul class="tab-type col2">
                <li data-type="notice2" class="${empty irNotice.mode or irNotice.mode eq '2' ? 'active' : ''}"><a href="javascript:void(0)" data-mode="2"><span><spring:message code="notice.subTitle2" text="공고" /></span></a></li>
                <li data-type="notice1" class="${irNotice.mode eq '1' ? 'active' : ''}"><a href="javascript:void(0)" data-mode="1"><span><spring:message code="notice.subTitle1" text="공시" /></span></a></li>
            </ul>
        </div>
        <!-- //tab -->

        <!-- 공시(s) -->
        <c:if test="${irNotice.mode eq '1'}">
        <div class="content-box" id="noticeBox1">
            <div class="inner-box">
                <div class="iframe-wrap pc-display">
                    <iframe src="https://dart.fss.or.kr/html/search/SearchCompanyIR3_M.html?textCrpNM=001440" width="1000" height="920px" frameborder="0" topmargin="0" leftmargin="0" scrolling="no" style="margin-top:-40px;"></iframe>
                </div>
                <div class="iframe-wrap mo-display">
                    <iframe src="https://dart.fss.or.kr/dsab001/main.do?textCrpNm=대한전선&autoSearch=true&finalReport=recent" frameborder="0" height="1158px" topmargin="0" leftmargin="0" scrolling="no" style="width:100%; margin-top:-40px;"></iframe>
                </div>
                
                <div class="btn-wrap t-c">
                    <a href="/resources/files/IR_Rule.pdf" target="_blank" class="btn-type btn-m"><spring:message code="notice.btnText" text="공시정보관리규정 보기" /><i class="ico-arr"></i></a>
                </div>
            </div>
        </div>
        <!-- 공시(e) -->
        </c:if>

        <!-- 공고(s) -->
        <c:if test="${empty irNotice.mode or irNotice.mode eq '2'}">
        <input type="hidden" id="pageNo" name="pageNo" value="${irNotice.pageNo}">
        <div class="content-box">

            <c:if test="${not empty list}">
            <div class="inner-box">
                <div class="board-wrap">
                    <div class="board-top">
                        <!-- search -->
                        <div class="search-box v2">
                            <div class="select-type">
                                <select name="schField" id="schField">
                                    <option  value="TITLE" <c:if test="${irNotice.schField eq 'TITLE'}">selected</c:if>>
                                    <spring:message code="notice.schText1" text="제목" /></option>
                                    <option value="CONTENT" <c:if test="${irNotice.schField eq 'CONTENT'}">selected</c:if>>
                                    <spring:message code="notice.schText2" text="내용" /></option>
                                </select>
                            </div>
                            <div class="search-form">
                                <input type="text" class="input-type" 
                                <c:if test="${LANG eq 'ko'}">placeholder="검색어를 입력하세요."</c:if> 
                                <c:if test="${LANG eq 'en'}">placeholder="검색어를 입력하세요.(en)"</c:if>
                                 name="schKey" id="listSchKey" value="${irNotice.schKey}">
                                <button class="btn-clear" onclick="formReset('frm');"><i class="ico-clear"><span class="hidden">검색어지우기</span></i></button>
                                <button type="submit" class="btn-search" onclick="doSearch();"><i class="ico-srch"><span class="hidden">검색</span></i></button>
                            </div>
                        </div>
                        <!-- //search -->
                    </div>

                    <div class="board-body">
                        <ul class="list-board" id="noticeList">
                        <c:forEach var="item" items="${list}">
                            <li>
                                <a href="javascript:void(0);" class="list-item">
                                <span class="date">${item.regDt}</span>
                                <strong class="title" onclick="goDetail('${item.idx}','${item.rowNum}')">${item.title}</strong>
                                </a>
                                <c:if test="${not empty item.sysFile}">
                                <a href="javascript:void(0);" onclick="goFileDown('${item.sysFile}','${item.orgFile}');"  class="btn-type download-type"><span> <spring:message code="notice.btnDown" text="다운로드" /></span><i class="ico-down"></i></a>
                                </c:if>
                            </li>
                        </c:forEach>
                        </ul>
                    </div>

                    <!-- paging -->
                    <div class="paging-wrap" id="pagingBody">
                        ${navi.firstPage}
                        ${navi.prevBlock}
                        ${navi.pageList}
                        ${navi.nextBlock}
                        ${navi.lastPage}
                    </div>
                    <!-- //paging -->
                </div>
            </div>
            </c:if>

            <c:if test="${empty list and not empty irNotice.schKey}">
                <div class="inner-box">
                    <div class="board-wrap">
                        <div class="board-top">
                            <!-- search -->
                            <div class="search-box v2">
                                <div class="select-type">
                                    <select name="schField" id="schField">
                                        <option data-display="제목" value="TITLE" <c:if test="${irNotice.schField eq 'TITLE'}">selected</c:if>>제목</option>
                                        <option value="CONTENT" <c:if test="${irNotice.schField eq 'CONTENT'}">selected</c:if>>내용</option>
                                    </select>
                                </div>
                                <div class="search-form">
                                    <input type="text" class="input-type" placeholder="검색어를 입력하세요." name="schKey" id="listSchKey" value="${irNotice.schKey}">
                                    <button class="btn-clear" onclick="formReset('frm');"><i class="ico-clear"><span class="hidden">검색어지우기</span></i></button>
                                    <button type="submit" class="btn-search" onclick="doSearch();"><i class="ico-srch"><span class="hidden">검색</span></i></button>
                                </div>
                            </div>
                            <!-- //search -->
                        </div>

                        <div class="board-body">
                            <ul class="list-board" id="noticeList">
                                <div class="board-body">
                                    <div class="nodata-box v2">
                                        <p><strong>"${irNotice.schKey}"</strong><spring:message code="notice.noSchData" text="검색결과가 없습니다." /></p>
                                    </div>
                                </div>
                            </ul>
                        </div>
                    </div>
                </div>
            </c:if>

            <c:if test="${empty list and empty irNotice.schKey}">
            <div class="board-wrap">
                <div class="board-body">
                    <div class="nodata-box">
                        <i class="ico-exclam"></i>
                        <p><spring:message code="notice.noData" text="등록된 게시물이 없습니다." /></p>
                    </div>
                </div>
            </div>
            </c:if>

        </div>
    </c:if>
    <!-- 공고(e) -->
</div>
</form>

<form method="get" action="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/news/ir/noticeDetail" id="detailForm">
    <input type="hidden" name="rowNum" value="">
    <input type="hidden" name="idx" value="">
    <input type="hidden" name="schKey" value="">
    <input type="hidden" name="schField" value="">
    <input type="hidden" name="queryString" value="">
</form>

</section>

<script>
    $(document).ready(function () {
        setQueryString();

        //gnb세팅
        setTimeout(function () {
            setmenu( 3, '040103')
        }, 100);

        $('.tab-wrap li a ').click(function(){
            location.href = pageParam.pageViewUrl+"?"+"mode="+$(this).data('mode');
        })

        $("#listSchKey").keydown(function(e) {
            if (e.keyCode == 13) {
                e.preventDefault(); //기본이벤트(submit) 발생 방지
                goPage(1);
            }
        });

    })

    function goDetail(idx,rowNum){
        $("#detailForm [name='rowNum']").val(rowNum);
        $("#detailForm [name='idx']").val(idx);
        $("#detailForm [name='schKey']").val($("#listSchKey").val());
        $("#detailForm [name='schField']").val($("#schField").val());
        $("#detailForm [name='queryString']").val(queryString);
        $("#detailForm").submit();
    }


</script>

