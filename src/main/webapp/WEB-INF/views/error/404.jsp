<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<!DOCTYPE html>
<html lang="${LANG}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, viewport-fit=cover">
    <title>대한전선</title>

    <link rel="icon" href="/resources/asset/favicon/favicon.ico">
    <link rel="shortcut icon" href="/resources/asset/favicon/favicon.ico">

    <!-- 공통 Css -->
    <link rel="stylesheet" type="text/css" href="/resources/asset/lib/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/swiper.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/font.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/common.css">
    <link rel="stylesheet" type="text/css" href="/resources/asset/css/sub.css">

    <!-- 공통 Script -->
    <!-- JQuery & Library JS for taihan-->
    <script src="/resources/asset/js/jquery-3.1.1.min.js"></script>
    <script src="/resources/asset/js/jquery.nice-select.min.js"></script>
    <script src="/resources/asset/js/delighters.js"></script>
    <script src="/resources/asset/js/swiper.min.js"></script>
    <script src="/resources/asset/js/TweenMax.min.js"></script>
    <script src="/resources/asset/js/jquery-ui.js"></script>
    <script src="/resources/asset/js/numberCounting.js"></script>
    <script src="/resources/asset/js/ui.js"></script>


    <!-- JSRENDER -->
    <script type="text/javascript" src="/resources/asset/js/jsrender/jsrender.min.js"></script>
    <script type="text/javascript" src="/resources/asset/js/jsrender/jquery.observable.min.js"></script>
    <script type="text/javascript" src="/resources/asset/js/jsrender/jquery.views.min.js"></script>

    <!-- D2 JS -->
    <script type="text/javascript" src="/resources/asset/js/d2/d2.String.prototype.js"></script>
    <script type="text/javascript" src="/resources/asset/js/d2/d2.util.date.js"></script>
    <script type="text/javascript" src="/resources/asset/js/d2/d2.util.form.js"></script>
    <script type="text/javascript" src="/resources/asset/js/d2/d2.util.page.js"></script>
    <script type="text/javascript" src="/resources/asset/js/d2/d2.util.cookie.js"></script>
    <script type="text/javascript" src="/resources/asset/js/d2/d2.util.d2ss.page.js"></script>

    <!-- COMMON -->
    <script type="text/javascript" src="/resources/asset/js/common.js"></script>

</head>

<body>
    <div id="wrap">
        <jsp:include page="/WEB-INF/views/_decorators/inc/header.jsp"></jsp:include>

        <c:if test="${LANG eq 'ko'}">
        <section id="content" class="sub-wrap no-visual">
            <div id="container" class="content-wrap">
                <div class="content-box">
                    <div class="inner-box">
                        <div class="error-wrap">
                            <i class="ico-exclam2"></i>
                            <strong class="title">
                                죄송합니다.<br>
                                요청하신 페이지를 찾을 수 없습니다.
                            </strong>
                            <p class="desc">
                                방문하시려는 페이지의 주소가 잘못 입력되었거나,<br>
                                페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을 수 없습니다.<br>
                                입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.

                            </p>
                            <div class="btn-wrap">
                                <a href="${LANG eq 'ko' ? '/' : '/en'}" class="btn-type">홈으로 가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        </c:if>

        <c:if test="${LANG eq 'en'}">
            <section id="content" class="sub-wrap no-visual">
                <div id="container" class="content-wrap">
                    <div class="content-box">
                        <div class="inner-box">
                            <div class="error-wrap">
                                <i class="ico-exclam2"></i>
                                <strong class="title">
                                    This Page Not Found.
                                </strong>
                                <p class="desc">
                                    The requested URL was not found on this server
                                </p>
                                <div class="btn-wrap">
                                    <a href="${LANG eq 'ko' ? '/' : '/en'}" class="btn-type">Go back Home</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </c:if>

        <jsp:include page="/WEB-INF/views/_decorators/inc/footer.jsp"></jsp:include>
    </div>
</body>
</html>


