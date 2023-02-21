<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<!DOCTYPE html>
<html lang="${LANG}">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			  content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, viewport-fit=cover">
		<title>${SEO_TITLE}</title>
		<meta name="description" property="description" content="${SEO_DESCRIPTION}"/>
		<meta name="og:title" property="og:title" content="${SEO_TITLE}"/>
		<meta name="og:description" property="og:description" content="${SEO_DESCRIPTION}"/>		
		<c:if test="${not empty SEO_IMAGE}">
		<meta name="og:image" property="og:image" content="${SEO_IMAGE}"/>
		</c:if>
		<c:if test="${SERVER_ID ne 'prd'}">
			<meta name="robots" content="noindex,nofollow"/>
		</c:if>
		
		<link rel="icon" href="/resources/asset/favicon/favicon02.jpg">
		<link rel="shortcut icon" href="/resources/asset/favicon/favicon02.jpg">

		<!-- 공통 Css -->
		<c:import url="/WEB-INF/views/_decorators/inc/incCss.jsp" />
		<!-- 공통 Script -->
		<c:import url="/WEB-INF/views/_decorators/inc/incScript.jsp" />


		<c:if test="${CON_REQUEST_URI eq '/' or CON_REQUEST_URI eq '/en'}">
		<!-- 메인에만 노출(s) -->
		<link rel="stylesheet" type="text/css" href="${CON_STATIC_URL}/asset/css/main.css?v5">
		<script src="${CON_STATIC_URL}/asset/js/main.js?v4"></script>
		<!-- 메인에만 노출(e) -->
		</c:if>

		<!-- 상용만 적용 -->
		<c:if test="${SERVER_ID eq 'prd'}">
			<!-- Google 분석 코드 -->
			<!-- Global site tag (gtag.js) - Google Analytics -->
			<script async src="https://www.googletagmanager.com/gtag/js?id=UA-39103639-1"></script>
			<script>
			  window.dataLayer = window.dataLayer || [];
			  function gtag(){dataLayer.push(arguments);}
			  gtag('js', new Date());
			
			  gtag('config', 'UA-39103639-1');
			</script>
			<!-- Google 분석 코드 끝-->
		</c:if>
	</head>

	<body>
		<div id="wrap">
			<!-- skip nav -->
			<div id="skip-nav">
				<a href="#container">본문 바로가기</a>
			</div>
			<!--// skip nav -->
			<!-- 2022-10-17 -->
			<div class="body-dim"></div>
			<!-- //2022-10-17 -->
			<jsp:include page="inc/header.jsp"></jsp:include>
			<sitemesh:write property="body" />
			<jsp:include page="inc/footer.jsp"></jsp:include>
			<!-- 2022-11-02 ie 안내 페이지 -->
			<div class="pop-layer pop-ie" id="pop-ie">
				<div class="dim"></div>
				<div class="pop-wrap">
					<div class="pop-content">
						<img src="${LANG eq 'ko' ? '/resources/asset/images/etc/pop_ie.jpg?v4' : '/resources/asset/images/etc/pop_ie_en.jpg'}" alt="" usemap="#image-map">
	                    <map name="image-map">
	                        <area target="_blank" alt="엣지 다운로드" title="엣지 다운로드" href="http://www.microsoft.com/edge" coords="693,500,462,469" shape="rect">
	                        <area target="_blank" alt="크롬 다운로드" title="크롬 다운로드" href="http://www.google.com/chrome" coords="459,500,702,529" shape="rect">
	                    </map>
					</div>
					<!-- 2022-11-03 버튼 추가 -->
					<button class="pop-close" onclick="closePop()"><span class="hidden">팝업닫기</span></button>
					<!-- //2022-11-03 버튼 추가 -->
				</div>
			</div>
		</div>
	</body>
	
	<script type="text/javascript">
		function closePop(){
			sessionStorage.setItem('ieCheck',true);
		}
	</script>

</html>



