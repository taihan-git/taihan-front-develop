<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${CON_STATIC_URL}/js/vue.min.js"></script> 
<script src="${CON_STATIC_URL}/js/httpVueLoader.js"></script>
<script src="${CON_STATIC_URL}/js/vue-lib.js"></script>
<script src="${CON_STATIC_URL}/js/vue-i18n.js"></script>
<script src="${CON_STATIC_URL}/js/axios.min.js"></script>
<!-- https://momentjs.com/ -->
<script src="${CON_STATIC_URL}/js/moment.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/jquery.form.js"></script>
<script src="${CON_STATIC_URL}/js/es6-promise.auto.js"></script> 
<script type="text/javascript" src="${CON_STATIC_URL}/js/d2.lib.min.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/d2.String.prototype.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/d2.util.date.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/d2.util.form.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/d2.util.page.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/d2.util.d2ss.page.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/calendar.js"></script>

<!-- JSRENDER -->
<script type="text/javascript" src="${CON_STATIC_URL}/js/jsrender/jsrender.min.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/jsrender/jquery.observable.min.js"></script>
<script type="text/javascript" src="${CON_STATIC_URL}/js/jsrender/jquery.views.min.js"></script>
<link rel="stylesheet" type="text/css" href="${CON_STATIC_URL}/css/ui.css">
<link rel="stylesheet" href="${CON_STATIC_URL}/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="${CON_STATIC_URL}/bootstrap/css/bootstrap-theme.min.css" />
<script type="text/javascript" src="${CON_STATIC_URL}/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" />
<link rel="stylesheet" href="${CON_STATIC_URL}/css/style.css" />
<link rel="stylesheet" href="${CON_STATIC_URL}/css/theme/default.css" id="theme" />
<link rel="stylesheet" href="${CON_STATIC_URL}/css/font-awesome/css/font-awesome.css" /><!-- 폰트는 호출 경로와 사용 경로가 같아야 함. -->
<link rel="stylesheet" href="${CON_STATIC_URL}/css/d3net.css" />
<link rel="stylesheet" type="text/css" media="screen" href="${CON_STATIC_URL}/js/jquery-ui/jquery-ui.css" />
		<link rel="stylesheet" href="${CON_STATIC_URL}/css/style.css" />
	    <link rel="stylesheet" href="${CON_STATIC_URL}/css/ui.css?1">
</head>
<body data-spy="scroll" class="pace-done">
	<div class="pace  pace-inactive hide pace-inactive">
		<div class="pace-progress" data-progress-text="100%" data-progress="99" style="width: 100%;">
			<div class="pace-progress-inner"></div>
		</div>
		<div class="pace-activity"></div>
	</div>
	<div id="page-loader" class="fade in hide">
		<span class="spinner"></span>
	</div>
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed in">
<%-- 		<%@include file="/WEB-INF/views/_decorators/inc/header.jsp" %>
		<%@include file="/WEB-INF/views/_decorators/inc/gnb.jsp" %>
		<%@include file="/WEB-INF/views/_decorators/inc/lnb.jsp" %> --%>
		<!-- <div class="container" id="ajax-content"> -->
		<sitemesh:write property="body"/>
		<!-- </div> -->
		<%-- begin scroll to top btn - 사용시 fade class 제거 --%>
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	</div>
</body>
</html>