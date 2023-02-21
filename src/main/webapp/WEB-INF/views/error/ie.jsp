<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<html>
<head>
    <title>대한전선</title>
    <link rel="icon" href="/resources/asset/favicon/favicon02.jpg">
    <link rel="shortcut icon" href="/resources/asset/favicon/favicon02.jpg">

    <!-- 공통 Css -->
    <link rel="stylesheet" type="text/css" href="/resources/asset/lib/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/font.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/common.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/sub.css">

    <!-- JQuery & Library JS for taihan-->
    <script src="/resources/asset/js/jquery-3.1.1.min.js"></script>
    <script src="/resources/asset/js/jquery.nice-select.min.js"></script>
    <script src="/resources/asset/js/delighters.js"></script>
    <script src="/resources/asset/js/swiper.min.js"></script>
    <script src="/resources/asset/js/TweenMax.min.js"></script>
    <script src="/resources/asset/js/jquery-ui.js"></script>
    <script src="/resources/asset/js/numberCounting.js"></script>
    <script src="/resources/asset/js/ui.js?20221019"></script>

</head>
<body>
<div id="wrap">
    <main id="content" class="main">
        <!-- 2022-11-02 ie 안내 페이지 -->
        <div class="pop-layer pop-ie" id="pop-ie">
            <div class="dim"></div>
            <div class="pop-wrap">
                <div class="pop-content">
                    <img src="/resources/asset/images/etc/pop_ie.jpg" alt="" usemap="#image-map">
                    <map name="image-map">
                        <area target="_blank" alt="엣지 다운로드" title="엣지 다운로드" href="http://www.microsoft.com/edge" coords="693,500,462,469" shape="rect">
                        <area target="_blank" alt="크롬 다운로드" title="크롬 다운로드" href="http://www.google.com/chrome" coords="459,500,702,529" shape="rect">
                    </map>
                </div>
            </div>
        </div>
    </main>
</div>
<!-- //ie 안내 페이지 -->
</body>
<script>
    $(document).ready(function(){
        // alert('Internet Explorer 브라우저 서비스 지원이 종료됨에 따라 대한전선 신규 홈페이지 또한 해당 환경에서 원활히 작동하지 않습니다.\n' +
        //     '대체 브라우저인 Edge 또는 Chrome에서 열람해 주시기 바랍니다.');
        // history.back();
        UI.layerPopUp({ selId: '#pop-ie'});
    })
</script>
</html>
