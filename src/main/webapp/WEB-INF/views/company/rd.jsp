<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<!--content-->
<section id="content" class="sub-wrap company-rnd">

	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/company/visual_company_04.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type">R&D</h2>
		</div>
	</div>
	<%-- GNB(S)--%>
	<jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
	<%-- GNB(E) --%>

	<div id="container" class="content-wrap">

		<div class="content-box">
			<div class="inner-box">
				<!-- 2022-10-21 텍스트 수정 -->
				<div class="title-wrap v2" data-delighter>
					<c:if test="${LANG eq 'ko' }">
						<strong class="title-type">
							인류의 미래를 밝혀 줄 <br class="mo-br">차세대 기술을 실현합니다.
						</strong>
						<p>
							핵심 사업인 케이블&솔루션 분야의 기술 선도는 물론,
							친환경 제품 개발과 차세대 분야의 연구에 이르기까지<br class="pc-br">
							대한전선은 변화의 흐름에 빠르게 대응하며,
							사회와 환경에 기여할 수 있는
							기술 실현에 앞장서고 있습니다.<br>
							지난 70여 년 동안 쌓아온 수많은 최초의 기록과
							혁신의 의지를 기반으로 <br class="pc-br">
							케이블&솔루션 산업의
							미래를 이끌어가겠습니다.
						</p>
					</c:if>
					<c:if test="${LANG eq 'en' }">
						<!-- 2022-10-26 텍스트 수정 -->
						<!-- 2022-11-09 수정 -->
						<div class="title-wrap v2" data-delighter>
							<strong class="title-type">
								Taihan realizes next-generation technology <br>that brightens the future of mankind.

							</strong>
							<p>
								From leading technology in the core business of cable & solution, to developing eco-friendly products and researching in the next generation sector, Taihan is responding quickly to the flow of change and taking the lead in realizing technology that can contribute to society and the environment. Based on numerous "firsts" records accumulated over the past 70 years and a strong will to innovate,
								Taihan is confident to lead the future of the cable & solution industry.
							</p>
						</div>
						<!-- //2022-11-09 수정 -->
						<!-- //2022-10-26 텍스트 수정 -->
					</c:if>
				</div>
				<!-- //2022-10-21 텍스트 수정 -->
				<div class="title-wrap4" data-delighter>
					<h3 class="title-type">Vision</h3>
				</div>

				<div class="focus-box" data-delighter>
					<c:if test="${LANG eq 'ko' }">
						<strong class="focus-text">고객의 가치를 반영한 사업지향적 기술혁신</strong>
					</c:if>
					<c:if test="${LANG eq 'en' }">
						<strong class="focus-text">Business-oriented technology innovation that reflects customer values</strong>
					</c:if>
				</div>


			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">

				<div class="title-wrap4" data-delighter>
					<h3 class="title-type">Mission</h3>
				</div>

				<ul class="list-detail2 v3" data-delighter>
					<c:if test="${LANG eq 'ko' }">
						<li>
							<div class="icon-box"><i class="ico-newmarket"></i><strong>신시장 창출</strong></div>
							<div class="title-box">
								<strong class="title">Marketing Roadmap 연계,<br class="pc-br">
									시장 지배력 및 사업 개발력 제고</strong>
							</div>
							<div class="desc-box">
								<ul class="list-type v2">
									<li>전력시스템 기술 역량 기반<br>
										시장선도형 아이템 창출</li>
									<li>고객지향 R&D 발굴 및 관련<br>
										신시장 선도</li>
								</ul>
							</div>
						</li>
						<li>
							<div class="icon-box"><i class="ico-newprod"></i><strong>신제품 개발</strong></div>
							<div class="title-box">
								<strong class="title">Product Roadmap에 따른<br class="pc-br">
									신제품 우선 순위 및 방향성 선정</strong>
							</div>
							<div class="desc-box">
								<ul class="list-type v2">
									<li>고부가가치 신제품 개발을<br>
										통한 시장 선점</li>
									<li>신제품 개발 및 제품 사업화를<br>
										통한 미래 성장동력 확보</li>
								</ul>
							</div>
						</li>
						<li>
							<div class="icon-box"><i class="ico-newtech"></i><strong>신기술 획득</strong></div>
							<div class="title-box">
								<strong class="title">Technology Roadmap 전략을
									통한 미래 신기술 확보</strong>
							</div>
							<div class="desc-box">
								<ul class="list-type v2">
									<li>미래 시장 예측을 통한 기술 로드맵 포트폴리오 수립</li>
									<li>신사업∙신기술 발굴, 기술경영 및 전략기획</li>
								</ul>
							</div>
						</li>
					</c:if>
					<c:if test="${LANG eq 'en' }">
						<!-- 2022-11-03  -->
						<li>
							<div class="icon-box"><i class="ico-newmarket"></i><strong>Creation <br class="mo-br">of <br>new markets</strong></div>
							<div class="title-box">
								<strong class="title">Linkage of the marketing roadmap and enhancement of market dominance and business development</strong>

							</div>
							<div class="desc-box">
								<ul class="list-type v2">
									<li>Create market-leading items based on power systems and technological capabilities</li>
									<li>Lead the new markets by discovering customer-oriented R&D</li>
								</ul>
							</div>
						</li>
						<li>
							<div class="icon-box"><i class="ico-newprod"></i><strong>Development <br class="mo-br">of<br class="mo-br"> new products</strong></div>
							<div class="title-box">
								<strong class="title">Selection of priorities and direction of new products according to the product roadmap</strong>
							</div>
							<div class="desc-box">
								<ul class="list-type v2">
									<li>Preoccupy the market by developing high value-added new products</li>
									<li>Secure future growth engines through new product development and commercialization</li>
								</ul>
							</div>
						</li>
						<li>
							<div class="icon-box"><i class="ico-newtech"></i><strong>Acquisition <br class="mo-br">of <br class="mo-br">new technology</strong></div>
							<div class="title-box">
								<strong class="title">Securing new technologies in the future through technology roadmap strategies</strong>
							</div>
							<div class="desc-box">
								<ul class="list-type v2">
									<li>Build a portfolio of technology roadmaps by forecasting future markets</li>
									<li>Develop new business/new technology, plan technology management and strategies</li>
								</ul>
							</div>
						</li>
						<!-- // 2022-11-03  -->
					</c:if>
				</ul>

			</div>
		</div>

		<div class="content-box">

			<div class="title-wrap4" data-delighter>
				<h3 class="title-type"><spring:message code="rd.lab" text="기술연구소"/></h3>
			</div>
			<!-- 2022-10-18 수정 -->
			<div class="full-box" data-delighter>
				<img src="${CON_STATIC_URL}/asset/images/company/full_rnd.jpg" alt="">
				<c:if test="${LANG eq 'ko' }">
					<p class="text">
						대한전선 기술연구소는 고객 가치를 반영한 사업 중심의 연구를 목표로 1983년에 설립되었습니다.<br>
						케이블&솔루션 분야의 중점 연구 개발과 산학연 연구를 통해<br>
						신제품 개발 및 미래 신사업 기술 연구를 수행하며<br>
						국내 전선 산업의 기술 인프라 확대와 회사의 기술 경쟁력 강화에 매진하고 있습니다.
					</p>
				</c:if>
				<c:if test="${LANG eq 'en' }">
					<p class="text">
						Taihan's Technology Research Center was established in 1983 with the aim of business-oriented research that reflects customer value.<br> Since then, Taihan has been striving to expand the technological infrastructure of Korean cable industry and strengthen
						the company's<br> technological competitive edge by carrying out essential R&D projects in the cable & solution field, industry-university research projects,<br> national projects, technical training, publishing technical papers, etc.
					</p>
				</c:if>
			</div>
			<!-- //2022-10-18 수정 -->

			<div class="inner-box">
				<div class="history-wrap" data-delighter>
					<ul class="list-history">
						<c:if test="${LANG eq 'ko' }">
							<li>
								<span class="date">1983년 11월</span>
								<strong class="desc">시흥 기술연구소 설립</strong>
							</li>
							<li>
								<span class="date">2007년 10월</span>
								<strong class="desc">안양 기술연구소 설립</strong>
							</li>
							<li>
								<span class="date">2011년 12월</span>
								<strong class="desc">기술연구소 이전 (경기도 안산시)</strong>
							</li>
							<li>
								<span class="date">2015년 08월</span>
								<strong class="desc">기술연구소 이전 (충청남도 당진시)</strong>
							</li>
						</c:if>
						<c:if test="${LANG eq 'en' }">
							<li>
								<span class="date">Novemeber 1983</span>
								<strong class="desc">Established the Technology Research Center in the Siheung</strong>
							</li>
							<li>
								<span class="date">October 2007</span>
								<strong class="desc">Established the Technology Research Center in the Anyang</strong>
							</li>
							<li>
								<span class="date">December 2011</span>
								<strong class="desc">Re-established the Technology Research Center in the Ansan</strong>
							</li>
							<li>
								<span class="date">August 2015</span>
								<strong class="desc">Re-established the Technology Research Center in the Dangjin</strong>
							</li>
						</c:if>
					</ul>

					<ul class="list-info" data-delighter>
						<li>
							<dl>
								<dt><i class="ico-location"></i><spring:message code="rd.addr" text="주소"/></dt>
								<c:if test="${LANG eq 'ko' }">
									<dd>충청남도 당진시 고대면 대호만로 870<a href="https://naver.me/GnGi4AFo" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
								</c:if>
								<c:if test="${LANG eq 'en' }">
									<!-- 2022-10-26 텍스트 수정 -->
									<dd>870 Daehoman-ro, Godae-myeon, Dangjin-si,Chungcheognam-do, Korea<a href="https://naver.me/GnGi4AFo" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
									<!-- //2022-10-26 텍스트 수정 -->
								</c:if>
							</dl>
						</li>
						<li>
							<dl>
								<dt><i class="ico-tel"></i><spring:message code="rd.tel" text="연락처"/></dt>
								<c:if test="${LANG eq 'ko' }">
									<dd><a href="tel:041-360-9442">041-360-9442</a></dd>
								</c:if>
								<c:if test="${LANG eq 'en' }">
									<!-- 2022-11-09 수정 -->
									<!-- 2022-11-18 수정 -->
									<dd><a href="tel:82413609442">+82-41-360-9442</a></dd>
									<!-- //2022-11-18 수정 -->
									<!-- //2022-11-09 수정 -->
								</c:if>
							</dl>
						</li>
					</ul>

					<div class="board-wrap" data-delighter>
						<div class="board-body gallery-swiper">
							<ul class="list-gallery swiper-wrapper">
								<li class="swiper-slide"><img src="${CON_STATIC_URL}/asset/images/company/img_rnd03.jpg"  onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';"alt=""></li>
								<li class="swiper-slide"><img src="${CON_STATIC_URL}/asset/images/company/img_rnd02.jpg"  onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></li>
								<li class="swiper-slide"><img src="${CON_STATIC_URL}/asset/images/company/img_rnd01.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';"alt=""></li>

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

		<div class="content-box">
			<div class="inner-box">

				<div class="title-wrap4" data-delighter>
					<h3 class="title-type"><spring:message code="rd.cate" text="주요 연구 분야"/></h3>
				</div>

				<div class="content-img" data-delighter>
					<c:if test="${LANG eq 'ko' }">
						<img src="${CON_STATIC_URL}/asset/images/company/img_cont_rnd03_pc.png" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="" class="pc-display">
						<img src="${CON_STATIC_URL}/asset/images/company/img_cont_rnd03_mo.png" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="" class="mo-display">
					</c:if>
					<c:if test="${LANG eq 'en' }">
						<img src="${CON_STATIC_URL}/asset/images/company/img_cont_rnd03_pc_eng.png?v1" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="" class="pc-display">
						<img src="${CON_STATIC_URL}/asset/images/company/img_cont_rnd03_mo_eng.png?v1" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="" class="mo-display">
					</c:if>
					<div class="hidden">
						<c:if test="${LANG eq 'ko' }">
							<dl>
								<dt>전력</dt>
								<dd>
									<ul>
										<li>해저∙육상 HVDC케이블(320~525kV) 시스템 개발</li>
										<li>송전용량 증대 AC초고압케이블 시스템 개발</li>
										<li>차세대 증용량 저이도 가공송전선 개발</li>
										<li>친환경 소재 기반 전력케이블 및 악세사리 신제품 개발</li>
										<li>초고압 중전기기 적용 요소기기 개발</li>
										<li>지중∙해저 포설, 시공 및 엔지니어링 기술개발</li>
										<li>On-line PD Monitoring System을 활용한</li>
										<li>전력시스템 자산관리 기술개발</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>CAE∙분석</dt>
								<dd>
									<ul>
										<li>CAE(Computer Aided Engineering)기반 전자기장
											∙계통∙기계∙열 해석을 통한 최적설계 기술</li>
										<li>고분자∙금속소재 관련 전기∙화학∙기계적 요소
											분석기술 개발</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>신재생</dt>
								<dd>
									<ul>
										<li>해상풍력∙수상태양광용 해저케이블 시스템
											및 보호 기자재 개발</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>소재</dt>
								<dd>
									<ul>
										<li>전력케이블용 친환경 비가교 절연∙반도전 소재 개발</li>
										<li>전력기기 적용 가능한 친환경 Bio-epoxy 개발</li>
										<li>나노 융합기술 및 자가복원 기술을 적용한 전력용
											신소재 개발</li>
										<li>전력케이블 성능향상을 위한 합금∙복합소재 도체개발</li>
									</ul>
								</dd>
							</dl>
						</c:if>

						<c:if test="${LANG eq 'en' }">
							<dl>
								<dt>Power Generation</dt>
								<dd>
									<ul>
										<li>Submarine·land HVDC cable (320~525kV) system.</li>
										<li>AC EHV cable system to increase power transmission capacity.</li>
										<li>Next-generation increased high temperature low sag conductor.</li>
										<li>New power cables and accessories based on Eco-friendly materials.</li>
										<li>EHV heavy electric apparatus applied Element accessory.</li>
										<li>Construction and engineering technology of underground and submarine pulling.</li>
										<li>Power cable system asset management technology using on-line PD monitoring system.</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>CAE∙Analysis</dt>
								<dd>
									<ul>
										<li>Analysis and optimal design technology using CAE (Computer Aided Engineering)-based analysis of electromagnetic field, system, mechanical, and thermal.</li>
										<li>Analysis technology of electrical, chemical and mechanical elements of polymers and metals.
										</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>New Renewable Energy Technology</dt>
								<dd>
									<ul>
										<li>Submarine cable system and protection accessory for offshore wind power and floating solar power.</li>
									</ul>
								</dd>
							</dl>
							<dl>
								<dt>Base Materials</dt>
								<dd>
									<ul>
										<li>Eco-friendly non-crosslinked insulating materials and semi-conductive compounds for power cables.</li>
										<li>Eco-friendly bio-epoxy applicable to cable accessory.</li>
										<li>New power materials using nano fusion technology and self-healing technology.</li>
										<li>Alloy & composite materials to improve power cable performance.</li>
									</ul>
								</dd>
							</dl>
						</c:if>
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
			setmenu( 2, '0104')
		},100);

		//2022-10-18
		var gallerySwiper = new Swiper('.gallery-swiper', {
			slidesPerView: 3,
			slidesPerGroup: 3,
			spaceBetween: 38,
			pagination: {
				el: ".swiper-button-box .fraction-pagination",
				type: "fraction",
			},
			navigation: {
				nextEl: ".swiper-button-box .button-next",
				prevEl: ".swiper-button-box .button-prev",
			},
			breakpoints: {
				767: {
					slidesPerView: 1,
					spaceBetween: 15,
					slidesPerGroup: 1,
				},
				1024: {
					slidesPerView: 2,
					spaceBetween: 25,
					slidesPerGroup: 1,
				},
			},
		});
	})

</script>





