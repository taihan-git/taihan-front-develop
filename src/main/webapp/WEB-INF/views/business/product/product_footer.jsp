<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<!-- footer -->
<div class="content-box">
	<div class="inner-box">
		<!-- search -->
		<div class="search-box">
			<div class="title-wrap2">
				<h4 class="title-type">Product Quick Search</h4>
				<p><spring:message code="product.footerSubTitle" text="필요한 제품을 바로 검색해보세요."/></p>
			</div>
			<div class="search-form">
				<input type="text" class="input-type" id="schKey2"
				<c:if test="${LANG eq 'ko'}">placeholder="검색어를 입력하세요."</c:if>
				<c:if test="${LANG eq 'en'}">placeholder="Enter the Keyword"</c:if>
				>
				<button class="btn-clear"><i class="ico-clear" onclick="$('#schKey2').val('');"><span class="hidden"><spring:message code="product.removeSch" text="검색어지우기"/></span></i></button>
				<button type="button" class="btn-search" onclick="search2()"><i class="ico-srch"><span class="hidden"><spring:message code="product.sch" text="검색"/></span></i></button>
			</div>
			<div class="recomn-box">
				<div class="tag-box">
					<c:if test="${LANG eq 'ko'}">
						<a href="/business/product/productDetail?idx=1" class="tag">초고압케이블</a>
						<a href="/business/product/productDetail?idx=37" class="tag">해저케이블</a>
						<a href="/business/product/productDetail?idx=3" class="tag">OF케이블</a>
						<a href="/business/product/productDetail?idx=15" class="tag">증용량가공선</a>
					</c:if>
					<c:if test="${LANG eq 'en'}">
						<a href="/en/business/product/electricity/cable" class="tag">EHV Cable</a>
						<a href="/en/business/product/productDetail?idx=38" class="tag">Submarine Cable</a>
						<a href="/en/business/product/productDetail?idx=4" class="tag">EHV OF Cable</a>
						<a href="/en/business/product/electricity/overheadline" class="tag">Overhead Line</a>
					</c:if>
				</div>
			</div>
		</div>
		<!-- //search -->
	</div>
</div>
<script>
$(document).ready(function(){
	$('#schKey2').on('keydown',function(e){
       if(e.keyCode == 13){
    	   search2();
       }
   })
});
function search2(){
	var str = $("#schKey2").val().trim();
	if(isEmpty(str)){
		alert('<spring:message code="alert.schWord" text="검색어를 입력해주세요"/>');
		$("#schKey2").focus();
		return false;
	};
// 	if(str.length < 2){
// 		alert("검색어를 2자 이상 입력해 주세요.");
// 		$("#schKey2").focus();
// 		return false;
// 	}
	location.href = (lang == 'en' ? "/en" : "") + "/search/list?schKey="+encodeURI(str);
}
</script>