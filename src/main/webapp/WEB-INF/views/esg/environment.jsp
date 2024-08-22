<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
		    
<!--content-->
		<section id="content" class="sub-wrap esg-environment">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_02.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="environment.title" text="환경"/></h2>
				</div>
			</div>

			<%-- GNB(S)--%>
		    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
		    <%-- GNB(E) --%>


			<div id="container" class="content-wrap is-last-bg">

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap v2" data-delighter>
							<strong class="title-type">
								<spring:message code="environment.subtitle1" text='자연과 인간을 위한 <br class="mo-br">친환경 경영을 실천합니다.'/>
							</strong>
						</div>
						<c:if test="${LANG eq 'ko'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li class="active"><a href="/esg/environment"><span><spring:message code="environment.topBtn1" text="환경경영"/></span></a></li>
								<li><a href="/esg/pollution"><span><spring:message code="environment.topBtn2" text="오염물질 관리"/></span></a></li>
								<li><a href="/esg/ecoFriendly"><span><spring:message code="environment.topBtn3" text="친환경 기술 및 정책"/></span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li class="active"><a href="/en/esg/environment"><span><spring:message code="environment.topBtn1" text="환경경영"/></span></a></li>
								<li><a href="/en/esg/pollution"><span><spring:message code="environment.topBtn2" text="오염물질 관리"/></span></a></li>
								<li><a href="/en/esg/ecoFriendly"><span><spring:message code="environment.topBtn3" text="친환경 기술 및 정책"/></span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>

						<p class="text-type" data-delighter>
						<c:if test="${LANG eq 'ko' }">
							인류의 소중한 자산인 환경의 보전은 미래 세대를 위한 모두의 과제입니다.<br>
							대한전선은 중장기 환경 전략인 Green2030을 구축하고,<br>
							글로벌 표준에 따른 환경경영시스템(ISO14001)을 바탕으로 체계적인 환경 경영을 실천합니다.
						</c:if>
						<c:if test="${LANG eq 'en' }">
							Conservation of environment, a valuable asset of humankind, is a task of all for the future
							generations. Having established Green 2030, a mid to long-term environmental strategy,
							Taihan will perform systematic environmental management activities based on the global
							environmental management system standard (ISO 14001).
						</c:if>
						</p>
					</div>
				</div>

				<div class="green-wrap">
					<div class="inner-box">
						<h3 class="title-type" data-delighter>Green 2030</h3>
						<ul class="list-detail2" data-delighter>
						<c:if test="${LANG eq 'ko' }">
							<li>
								<div class="icon-box"><i class="ico-earth"></i></div>
								<div class="title-box">
									<strong class="title">환경 정책 고도화</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>환경 경영 강화 및
											투명한 환경 정보 공개</li>
										<li>생물 다양성 보존을 위한
											생태계 보전 활동 추진</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="icon-box"><i class="ico-bulb"></i></div>
								<div class="title-box">
									<strong class="title">환경 투자 강화</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>친환경 케이블 개발 확대</li>
										<li>대기 및 수질 오염 물질
											배출 최소화</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="icon-box"><i class="ico-doc"></i></div>
								<div class="title-box">
									<strong class="title">환경 및 에너지 관리</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>환경 오염 방지를 위한
											최신 시설 및 기술 도입</li>
										<li>폐기물 재활용, 용수
											재이용량 증대, 에너지
											사용량 절감</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="icon-box"><i class="ico-renewable"></i></div>
								<div class="title-box">
									<strong class="title">신재생 에너지 활용</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>신재생 에너지 활용을
											통한 친환경 사업장 운영</li>
									</ul>
								</div>
							</li>
							</c:if>
						<c:if test="${LANG eq 'en' }">
							<li>
								<div class="icon-box"><i class="ico-earth"></i></div>
								<div class="title-box">
									<strong class="title">Upgrade environmental policy
									</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Strengthen environmental management and transparently disclose environmental
											information</li>
										<li>Perform ecosystem conservation activities for biodiversity conservation</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="icon-box"><i class="ico-bulb"></i></div>
								<div class="title-box">
									<strong class="title">Strengthen environmental investment</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Expand development of eco-friendly cables</li>
										<li>Keep air and water pollutant discharge to a minimum</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="icon-box"><i class="ico-doc"></i></div>
								<div class="title-box">
									<strong class="title">Practice environmental and energy management</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Introduce state-of-the-art facilities and technologies for environmental
											pollution prevention</li>
										<li>Recycle wastes, increase water reuse, and reduce energy consumption</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="icon-box"><i class="ico-renewable"></i></div>
								<div class="title-box">
									<strong class="title">Use new & renewable energy</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Operate eco-friendly worksites by using new & renewable energy</li>
									</ul>
								</div>
							</li>
							</c:if>
						</ul>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type"><spring:message code="environment.subtitle2" text="환경 방침"/></h3>
							<p>
							<c:if test="${LANG eq 'ko' }">
								사람과 자연의 조화로운 공존을 지향하며 전담 부서의 주도하에 전사적 환경 경영을 전개합니다.<br>
								케이블, 케이블 접속재 등 제품의 생산과 솔루션 공급의 전 과정에 있어 환경 영향을 철저하게 관리하는 것은 물론, 위험 요인을 선제적으로 발견하고 대응하고 있습니다.<br>
								또한, 공급 업체를 대상으로 환경 관리 정책을 별도로 적용하여 정기적으로 점검하고 환경 교육을 진행하는 등 환경 관리 능력 향상을 위한 다양한 투자를 실시합니다.
							</c:if>
							<c:if test="${LANG eq 'en' }">
								Aiming for harmonious coexistence between human and nature, Taihan performs company-wide
								environmental management led by a dedicated division.<br>In addition to strictly
								controlling environmental impact throughout the process of manufacturing products, such
								as cables and cable accessories, and supplying solutions, Taihan is preemptively discovering
								and responding to risk factors. Moreover, Taihan makes various investments for regular
								inspection of and provision of environmental training to suppliers by applying a
								separate environmental management policy to improve environmental management competences
								of suppliers.
							</c:if>
							</p>
						</div>

						<div class="board-wrap" data-delighter>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_policy01.jpg" alt="">
											</div>
											<strong class="title t-c"><spring:message code="environment.imgTitle1" text="당진케이블공장 생태습지"/></strong>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_policy02.jpg?v4" alt="">
											</div>
											<strong class="title t-c"><spring:message code="environment.imgTitle2" text="중앙전력 제어시스템"/></strong>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_policy03.jpg?v4" alt="">
											</div>
											<strong class="title t-c"><spring:message code="environment.imgTitle3" text="고효율 LED 전등"/></strong>
										</div>
									</li>
								</ul>
								<div class="swiper-button-box">
									<div class="button-prev"></div>
									<div class="button-next"></div>
									<div class="fraction-pagination"></div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>


		</section>
		<!--//content-->

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '030201');
        },100);
        
        var gallerySwiper = new Swiper('.gallery-swiper', {
    		slidesPerView: 3,
    		spaceBetween: 38,
    		watchOverflow: true,
    		pagination: {
    			el: ".swiper-button-box .fraction-pagination",
    			type: "fraction",
    		},
    		navigation: {
    			nextEl: ".swiper-button-box .button-next",
    			prevEl: ".swiper-button-box .button-prev",
    		},
    		breakpoints: {
    			768: {
    				centeredSlides: true,
    				slidesPerView: 1.2,
    				spaceBetween: 15,
    				watchOverflow: true,
    			},
    		},
    	});
    })
</script>





