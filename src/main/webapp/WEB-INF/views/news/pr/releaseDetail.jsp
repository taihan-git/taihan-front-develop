<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<script type="text/javascript">
    var pageParam = {
		'frm'			: 'frm',
		'pageViewUrl'	: (lang == 'ko'? '' : '/en') + '/news/pr/release',
		'searchViewUrl'	: (lang == 'ko'? '' : '/en') + '/news/pr/release',
    };
</script>
<section id="content" class="sub-wrap ir">
	<input type="hidden" id="queryString" name="queryString" value="${param.queryString}">
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_pr_01.jpg)">
		<div class="sub-title">
			<h2 class="title-type">PR</h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
		<div class="inner-box">
			<!-- 2022-10-20 board-wrap view 클래스 추가 -->
			<div class="board-wrap view">

				<div class="board-top">
					<div class="board-title">
						<span class="date">${release.regDt}</span>
						<h3 class="title">${release.title}</h3>
						<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share"><i class="ico-share"><span class="hidden">공유하기</span></i></a>
					</div>
				</div>

				<div class="board-body">
					<div class="board-detail">
						<div class="editor-box">${cmnUtils:unescapeXml(release.content)}</div>
					</div>
					<!-- tag -->
					<div class="tag-box">
						<c:if test="${release.tags ne ''}">
							<c:set var="url" value="${LANG eq 'ko' ? '/search/tagList' : '/en/search/tagList'}" />
							<c:forEach var="item" items="${release.tags.split(',')}" varStatus="status">
							<a href="${url}?schTagNm=${item.split('_')[0]}&schTagIdx=${item.split('_')[1]}" class="tag">#${item.split('_')[0]}</a>
							</c:forEach>
						</c:if>
					</div>
					<!-- //tag -->
				</div>

				<div class="board-bottom">
					<c:if test="${not empty afterNews}">
					<a href="javascript:void(0)" class="page-next" onclick="goDetail('${afterNews.idx}')">
						<span class="btn"><i class="ico-arr up"></i>NEXT</span>
						<strong class="title">${afterNews.title}</strong>
						<span class="date">${afterNews.regDt}</span>
					</a>
					</c:if>
					<c:if test="${not empty beforeNews}">
					<a href="javascript:void(0)" class="page-prev" onclick="goDetail('${beforeNews.idx}')">
						<span class="btn"><i class="ico-arr down"></i>PREV</span>
						<strong class="title">${beforeNews.title}</strong>
						<span class="date">${beforeNews.regDt}</span>
					</a>
					</c:if>
				</div>

			</div>

			<div class="btn-wrap t-c">
				<a href="javascript:void(0)" class="btn-type" onclick="goList();" >
				<spring:message code="release.btnList" text="목록으로" /></a>
			</div>
		</div>
    </div>
<form method="get" action="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/news/pr/releaseDetail" id="detailForm">
<input type="hidden" name="idx" value="">
<input type="hidden" name="schKey" value="${param.schKey}">
<input type="hidden" name="schField" value="${param.schField}">
<input type="hidden" name="queryString" value="">
</form>

</section>
<!--//content-->

<script>
$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 3, '040202')
    },100);

})

function goDetail(idx){
	if(!isEmpty(idx)){
		$("#detailForm [name='idx']").val(idx);
		$("#detailForm [name='queryString']").val($("#queryString").val());
		$("#detailForm").submit();
	}
}
</script>