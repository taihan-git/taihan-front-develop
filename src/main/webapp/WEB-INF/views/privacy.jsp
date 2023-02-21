<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<!--content-->
<section id="content" class="sub-wrap customer">

	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/etc/visual_privacy.jpg)">
		<div class="sub-title">
			<h2 class="title-type">${LANG eq 'ko' ? '개인정보 처리방침' : 'Privacy Policy'}</h2>
		</div>
	</div>

	<style>
		.link-select:after {
			content: none;
		}
	</style>
	
	<div class="sub-nav">
		<div class="inner-box">
			<a href="${LANG eq 'ko' ? '/' :'/en'}" class="btn-home"><i class="ico-home"><span class="hidden">메인으로</span></i></a>
			<div class="link-select">
				<a href="#" class="current">${LANG eq 'ko' ? '개인정보 처리방침' : 'Privacy Policy'}</a>
			</div>
		</div>
	</div>

	<div id="container" class="content-wrap">
		<div class="content-box">
			<div class="inner-box">
				<!-- 2022-10-13 -->
				<div class="terms-wrap">

					<%--editor (s) --%>
					${cmnUtils:unescapeXml(privacy)}
					<!-- editor (e)-->

					<div class="search-box" style="${empty privacyList ? 'display: none;' : ''}">
						<div class="select-type">
							<select name="schIdx">
								<option data-display="${LANG eq 'ko' ? '이전 개인정보 처리방침' : 'Previous Privacy Policy'}" value="">${LANG eq 'ko' ? '이전 개인정보 처리방침' : 'Previous Privacy Policy'}</option>
								<c:forEach var="item" items="${privacyList}">
									<option value="${item.idx}">${item.title}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
				<!-- //2022-10-13 -->
			</div>
		</div>
	</div>
</section>
<!--//content-->
<script>
    $(document).ready(function(){
		$('select[name="schIdx"]').change(function(){

			if(isEmpty($(this).val())){
				return;
			}

			var url = lang == 'ko' ? '/privacy' : '/en/privacy';
			var schIdx =  $('select[name="schIdx"]').val();
			location.href = url +"?schIdx="+ schIdx;
		})
    })
</script>





