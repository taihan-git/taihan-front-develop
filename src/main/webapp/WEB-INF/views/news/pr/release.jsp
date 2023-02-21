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
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_pr_01.jpg)">
		<div class="sub-title">
			<h2 class="title-type">PR</h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">

        <div class="title-wrap">
            <h3 class="title-type"><spring:message code="release.title" text="보도자료"></spring:message></h3>
            <p><spring:message code="release.desc" text="대한전선의 새로운 소식과 관련 정보를 전해 드립니다."></spring:message></p>
        </div>
        
        <div class="content-box">
			<div class="inner-box">
				<div class="board-wrap">
				
					<div class="board-top">
						<form id="frm" onsubmit="return false">
						<input type="hidden" id="pageNo" name="pageNo" value="${release.pageNo}">
						<input type="hidden" id="rowSize" name="rowSize" value="${release.rowSize}">
						<!-- search -->
						<div class="search-box v2">
							<div class="select-type">
								<select id="schField" name="schField" >	
									<option value="TITLE" <c:if test="${release.schField eq 'TITLE'}">selected</c:if>>
									<spring:message code="release.schText1" text="제목" /></option>
									<option value="CONTENT" <c:if test="${release.schField eq 'CONTENT'}">selected</c:if>>
									<spring:message code="release.schText2" text="내용" /></option>
								</select>
							</div>
							<div class="search-form">
								<input type="text" id="listSchKey" name="schKey" class="input-type" value="${release.schKey}" 
									<c:if test="${LANG eq 'ko'}">placeholder="검색어를 입력하세요."</c:if> 
                                	<c:if test="${LANG eq 'en'}">placeholder="검색어를 입력하세요.(en)"</c:if>>
								
								<button type="button" class="btn-clear" id="resetBtn" onclick="formReset('frm');"><i class="ico-clear"><span class="hidden">검색어지우기</span></i></button>
								<button type="button" class="btn-search" id="searchBtn" onclick="doSearch();"><i class="ico-srch"><span class="hidden">검색</span></i></button>
							</div>
						</div>
						</form>
						<!-- //search -->
					</div>
					<div class="board-body">
					<c:if test="${not empty list}">
						<ul class="list-board2">
						<c:forEach var="item" items="${list}" varStatus="status">
							<li>
								<a href="javascript:void(0);" onclick="goDetail('${item.idx}')" class="list-item">
									<div class="img-flex">
										<img src="${CON_UPLOAD_URL}${item.sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
									</div>
									<div class="title-box">
										<strong class="title">${item.title}</strong>
										<span class="date">${item.regDt}</span>
										<p class="desc">
											${item.thumImgText}
										</p>
									</div>
								</a>
							</li>
						</c:forEach>
						</ul>
					</c:if>
					<c:if test="${empty list}">
						<div class="nodata-box v2">
							<p><c:if test="${not empty release.schKey}"><strong>"${release.schKey}"</strong></c:if>검색결과가 없습니다.</p>
						</div>
					</c:if>
					</div>

					<!-- paging -->
					<div class="paging-wrap">
						${navi.firstPage}
						${navi.prevBlock}
						${navi.pageList}
						${navi.nextBlock}
						${navi.lastPage}
					</div>
					<!-- //paging -->
				</div>
			</div>
		</div>
    </div>
<form method="get" action="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/news/pr/releaseDetail" id="detailForm">
<input type="hidden" name="idx" value="">
<input type="hidden" name="schKey" value="">
<input type="hidden" name="schField" value="">
<input type="hidden" name="queryString" value="">
</form>
</section>
<!--//content-->

<script>
$(document).ready(function(){
	setQueryString();
	$("#listSchKey").keydown(function(e) {
        if (e.keyCode == 13) {
            e.preventDefault(); //기본이벤트(submit) 발생 방지
            goPage(1);
        }
    });
    
    //gnb세팅
    setTimeout(function() {
        setmenu( 3, '040202')
    },100);
})
function goDetail(idx){
	$("#detailForm [name='idx']").val(idx);
	$("#detailForm [name='schKey']").val($("#listSchKey").val());
	$("#detailForm [name='schField']").val($("#schField").val());
	$("#detailForm [name='queryString']").val(queryString);
	$("#detailForm").submit();
}
var newsSwiper = new Swiper(".news-swiper", {
	pagination: {
		el: ".swiper-button-box .fraction-pagination",
		type: "fraction",
	},
	navigation: {
		nextEl: ".swiper-button-box .button-next",
		prevEl: ".swiper-button-box .button-prev",
	},
	breakpoints: {
		1024: {
			slidesPerView: 1.2,
			spaceBetween: 15,
			centeredSlides: true,
		}
	}
});
</script>