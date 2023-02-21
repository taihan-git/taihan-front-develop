<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<!--content-->
<section id="content" class="sub-wrap">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/etc/visual_search_01.jpg?v4)">
        <div class="sub-title">
            <h2 class="title-type">${LANG eq 'ko' ? '태그검색' : 'Tag Search'}</h2>
        </div>
    </div>
	<style>
	.link-select:after {
	   content: none;
	}
	</style>
    <div class="sub-nav">
        <div class="inner-box">
            <a href="#" class="btn-home"><i class="ico-home"><span class="hidden">메인으로</span></i></a>
            <div class="link-select">
                <a href="#" class="current">${LANG eq 'ko' ? '태그검색' : 'Tag Search'}</a>
<!--                 <ul class="list-select"> -->
<%--                     <li><a href="${LANG eq 'ko' ? '/company/overview' : '/en/company/overview'}">Company</a></li> --%>
<%--                     <li><a href="${LANG eq 'ko' ? '/business/product/electricity' : '/en/business/product/electricity'}">Business</a></li> --%>
<%--                     <li><a href="${LANG eq 'ko' ? '/esg/esgManage' : '/en/esg/esgManage'}">ESG</a></li> --%>
<%--                     <li><a href="${LANG eq 'ko' ? '/news/ir/finance' : '/en/news/ir/finance'}">News</a></li> --%>
<%--                     <li><a href="${LANG eq 'ko' ? '/customer/qna' : '/en/customer/qna'}">Customer</a></li> --%>
<!--                 </ul> -->
            </div>
        </div>
    </div>


    <div id="container" class="content-wrap">
        <div class="content-box">
            <div class="inner-box">
                <div class="serach-wrap">
						
					<div class="title-wrap">
						<h3 class="title-type">#${searchInfo.schTagNm}</h3>
					</div>
                    <!-- tab -->
                    <div class="tab-wrap fixed">
                        <ul class="tab-type">
                            <li class="${searchInfo.mode eq 'all' or empty param.mode ? 'active' : ''}"><a href="javascript:void(0)" data-mode="all"><span>${LANG eq 'ko' ? '전체' : 'All results'}<em class="count">(${totalCnt})</em></span></a></li>
                            <li class="${searchInfo.mode eq 'business' ? 'active' : ''}"><a href="javascript:void(0)" data-mode="business"><span>Business(${businessCnt})</em></span></a></li>
                            <li class="${searchInfo.mode eq 'company' ? 'active' : ''}"><a href="javascript:void(0)"  data-mode="company"><span>Company<em class="count">(${companyCnt})</em></span></a></li>
                            <li class="${searchInfo.mode eq 'esg' ? 'active' : ''}"><a href="javascript:void(0)"  data-mode="esg"><span>ESG<em class="count">(${esgCnt})</em></span></a></li>
                            <li class="${searchInfo.mode eq 'news' ? 'active' : ''}"><a href="javascript:void(0)"  data-mode="news"><span>News<em class="count">(${newsCnt})</em></span></a></li>
                            <li class="${searchInfo.mode eq 'customer' ? 'active' : ''}"><a href="javascript:void(0)" data-mode="customer"><span>Customer<em class="count">(${customerCnt})</em></span></a></li>
                        </ul>
                    </div>
                    <!-- //tab -->

                    <c:if test="${empty list}">
                        <div class="search-body">
                            <div class="nodata-box v2">
                                <p>
                                    <c:if test="${LANG eq 'ko'}">
                                    <strong>#${searchInfo.schTagNm} </strong>결과가 없습니다.
                                    </c:if>
                                    <c:if test="${LANG eq 'en'}">
                                        <strong>#${searchInfo.schTagNm} </strong>Not Found
                                    </c:if>
                                </p>
                            </div>
                        </div>
                    </c:if>

                    <c:if test="${not empty list}">
                        <div class="search-top">
                            <em>
                                <c:if test="${searchInfo.mode eq 'all' or empty searchInfo.mode}">${totalCnt}</c:if>
                                <c:if test="${searchInfo.mode eq 'business'}">${businessCnt}</c:if>
                                <c:if test="${searchInfo.mode eq 'company'}">${companyCnt}</c:if>
                                <c:if test="${searchInfo.mode eq 'esg'}">${esgCnt}</c:if>
                                <c:if test="${searchInfo.mode eq 'news'}">${newsCnt}</c:if>
                                <c:if test="${searchInfo.mode eq 'customer'}">${customerCnt}</c:if>
                            </em>${LANG eq 'ko' ? '건의 검색 결과가 있습니다.' : 'results'}
                        </div>

                        <div class="search-body">
                            <ul class="list-search">
                                <c:forEach var="item" items="${list}">
                                    <li>
                                        <div class="category-box">
                                            <span>${item.topTitle1}</span>
                                            <span>${item.topTitle2}</span>
                                        </div>

                                        <c:choose>
                                            <c:when test="${item.topTitle1 eq 'CUSTOMER'}">
                                                <a href="javascript:void(0);" class="title-box">
                                                    <strong class="title" onclick="goCustUrl('${item.clickUrl}');">
                                                            ${item.title}
                                                        <i class="ico-down" onclick="goDown(event,'${item.sysFile}', '${item.orgFile}');"></i>
                                                    </strong>
                                                    <p class="desc">${cmnUtils:unescapeXmlWithOutReplaceBR(item.content)}</p>
                                                </a>

                                            </c:when>
                                            <c:otherwise>
                                                <a href="${item.clickUrl}" class="title-box">
                                                    <strong class="title">${item.title}<i class="ico-arr"></i></strong>
                                                    <p class="desc">${cmnUtils:unescapeXmlWithOutReplaceBR(item.content)}</p>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>

                                        <c:if test="${not empty item.sysImgFile}">
                                            <div class="img-box">
                                                <img src="${CON_UPLOAD_URL}${item.sysImgFile}">
                                            </div>
                                        </c:if>

                                        <c:if test="${not empty item.viewTags}">
                                            <div class="tag-box">
                                                <c:forEach var="tag" items="${item.viewTags}">
                                                    <c:set var="url" value="${LANG eq 'ko' ? '/search/tagList' : '/en/search/tagList'}" />
                                                    <a href="${url}?schTagNm=${tag.tagNm}&schTagIdx=${tag.tagIdx}" class="tag">
                                                        #${tag.tagNm}
                                                    </a>
                                                </c:forEach>
                                            </div>
                                        </c:if>
                                    </li>
                                </c:forEach>
                            </ul>
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
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//content-->

<form type="GET" action="${LANG eq 'ko' ? '/search/tagList' : '/en/search/tagList'}" id="f1">
    <input type="hidden" name="mode" value="">
    <input type="hidden" name="schTagNm" value="${searchInfo.schTagNm}">
    <input type="hidden" name="schTagIdx" value="${searchInfo.schTagIdx}">
</form>


<script>
    $(document).ready(function(){
        $('.tab-type li').on('click',function(){
            $('[name="mode"]').val($(this).find('a').data('mode'));
            $('#pageNo').val(1);
            $('#f1').submit();
        })
    })

    function goPage(no){
        if(no == '#'){
            return;
        }
        $('[name=pageNo]').val(no);
        goSearch();
    }

    function goSearch(){
        $('[name="mode"]').val($('.tab-type').find('li.active').find('a').data('mode'));
        $('#f1').submit();
    }

    function goCustUrl(url){
        location.href = url;
    }

    function goDown(e, sys, org){
        e.stopPropagation();
        goFileDown(sys,org)
    }

</script>