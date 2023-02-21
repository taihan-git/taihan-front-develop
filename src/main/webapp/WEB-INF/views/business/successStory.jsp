<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_03.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="successStory.title" text="성공사례"></spring:message></h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
		<div class="content-box">
			<div class="inner-box">
					<!-- 2022-10-21 텍스트 수정 -->
					<c:if test="${LANG eq 'ko' }">
						<div class="title-wrap v2">
							<strong class="title-type">
								케이블 & 솔루션 산업을<br class="mo-br">
								선도하며<br class="pc-br"> 세계 곳곳에<br class="mo-br">
								성공의 발자취를 남깁니다.
							</strong>
							<p>프로젝트의 성공을 위해 가장 필요한 것은 고객의 니즈를 정확하게 파악하는 것 그리고 적재적소에 제품과 서비스를 공급하는 것입니다.<br>
								대한전선은 전 세계 주요 시장에서의 성공 경험을 기반으로 제품 개발에서부터 유지보수까지 전 단계를 아우르는 토탈 솔루션을 제공합니다.<br>
								가장 효율적인 방법으로 최대의 성과를 낼 수 있도록, 세계의 고객과 만나고 소통하겠습니다.<br>
								대한전선의 다양한 성공 사례와 인사이트를 확인해보세요.</p>
						</div>
					</c:if>
					<c:if test="${LANG eq 'en' }">
						<div class="title-wrap v2">
							<strong class="title-type">
								Taihan Cable & Solution manufactures<br>
								high-performance, high-quality products<br>
								with accumulated technology and know-how.
							</strong>
							<p>Taihan endeavors to do its best to manufacture and supply good quality products for continuously keeping promise<br>
								and building trust with customers and maximizing customer satisfaction.<br>
								We provide a customized total solution covering the entire power supply value chain, from the design of the power system<br>
								to the supply, connection, construction and maintenance of cables and cable connector materials.</p>
						</div>
					</c:if>
						<!-- //2022-10-21 텍스트 수정 -->
			</div>
		</div>

		<div class="full-swiper">
			<div class="swiper-wrapper">
				<c:forEach var="item" items="${list}" varStatus="stauts">
				<a href="${LANG eq 'ko' ? '' : '/en'}/business/successStoryDetail?idx=${item.idx}" class="swiper-slide">
					<div class="img-flex">
						<img src="${CON_UPLOAD_URL}${item.sysThumImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
					</div>
					<div class="text-box">
						<div class="category-box">
							<span>${item.category}</span>
							<span>${item.contry}</span>
						</div>
						<strong class="title">${item.title}</strong>
					</div>
				</a>
				</c:forEach>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<div class="swiper-pagination"></div>
			<div class="swiper-button-box">
				<div class="button-prev"></div>
				<div class="button-next"></div>
				<div class="fraction-pagination"></div>
			</div>

		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-gallery" id="successStoryHtml">
						</ul>
					</div>
				</div>

				<div class="btn-wrap t-c">
					<a href="javascript:void(0)" id="btnMore" style="display: none;" class="btn-type" onclick="more();">${LANG eq 'ko' ? '더 보기' : 'View More'}<i class="ico-more2"></i></a>
				</div>
			</div>
		</div>
    </div>
</section>
<!--//content-->

<script>
var pageNo = 1;

$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 2, '0203')
    },100);
    getSuccessStoryList();
})
function goDetail(idx){
	$("#detailForm [name='idx']").val(idx);
	$("#detailForm").submit();
}

function getSuccessStoryList(){

    var url = (lang == 'ko' ? "" : "/en") + "/business/getSuccessStoryList";

    var option = {
        type: "GET",
        url : url,
        data : {
             pageNo : pageNo
        }
    };

    ajaxRestCall(option).then(function(res){
        if(res.code == '00'){
            const data = res.data;
            let webzinListTmpl = $.templates('#successStoryListTmpl');
            $('#successStoryHtml').append(webzinListTmpl.render(data));
			if(pageNo < data.navi.lastPageNo){
				$("#btnMore").show()
			}else{
				$("#btnMore").hide()
			}
        }
    })
}
function more(){
    pageNo++;
    getSuccessStoryList();
}

function fullSwiperInit() {
	/*
	breakpoints 버그있음.
	*/
	var paramsPc = {
		slidesPerView: 'auto',/* 수정 */
		centeredSlides: true,
		loop:true,//2022-10-19 추가
		spaceBetween: 0,
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
		pagination: {
			el: ".swiper-pagination",
		},
	};
	var paramsMo = {
		slidesPerView: 1.2,
		centeredSlides: true,
		spaceBetween: 0,
		pagination: {
			el: ".swiper-button-box .fraction-pagination",
			type: "fraction",
		},
		navigation: {
			nextEl: ".swiper-button-box .button-next",
			prevEl: ".swiper-button-box .button-prev",
		},


	};
	if (matchMedia("screen and (min-width: 1025px)").matches) {
		new Swiper('.full-swiper', paramsPc);
	} else {
		new Swiper('.full-swiper', paramsMo);
	}

}
fullSwiperInit();
$(window).resize(function () {
	fullSwiperInit();
});
</script>

<script id="successStoryListTmpl" type="text/x-jsrender">
{{for list}}
	<li>
		<a href="${LANG eq 'ko' ? '' : '/en'}/business/successStoryDetail?idx={{:idx}}" class="list-item">
			<div class="img-flex">
				<img src="${CON_UPLOAD_URL}{{:sysThumImgFile}}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
			</div>
			<div class="category-box">
				<span>{{:category}}</span>
				<span>{{:contry}}</span>
			</div>
			<strong class="title">{{:title}}</strong>
		</a>
	</li>
{{/for}}
</script>