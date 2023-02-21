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
    <input type="hidden" id="queryString" name="queryString" value="${param.queryString}">
    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_ir_01.jpg?v4)">
        <div class="sub-title">
            <h2 class="title-type">IR</h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />
    <div id="container" class="content-wrap">
        <div class="inner-box">
            <!-- 2022-10-20 board-wrap view 클래스 추가 -->
			<div class="board-wrap view">
                <div class="board-top">
                    <div class="board-title" id="boardTitle">
                        <span class="date">${fn:replace(nowBoard.regDt, '-', '.')}</span>
                        <h3 class="title">${nowBoard.title}</h3>
                    </div>
                </div>
                <div class="board-body">
                    <div class="board-detail">
                        <div class="editor-box">${cmnUtils:unescapeXml(nowBoard.content)}</div>
                    </div>

                    <c:if test="${not empty nowBoard.sysFile}">
                    <div class="file-box">
                        <dl>
                            <dt>첨부파일</dt>
                            <dd>${nowBoard.orgFile}</dd>
                        </dl>
                        <a onclick="goFileDown('${nowBoard.sysFile}','${nowBoard.orgFile}')" href="javascript:void(0);" class="btn"><span>다운로드</span><i class="ico-down"></i></a>
                    </div>
                    </c:if>

                </div>
                <div class="board-bottom">
                	<c:if test="${not empty afterBoard}">
                    <a href="javascript:void(0)" class="page-next" onclick="goDetail('${afterBoard.idx}','${afterBoard.rowNum}')">
                        <span class="btn"><i class="ico-arr up"></i>NEXT</span>
                        <strong class="title">${afterBoard.title}</strong>
                        <span class="date">${afterBoard.regDt}</span>
                    </a>
                    </c:if>
                    
                    <c:if test="${not empty beforeBoard}">
                    <a href="javascript:void(0);" class="page-prev" onclick="goDetail('${beforeBoard.idx}','${beforeBoard.rowNum}')">
                        <span class="btn"><i class="ico-arr down"></i>PREV</span>
                        <strong class="title">${beforeBoard.title}</strong>
                        <span class="date">${beforeBoard.regDt}</span>
                    </a>
                    </c:if>
                </div>
            </div>
            <div class="btn-wrap t-c">
                <a href="javascript:void(0)" class="btn-type" onclick="goList();">목록으로</a>
            </div>
        </div>
    </div>
</div>

<form method="get" action="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/news/ir/noticeDetail" id="detailForm">
<input type="hidden" name="idx" value="">
<input type="hidden" name="rowNum" value="">
<input type="hidden" name="schKey" value="${param.schKey}">
<input type="hidden" name="schField" value="${param.schField}">
<input type="hidden" name="queryString" value="">
</form>

</section>

<script>
    $(document).ready(function () {
        setTimeout(function () {
            setmenu( 3, '040103')
        }, 100);

    })

    function goDetail(idx,rowNum){
        if(!isEmpty(idx)){
            $("#detailForm [name='idx']").val(idx);
            $("#detailForm [name='rowNum']").val(rowNum);
            $("#detailForm [name='queryString']").val($("#queryString").val());
            $("#detailForm").submit();
        }
    }
</script>
