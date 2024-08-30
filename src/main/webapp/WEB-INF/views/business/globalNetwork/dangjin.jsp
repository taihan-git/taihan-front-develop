<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp" />
<section id="content" class="sub-wrap business">

	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_04.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="globalNetwork.title" text="글로벌 네트워크"></spring:message></h2>
		</div>
	</div>

	<%-- GNB(S)--%>
	<jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
	<%-- GNB(E) --%>
	<c:if test="${LANG eq 'ko' }">
	<div id="container" class="content-wrap">
		<div class="content-box">

			<div class="title-wrap">
				<div class="inner-box">
					<h3 class="title-type">당진케이블공장</h3>
					<p>세계 최대 규모의 단일 케이블 공장</p>
					<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share"><i class="ico-share"><span class="hidden">공유하기</span></i></a>
				</div>
			</div>

			<div class="global-detail">
				<!-- 수정 -->
				<div class="bg"></div>
				<!-- 수정 -->
				<div class="inner-box">
					<p class="desc">충청남도 당진시 고대면에 위치한 당진케이블공장은 대한전선 케이블 기술의 산실이자 핵심 생산 기지로, 세계 최대 규모와 효율을 자랑합니다. 초고압, 산업전선, 통신, 소재, 부스덕트 등 5개의 단위 공장과 PQ 시험장 등을 갖추고, 제품 개발부터 생산, 완제품 시험에 이르기까지 케이블 생산의 모든 공정을
						수행하고 있습니다. 세계 최고 수준의 VCV (Vertical Continuous Vulcanization) 타워 등 최첨단 생산라인과 친환경 시스템을 기반으로 전 세계 100여 개 국가의 고객을 위한 고품질의 제품을 생산합니다.</p>

					<ul class="list-summary">
						<li>
							<div class="icon-box">
								<i class="ico-summary"></i>
							</div>
							<dl>
								<dt>설립연도</dt>
								<dd>
									<strong>2011년</strong>
								</dd>
							</dl>
						</li>
						<li>
							<div class="icon-box">
								<i class="ico-summary2"></i>
							</div>
							<dl>
								<dt>인원</dt>
								<dd>
									<strong>500명 이상</strong>
								</dd>
							</dl>
						</li>
						<li>
							<div class="icon-box">
								<i class="ico-summary3"></i>
							</div>
							<dl>
								<dt>면적</dt>
								<dd>
									<strong>350,000<span>㎡</span></strong>*축구장 약 50배
								</dd>
							</dl>
						</li>
						<li>
							<div class="icon-box">
								<i class="ico-summary4"></i>
							</div>
							<dl>
								<dt>생산능력</dt>
								<dd>
									<strong>29,220톤/연간</strong>*초고압케이블 기준 세계 최대
								</dd>
							</dl>
						</li>
						<!-- 2022-10-25 텍스트 수정 -->
						<li class="col2">
							<div class="icon-box"><i class="ico-summary5"></i></div>
							<dl>
								<dt>생산품목</dt>
								<dd><strong>초고압 케이블, 고압·중저압 케이블, 통신 케이블, 부스덕트,
								Copper Rod</strong></dd><!-- 2022-10-26 -->
							</dl>
						</li>
						<!-- //2022-10-25 텍스트 수정 -->
					</ul>
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap2" data-delighter>
					<strong class="title">Green Factory</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont01/img01.jpg">
					</div>
					<p class="text">
						건축 초기 단계부터 환경보호 및 생태복원 등을 고려하여 설계된 <span class="focus">친환경∙저탄소형 공장</span>입니다. 일반적인 제조 공장에서는 볼 수 없는 자연채광과 환기시설 및 오폐수 재활용 등 친환경 시스템을 도입해 환경에 대한 영향을 최소화하고 자연을 보존하기 위한 노력을 지속합니다.
					</p>
					<ul class="list-type v2">
						<li>공장 용수 전량 재활용, 오∙폐수 무방류 시스템 도입</li>
						<li>수질정화 및 생태 복원을 위한 생태습지 조성</li>
						<li>청정연료 사용을 통한 대기오염 물질 발생 최소화</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="content-box bg">
			<div class="inner-box">
				<div class="detail-wrap2 right" data-delighter>
					<strong class="title">Smart Factory</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont01/img02.jpg">
					</div>
					<p class="text">당진케이블공장은 케이블을 모티브로 외관을 디자인하였으며, 생산성 향상과 효율 극대화, 작업자의 안전 등을 고려하여 설계한 스마트 팩토리입니다. 물류 자동화와 중앙처리 시스템 등 최첨단 설비 라인도 갖추고 있습니다.</p>
					<ul class="list-type v2">
						<li>IFS(Intelligent Factory System) 운영</li>
						<li>유기적 물류 시스템 구축 및 자동화</li>
						<li>생산∙물류∙관리 기능의 One-Stop 프로세스 구현</li>
					</ul>
				</div>
			</div>
		</div>

		<!-- 2022-10-28 갤러리업데이트 -->
				<div class="content-box">
					<div class="inner-box">
						<div class="thumbs-gallery">
							<div class="view-swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img01.jpg"></div>
										<p class="desc">당진케이블공장 전경</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img02.jpg"></div>
										<p class="desc">당진케이블공장 전경</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img03.jpg"></div>
										<p class="desc">초고압 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img04.jpg"></div>
										<p class="desc">초고압 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img05.jpg"></div>
										<p class="desc">초고압 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img06.jpg"></div>
										<p class="desc">초고압 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img07.jpg"></div>
										<p class="desc">초고압 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img08.jpg"></div>
										<p class="desc">산업전선 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img09.jpg"></div>
										<p class="desc">산업전선 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img10.jpg"></div>
										<p class="desc">산업전선 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img11.jpg"></div>
										<p class="desc">통신 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img12.jpg"></div>
										<p class="desc">통신 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img14.jpg"></div>
										<p class="desc">소재 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img15.jpg"></div>
										<p class="desc">소재 공장</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img16.jpg"></div>
										<p class="desc">소재 공장</p>
									</div>
								</div>
								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>
								<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">이미지 확대</span></i></button>
							</div>
							<div class="thumbs-swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img01.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img02.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img03.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img04.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img05.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img06.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img07.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img08.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img09.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img10.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img11.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img12.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img14.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img15.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img16.jpg"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //2022-10-28 갤러리업데이트 -->

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap">
					<dl>
						<dt>공장 한 눈에 보기</dt>
						<dd>
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map01.svg" alt="">
							<button type="button" class="btn-zoom factory">
								<i class="ico-more2"><span class="hidden">이미지 확대</span></i>
							</button>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap">
					<dl>
						<dt>위치 및 연락처</dt>
						<dd>
							<ul class="list-info">
								<li>
									<dl>
										<dt>주소</dt>
										<dd>
											충청남도 당진시 고대면 대호만로 870
											<a href="https://goo.gl/maps/LCqJtK1hmLw5fRoQ6" target="_blank" class="btn-map">
												<i class="ico-outer"><span class="hidden">주소보기</span></i>
											</a>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>연락처</dt>
										<dd>
											<a href="tel:0413609114">041-360-9114</a>
										</dd>
									</dl>
								</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</div>

	</div>
	</c:if>
	<c:if test="${LANG eq 'en' }">
	<div id="container" class="content-wrap">
				<div class="content-box">

					<div class="title-wrap">
						<div class="inner-box">
							<h3 class="title-type">Dangjin Cable Plant</h3>
							<p>Cable production plant of top global scale and efficiency</p>
						</div>
					</div>

					<div class="global-detail">
						<div class="bg"></div>
						<div class="inner-box">
							<p class="desc">
								Located at the center of international transport networks at Dangjin, Chungnam, the Dangjin Cable Plant is the core production base for Taihan’s cable technology. Its scale and efficiency are second to none the world over. Boasting five unit factories for EHV, industrial cable, communication cables, base metal, and bus ducts, and PQ test site, it operates at every stage of cable production from product development and production to the finished product testing. The Dangjin Cable Plant is responsible for high-quality products destined for customers in 100 countries around the world, thanks to a state-of-the-art production line and environmentally friendly systems including a world-class VCV (Vertical Continuous Vulcanization) tower.
							</p>

							<ul class="list-summary">
								<li>
									<div class="icon-box"><i class="ico-summary"></i></div>
									<dl>
										<dt>Established</dt>
										<dd><strong>2011</strong></dd>
									</dl>
								</li>
								<li>
									<div class="icon-box"><i class="ico-summary2"></i></div>
									<dl>
										<dt>Employees</dt>
										<dd><strong>500+</strong></dd>
									</dl>
								</li>
								<li>
									<div class="icon-box"><i class="ico-summary3"></i></div>
									<dl>
										<dt>Area</dt>
										<dd><strong>350,000<span>㎡</span></strong>(about 50 soccer fields)</dd>
									</dl>
								</li>
								<li>
									<div class="icon-box"><i class="ico-summary4"></i></div>
									<dl>
										<dt>Production Capacity</dt>
										<dd><strong>29,220 tons a year</strong>(largest in the world for EHV cables)</dd>
									</dl>
								</li>
								<li class="col2">
									<div class="icon-box"><i class="ico-summary5"></i></div>
									<dl>
										<dt>Production Items</dt>
										<!-- 2023-01-13 수정 -->
										<dd><strong>EHV, HV, MV/LV Cables, Copper Rods,<br />Communication Cables, Bus-ducts, and more</strong></dd>
										<!-- // 2023-01-13 수정 -->
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap2" data-delighter>
							<strong class="title">Green Factory</strong>
							<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont01/img01.jpg"></div>
							<p class="text">
								<!-- 2022-11-25 수정 -->
								Dangjin Cable Plant was designed from the ground up to be environmentally friendly and low-emission, with environmental protection and ecological restoration in consideration from the early stages of construction. <br>
								With environmentally friendly systems including natural lighting and wastewater recycling not found in ordinary manufacturing plants, we continue our efforts to minimize our environmental footprint and preserve nature.
								<!-- //2022-11-25 수정 -->
							</p>
							<ul class="list-type v2">
								<li>Water used at the plant is entirely recycled; a system of zero wastewater discharge</li>
								<li>Wetland ecology built for water purification and ecosystem restoration</li>
								<li>Minimization of air pollution with the use of clean fuel</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="detail-wrap2 right" data-delighter>
							<strong class="title">Smart Factory</strong>
							<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont01/img02.jpg"></div>
							<p class="text">
								Dangjin Cable Factory has an exterior design with a cable motif, and is a smart factory designed with consideration for improved productivity, maximized efficiency, and worker safety. It is also equipped with a line of cutting-edge facilities, including logistics automation and central processing systems.
							</p>
							<ul class="list-type v2">
								<li>Operation of IFS (Intelligent Factory System)</li>
								<li>Establishment and automation of an organic logistics system</li>
								<li>Implemented a one-stop process for production, logistics, and management functions</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- 2022-10-26 갤러리 업데이트 -->
				<div class="content-box">
					<div class="inner-box">
						<div class="thumbs-gallery">
							<div class="view-swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img01.jpg"></div>
										<p class="desc">Dangjin Cable Plant</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img02.jpg"></div>
										<p class="desc">Dangjin Cable Plant</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img03.jpg"></div>
										<p class="desc">EHV factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img04.jpg"></div>
										<p class="desc">EHV factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img05.jpg"></div>
										<p class="desc">EHV factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img06.jpg"></div>
										<p class="desc">EHV factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img07.jpg"></div>
										<p class="desc">EHV factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img08.jpg"></div>
										<p class="desc">Industrial Cable factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img09.jpg"></div>
										<p class="desc">Industrial Cable factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img10.jpg"></div>
										<p class="desc">Industrial Cable factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img11.jpg"></div>
										<p class="desc">Communication factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img12.jpg"></div>
										<p class="desc">Communication factory</p>
									</div>
								<%-- 	<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img13.jpg"></div>
										<p class="desc">Communication factory</p>
									</div> --%>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img14.jpg"></div>
										<p class="desc">Base metal factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img15.jpg"></div>
										<p class="desc">Base metal factory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img16.jpg"></div>
										<p class="desc">Base metal factory</p>
									</div>
								</div>
								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>
								<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
							</div>
							<div class="thumbs-swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img01.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img02.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img03.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img04.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img05.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img06.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img07.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img08.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img09.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img10.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img11.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img12.jpg"></div>
									</div>
									<%-- <div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img13.jpg"></div>
									</div> --%>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img14.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img15.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery01/img16.jpg"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //2022-10-26 갤러리 업데이트 -->

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap">
							<dl>
								<dt>The Plant<br /> at a Glance</dt>
								<dd>
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map01_en.svg" alt="">
									<button type="button" class="btn-zoom factory"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
								</dd>
							</dl>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap">
							<dl>
								<dt>Contact Information</dt>
								<dd>
									<ul class="list-info">
										<li>
											<dl>
												<dt>Address</dt>
												<dd>870, Daehoman-ro, Godae-myeon, Dangjin-si, Chungcheongnam-do, Korea<a href="https://goo.gl/maps/LCqJtK1hmLw5fRoQ6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>Tel</dt>
												<dd><a href="tel:+82413609114">+82-41-360-9114</a></dd>
											</dl>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
				</div>

			</div>
	</c:if>
</section>
<!--//content-->

<!-- zoom팝업 -->
<!-- 2022-10-27 -->
<script src="${CON_STATIC_URL}/asset/js/panzoom.js"></script>

<div class="pop-layer pop-full" id="pop-zoom">
	<div class="pop-wrap">
		<div class="pop-header">
			<button class="pop-close"><span class="hidden">팝업닫기</span></button>
		</div>
		<div class="pop-content">
			<div class="img-box">
				<div class="panzoom" id="panzoom-element"><img src="" alt=""></div>
			</div>
		</div>
	</div>
</div>

<script>
	var elem = document.getElementById('panzoom-element');
	var panzoom = Panzoom(elem);
</script>
		<!-- //zoom팝업 -->


<script>
$(document).ready(function() {
	//gnb세팅
	setTimeout(function() {
		setmenu(2, '0204')
	}, 100);
})
var thumbsSwiper = new Swiper(".thumbs-swiper", {
	spaceBetween: 10,
	slidesPerView: 'auto',
	freeMode: true,
	watchSlidesProgress: true,
});
var viewSwiper = new Swiper(".view-swiper", {
	spaceBetween: 10,
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
	thumbs: {
		swiper: thumbsSwiper,
	},
});
$('.btn-zoom').on('click', function () {
	UI.layerPopUp({ selId: '#pop-zoom' });
	panzoom.zoom(1);//2022-10-27
	if ($(this).hasClass('factory')) {
		$('#pop-zoom').find('.img-box img').attr('src', $(this).prev('img').attr('src'));
	} else {
		$('#pop-zoom').find('.img-box img').attr('src', viewSwiper.slides.eq(viewSwiper.activeIndex).find('img').attr('src'));
	}
});
</script>