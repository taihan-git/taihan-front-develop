<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap network-main">

	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_04.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="globalNetwork.title" text="글로벌 네트워크"></spring:message></h2>
		</div>
	</div>

	<%-- GNB(S)--%>
	<jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
	<%-- GNB(E) --%>

	<div id="container" class="content-wrap">
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap">
					<h3 class="title-type"><spring:message code="globalNetwork.subtitle" text="대한전선의 무대는 세계입니다."></spring:message></h3>
					<p><spring:message code="globalNetwork.subdesc" text="글로벌 주요 시장에서 구축한 탄탄한 네트워크를 기반으로,<br>
							고객의 다양한 요구에 신속하고 유연하게 대응합니다.<br>
							전 세계를 무대로 활약하는 대한전선을 만나보세요."></spring:message></p>
				</div>

				<div class="summary-wrap">
					<ul>
						<li>
							<i class="ico-network"></i>
							<dl>
								<dt><spring:message code="globalNetwork.sumary1" text="생산 기지"></spring:message></dt>
								<dd>
									<!-- 2022-10-20 수정 -->
									<strong id="counting1">7</strong>
									<!-- //2022-10-20 수정 -->
									<spring:message code="globalNetwork.count" text="개"></spring:message>
								</dd>
							</dl>
						</li>
						<li>
							<i class="ico-network2"></i>
							<dl>
								<dt><spring:message code="globalNetwork.sumary2" text="해외 법인"></spring:message></dt>
								<dd>
									<strong id="counting2">8</strong><spring:message code="globalNetwork.count" text="개"></spring:message>
								</dd>
							</dl>
						</li>
						<li>
							<i class="ico-network3"></i>
							<dl>
								<dt><spring:message code="globalNetwork.sumary3" text="해외 지사"></spring:message></dt>
								<dd>
									<strong id="counting3">15</strong><spring:message code="globalNetwork.count" text="개"></spring:message>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="map-wrap">
			<div class="map-box">
				<c:if test="${LANG eq 'ko' }">
					<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/global_map1.svg?v4"></object>
					<ul class="list-area">
						<li>
							<a href="javascript:goLoc('korea')" class="area-box korea">
								<div class="title-box">
									<strong>Korea</strong>
									<i class="ico-pin v2"></i>
								</div>
								<div class="list-box">
									<span class="item">본사<strong>1</strong></span>
									<span class="item">본점<strong>1</strong></span>
									<span class="item">공장<strong>2</strong></span>
									<span class="item">영업소<strong>2</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('america')" class="area-box america">
								<div class="title-box">
									<strong>America</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">영업법인<strong>1</strong></span>
									<span class="item">지사<strong>2</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('asia')" class="area-box asia">
								<div class="title-box">
									<strong>Asia</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">생산법인<strong>1</strong></span>
									<span class="item">지사<strong>3</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('oceania')" class="area-box oceania">
								<div class="title-box">
									<strong>Oceania</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">영업법인<strong>2</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('middle')" class="area-box middle">
								<div class="title-box">
									<strong>Middle East Asia</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">생산법인<strong>2</strong></span>
									<span class="item">지사<strong>6</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('europe')" class="area-box eu">
								<div class="title-box">
									<strong>Europe</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">영업법인<strong>1</strong></span>
									<span class="item">지사<strong>4</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('africa')" class="area-box africa">
								<div class="title-box">
									<strong>Africa</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">생산법인<strong>1</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
					</ul>
				</c:if>
				<c:if test="${LANG eq 'en' }">
					<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/global_map1.svg?v4"></object>
					<ul class="list-area">
						<li>
							<a href="javascript:goLoc('korea')" class="area-box korea">
								<div class="title-box">
									<strong>Korea</strong>
									<i class="ico-pin v2"></i>
								</div>
								<div class="list-box">
									<span class="item">Office<strong>1</strong></span>
									<span class="item">Main Office<strong>1</strong></span>
									<span class="item">Plant<strong>2</strong></span>
									<span class="item">Sales Office<strong>2</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('america')" class="area-box america">
								<div class="title-box">
									<strong>America</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">Sales Subsidiary<strong>1</strong></span>
									<span class="item">Branch Office<strong>2</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('asia')" class="area-box asia">
								<div class="title-box">
									<strong>Asia</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">Production Subsidiary<strong>1</strong></span>
									<span class="item">Branch Office<strong>3</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('oceania')" class="area-box oceania">
								<div class="title-box">
									<strong>Oceania</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">Sales Subsidiary <strong>2</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('middle')" class="area-box middle">
								<div class="title-box">
									<strong>Middle East Asia</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">Production Subsidiary<strong>2</strong></span>
									<span class="item">Branch Office<strong>6</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('europe')" class="area-box eu">
								<div class="title-box">
									<strong>Europe</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">Sales Subsidiary<strong>1</strong></span>
									<span class="item">Branch Office<strong>4</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:goLoc('africa')" class="area-box africa">
								<div class="title-box">
									<strong>Africa</strong>
									<i class="ico-pin"></i>
								</div>
								<div class="list-box">
									<span class="item">Production Subsidiary<strong>1</strong></span>
									<i class="ico-arr"></i>
								</div>
							</a>
						</li>
					</ul>
				</c:if>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<!-- 2022-10-21 타이틀 관련 수정 -->
				<div class="title-wrap2 t-c">
					<h4 class="title-type"><spring:message code="globalNetwork.intro" text="주요 사업장"></spring:message></h4>
				</div>
				<div class="board-wrap">
					<div class="board-body">
						<!-- 2022-10-21 타이틀 관련 수정 -->
						<ul class="list-gallery">
							<c:if test="${LANG eq 'ko' }">
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjin" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace01.jpg" alt="">
											<strong class="title">당진공장<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">당진공장<i class="ico-arr"></i></strong> <span class="sub">세계 최대 규모의 단일 케이블 공장</span>
										<p class="desc">초고압, 산업전선, 소재, 통신, 부스덕트 등 전력공급 Value Chain 전체를 아우르는 다양한 제품 포트폴리오를 보유한 최고 시설의 공장입니다.</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjinElect" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace02.jpg" alt="">
											<strong class="title">당진 전력기기공장<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">당진 전력기기공장<i class="ico-arr"></i></strong> <span class="sub">국내 유일 단일 전력기기 생산공장</span>
										<p class="desc">케이블 접속자재 및 절연물을 생산하며, 철저한 품질관리와 우수한 제조 경쟁력을 활용하여 고객의 요구사항에 완벽히 부합하는 제품을 제공합니다.</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/vina" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace03.jpg" alt="">
											<strong class="title">Taihan VINA<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">Taihan VINA<i class="ico-arr"></i></strong> <span class="sub">글로벌 시장 공략의 전략적 요충지</span>
										<p class="desc">베트남에 위치한 종합전선회사로 동남아시아를 비롯해 미주, 오세아니아 등까지 진출하며 글로벌 시장으로 영향력을 확장하고 있습니다.</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/mtec" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace04.jpg" alt="">
											<strong class="title">M-TEC<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">M-TEC<i class="ico-arr"></i></strong> <span class="sub">아프리카 대륙의 전진 기지</span>
										<p class="desc">남아프리카공화국에 위치한 종합전선회사로, 탄탄한 현지 네트워크 및 최고 품질의 제품을 기반으로 아프리카 대륙 최고의 전선기업으로 발돋움 합니다.</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/saudi" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace05.jpg" alt="">
											<strong class="title">Saudi Taihan<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">Saudi Taihan<i class="ico-arr"></i></strong> <span class="sub">중동 전력기기 생산의 메카</span>
										<p class="desc">GCC 지역 최초이자 유일한 HV(High Voltage)급 케이블 접속기기 제조업체로, 중동 전력기기 시장의 주요 공급자로 자리매김하였습니다.</p>
									</a>
								</li>
							</c:if>
							<c:if test="${LANG eq 'en' }">
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjin" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace01.jpg" alt="">
											<strong class="title">Dangjin Plant<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">Dangjin Plant<i class="ico-arr"></i></strong>
										<span class="sub">Cable production plant of top global scale and efficiency</span>
										<p class="desc">
											This plant is the cradle of cable technology and a key production base of Taihan, boasting the world's largest scale and efficiency.
										</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjinElect" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace02.jpg" alt="">
											<strong class="title">Cable Accessory at Dangjin<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">Dangjin Cable Accessory Plant<i class="ico-arr"></i></strong>
										<span class="sub">The only integrated cable accessory production plant in Korea</span>
										<p class="desc">
											The Dangjin Cable Accessory produces cable accessories such as joints and insulators. This plant is striving to advance technology to produce optimal products that perfectly meet customer requirements.
										</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/vina" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace03.jpg" alt="">
											<strong class="title">Taihan VINA<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">Taihan VINA<i class="ico-arr"></i></strong>
										<span class="sub">A strategic foothold toward the global market</span>
										<p class="desc">
											Taihan VINA is a general cable company located in Ho Chi Minh City, Vietnam, and has been producing a wide range of power and communication cables.
										</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/mtec" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace04.jpg" alt="">
											<strong class="title">M-TEC<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">M-TEC<i class="ico-arr"></i></strong>
										<span class="sub">Taihan’s forward base on the African continent</span>
										<p class="desc">
											M-TEC, located in South Africa, was established in 2000 as a forward base to target the African continent. M-TEC is a general cable company that produces optical communication cables and power cables, and has been supplying high-quality cables to many countries in Africa, including South Africa.
										</p>
									</a>
								</li>
								<li>
									<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/saudi" class="list-item">
										<div class="img-flex">
											<img src="${CON_STATIC_URL}/asset/images/business/workplace05.jpg" alt="">
											<strong class="title">Saudi Taihan<i class="ico-arr"></i></strong>
										</div>
										<strong class="title">Saudi Taihan<i class="ico-arr"></i></strong>
										<span class="sub">Cable accessory production in the heart of the Middle East</span>
										<p class="desc">
											Saudi Taihan is the first and only HV (High Voltage) cable accessory manufacturer in the GCC region. Established through a joint investment with Mohammed Al-Ojaimi Group, an EPC specializing in power transmission and distribution in Saudi Arabia, Saudi Taihan is located in an industrial area near the capital Riyadh.
										</p>
									</a>
								</li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--//content-->

<script>
	$(document).ready(function() {
		$('#counting1').numberCounting({ counting: 7, terms: 7, countingTime: 150 });//2022-10-20 수정
		$('#counting2').numberCounting({ counting: 8, terms: 8, countingTime: 150 });//2022-10-20 수정
		$('#counting3').numberCounting({ counting: 15, terms: 15, countingTime: 50 });

		console.log('lang = ',lang);

		if(lang == 'en' || lang == 'ko'){
			//2022-10-26 지도 스크립트 수정
			var map = $('.area-box');

			TweenMax.to(map.find('.list-box'), 1, {
				y: 50,
				opacity: 0,
				ease: Power4.easeOut,
			});
			TweenMax.to(map.find('.title-box'), 1, {
				opacity: 1,
				ease: Power4.easeOut,
			});


			map.hover(function (e) {
				TweenMax.to(map.find('.title-box'), 1, {
					opacity: 0.6,
					ease: Power4.easeOut,
				});
				TweenMax.to($(this).find('.list-box'), 1, {
					y: 0,
					opacity: 1,
					ease: Power4.easeOut,
				});
				TweenMax.to($(this).find('.title-box'), 1, {
					y: 0,
					opacity: 1,
					ease: Power4.easeOut,
				});
				$(this).addClass('active');
			}, function () {
				TweenMax.to(map.find('.title-box'), 1, {
					opacity: 1,
					ease: Power4.easeOut,
				});
				TweenMax.to($(this).find('.list-box'), 1, {
					y: 50,
					opacity: 0,
					ease: Power4.easeOut,
				});
				$(this).removeClass('active');
			});
		}
		//gnb세팅
		setTimeout(function() {
			setmenu(2, '0204')
		}, 100);
	})
	//수정
	if(lang == 'ko'){
		window.onload = function () {
			var map = $('.map-object')[0].contentDocument;

			TweenMax.to($(map).find('.info'), 1, {
				y: 50,
				opacity: 0,
				ease: Power4.easeOut,
			});
			TweenMax.to($(map).find('.text path'), 1, {
				opacity: 1,
				ease: Power4.easeOut,
			});


			$(map).find('.map').hover(function (e) {
				TweenMax.to($(map).find('.map .info'), 1, {
					y: 50,
					opacity: 0,
					ease: Power4.easeOut,
				});
				TweenMax.to($(map).find('.map .pin'), 1, {
					opacity: 0.6,
					ease: Power4.easeOut,
				});
				TweenMax.to($(map).find('.text path'), 1, {
					opacity: 0.6,
					ease: Power4.easeOut,
				});
				TweenMax.to($(this).find('.info'), 1, {
					y: 0,
					opacity: 1,
					ease: Power4.easeOut,
				});
				TweenMax.to($(this).find('.text path'), 1, {
					opacity: 1,
					ease: Power4.easeOut,
				});
				TweenMax.to($(this).find('.map .pin'), 1, {
					opacity: 1,
					ease: Power4.easeOut,
				});
			}, function () {
				TweenMax.to($(map).find('.map .pin'), 1, {
					opacity: 1,
					ease: Power4.easeOut,
				});
				TweenMax.to($(map).find('.text path'), 1, {
					opacity: 1,
					ease: Power4.easeOut,
				});

				TweenMax.to($(this).find('.info'), 1, {
					y: 50,
					opacity: 0,
					ease: Power4.easeOut,
				});

			});
			$(map).find(".map .info a").click(function (){
				var location = $(this).parents(".map").attr("class");
				var loc = location.replace("map map-","");
				goLoc(loc);
			});
		}
	}

	function goLoc(loc){
		location.href = (lang == 'en' ? '/en' : '') + "/business/globalNetwork/"+loc;
	}
</script>