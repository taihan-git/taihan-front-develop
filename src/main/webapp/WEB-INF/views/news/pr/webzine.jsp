<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<section id="content" class="sub-wrap ir">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_pr_01.jpg)">
        <div class="sub-title">
            <h2 class="title-type">PR</h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />

    <div id="container" class="content-wrap">
        <div class="title-wrap">
            <h3 class="title-type"><spring:message code="webzine.title" text="웹진"/></h3>
            <p><spring:message code="webzine.desc" text="대한전선의 새로운 소식과 관련 정보를 전해 드립니다."/></p>
        </div>

        <div class="content-box bg">
            <div class="inner-box">
            <c:if test="${not empty topItem}">
                <div class="webzine-wrap">
                    <div class="update-webzine">
                        <!-- 2022-10-19 이미지 영역 수정 -->
                        <div class="img-webzine">
                            <a href="${topItem.url}">
                            <div class="img-flex">
                                <img src="${CON_UPLOAD_URL}${topItem.sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${topItem.thumImgText}">
                            </div>
                            </a>
                        </div>
                        <!-- //2022-10-19 이미지 영역 수정 -->
                        <!-- 수정 -->
                       <!-- 2022-11-29 -->
						<!-- <p class="info-text"><i class="ico-notice"></i>현재 대한전선 웹진은 더 나은 소통 채널이 되기 위해 잠시 쉬어가는 중입니다.</p> -->
						<!-- //2022-11-29 -->
                        <!-- //수정 -->
                    </div>
                    <div class="update-list">
                        <%--<p class="desc">대한전선의 다양한 이야기를 만나보세요.</p>--%>
                        <strong class="title">${topItem.title}</strong>
                        <!-- 2022-10-19 화살표 수정 -->
                        <ul>
                            <c:if test="${not empty topItem.mungu1}">
                            <li>
                                <a href="${topItem.mungu1Url}">
                                    <div class="title-box">
                                        <strong class="title">${topItem.mungu1}</strong>
                                        <!-- 2022-10-20 화살표 변경 -->
                                        <i class="ico-motion-arr"></i>
                                        <!--//2022-10-20 화살표 변경 -->
                                    </div>
                                </a>
                            </li>
                            </c:if>
                            <c:if test="${not empty topItem.mungu2}">
                                <li>
                                    <a href="${topItem.mungu2Url}">
                                        <div class="title-box">
                                            <strong class="title">${topItem.mungu2}</strong>
                                            <!-- 2022-10-20 화살표 변경 -->
                                            <i class="ico-motion-arr"></i>
                                            <!--//2022-10-20 화살표 변경 -->
                                        </div>
                                    </a>
                                </li>
                            </c:if>
                            <c:if test="${not empty topItem.mungu3}">
                                <li>
                                    <a href="${topItem.mungu3Url}">
                                        <div class="title-box">
                                            <strong class="title">${topItem.mungu3}</strong>
                                            <!-- 2022-10-20 화살표 변경 -->
                                            <i class="ico-motion-arr"></i>
                                            <!--//2022-10-20 화살표 변경 -->
                                        </div>
                                    </a>
                                </li>
                            </c:if>
                        </ul>
                        <!-- //2022-10-19 화살표 수정 -->
                    </div>
                </div>
            </c:if>
            </div>
        </div>


        <div class="content-box webzine">
            <div class="inner-box">
                <div class="board-wrap">

                   	<!-- 2022-11-29 -->
				<div class="board-top v2">
					<p class="info-text"><i class="ico-notice"></i>현재 대한전선 웹진은 더 나은 소통 채널이 되기 위해 잠시 쉬어가는 중입니다.</p>
					<!-- //2022-11-29 -->
					<!-- search -->
                        <div class="search-box v2">
                            <div class="select-type">
                                <select name="year">
                                    <option data-display=""><spring:message code="webzine.year" text="년도선택"/></option>
                                    <c:if test="${not empty years}">
                                        <c:forEach var="year" items="${years}">
                                            <option value="${year}">${year}</option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="board-body" id="webzineList">
                        <%-- webzineList Ajax--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//content-->

<script>
    var pageNo = 1 ;

    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '040203')
        },100);

        //웹진 리스트 호출
        getWebzineList();

        $('select[name="year"]').change(function(){
            pageNo = 1;
            getWebzineList();
        })
    })

    function getWebzineList(){
        var url = lang == 'ko' ?  "/news/pr/webzine-list" : "/en/news/pr/webzine-list";
        var yearVal = $("select[name='year']").parent().find('ul').find('.selected').data('value');

        var option = {
            type: "GET",
            url : url,
            data : {
                year : typeof yearVal === 'number' ? yearVal : ''
                , pageNo : pageNo
                , lang : lang
            }
        };

        ajaxRestCall(option).then(function(res){
            if(res.code == '00'){
                const data = res.data;
                if(data && !isEmpty(data.list)){
                    let webzinListTmpl = $.templates('#webzinListTmpl');
                    $('#webzineList').html(webzinListTmpl.render(data));
                }else{
                    $('#webzineList').empty();
                }
            }
        })
    }

    function more(){
        pageNo++;
        getWebzineList();
    }
</script>


<%-- 웹진 리스트(하단 영역)--%>
<script id="webzinListTmpl" type="text/x-jsrender">
<ul class="list-gallery v2">
    {{for list}}
        <li>
            <a href="{{:url}}" class="list-item">
                <div class="img-flex">
                    <img src="${CON_UPLOAD_URL}{{:sysThumImgFile}}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="{{:thumImgText}}">
                </div>
                <strong class="title">{{:title}}</strong>
            </a>
        </li>
    {{/for}}
</ul>
{{if isMore}}
<div class="btn-wrap t-c">
<a href="javascript:void(0);" class="btn-type" onClick=more();><spring:message code="webzine.btnMore" text="더보기"/><i class="ico-more2"></i></a>
</div>
{{/if}}
</script>
