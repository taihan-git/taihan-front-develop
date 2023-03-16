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
					<h3 class="title-type">당진 전력기기공장</h3>
					<p>국내 유일의 단일 전력기기 생산공장</p>
					<a href="javascript:UI.layerPopUp({ selId: '#pop-sns' });" class="btn-share">
						<i class="ico-share"><span class="hidden">공유하기</span></i>
					</a>
				</div>
			</div>

			<div class="global-detail">
				<!-- 수정 -->
				<div class="bg v2"></div>
				<!-- 수정 -->
				<div class="inner-box">
					<p class="desc">당진 전력기기공장은 접속함, 절연물 등 케이블 접속재를 생산하는 공장입니다. 고객의 요구사항에 완벽하게 부합하는 최적의 제품을 생산하기 위해 기술 고도화에 힘쓰고 있으며, 시공 용이성과 안정성을 개선한 전력기기를 지속적으로 개발하여 제품 경쟁력을 높여 나가고 있습니다.</p>

					<ul class="list-summary">
						<li>
							<div class="icon-box">
								<i class="ico-summary"></i>
							</div>
							<dl>
								<dt>설립연도</dt>
								<dd>
									<strong>2007년</strong>
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
									<strong>107명</strong>*2022년 기준
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
									<strong>50,000<span>㎡</span></strong>
								</dd>
							</dl>
						</li>
						<li class="col2">
							<div class="icon-box">
								<i class="ico-summary5"></i>
							</div>
							<dl>
								<dt>생산품목</dt>
								<dd>
									<strong>초고압 케이블 접속재 및 GIS용 절연물 등</strong>
								</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap2" data-delighter>
					<strong class="title">철저한 품질관리</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont02/img01.jpg">
					</div>
					<!-- 2022-12-26 -->
					<p class="text">
						케이블 접속재는 전력 시스템의 안정성과 신뢰성을 확보하는 데 중요한 요소로 완벽한 품질이 요구됩니다. 당진 전력기기공장은 클래스 10,000 수준의 클린룸을 곳곳에 배치하여, 미세한 먼지까지 전면 차단한 청정구역에서 작업을 수행합니다. 또한 엑스레이, 초음파 등 까다로운 품질 검사 시스템을 도입하여 철저한 품질 관리를 실현합니다.
					</p>
					<!-- 2022-12-26 -->
				</div>
			</div>
		</div>

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap2 right" data-delighter>
					<strong class="title">시공 기술 교육 진행</strong>
					<div class="img-flex">
						<img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont02/img02.jpg">
					</div>
					<p class="text">기술훈련센터(TTC : Technology Training Center)를 개설하여 고객사와 협력사를 대상으로 케이블 및 접속재 전문 교육을 실시합니다. 기술훈련센터가 설립된 2009년부터 현재까지 100회 이상의 교육이 진행되었으며, 싱가포르, 호주, 러시아 등 19개국 600여 명이 교육을 수료하고 전문
						인력으로 활동하고 있습니다. 대한전선은 이 교육을 통해 고객만족도를 높이는 동시에 초고압 제품과 시공능력에 대한 높은 경쟁력을 인정받고 있습니다.</p>
				</div>
			</div>
		</div>



		<!-- 2022-10-18 갤러리업데이트 -->
		<div class="content-box">
			<div class="inner-box">
				<div class="thumbs-gallery">
					<div class="view-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img01.jpg">
								</div>
								<p class="desc">당진 전력기기공장 전경</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img02.jpg">
								</div>
								<p class="desc">전력기기 쇼룸</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img03.jpg">
								</div>
								<p class="desc">초고압 케이블 접속재</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img04.jpg">
								</div>
								<p class="desc">초고압 케이블 접속재</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img05.jpg">
								</div>
								<p class="desc">초고압 케이블 접속재</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img06.jpg">
								</div>
								<p class="desc">전력기기 공장 내부</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img07.jpg">
								</div>
								<p class="desc">전력기기 공장 내부</p>
							</div>
							<div class="swiper-slide">
								<div class="img-flex">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img08.jpg">
								</div>
								<p class="desc">전력기기 공장 내부</p>
							</div>

						</div>
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
						<button type="button" class="btn-zoom">
							<i class="ico-more2"><span class="hidden">이미지 확대</span></i>
						</button>
					</div>
					<div class="thumbs-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img01.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img02.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img03.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img04.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img05.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img06.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img07.jpg">
								</div>
							</div>
							<div class="swiper-slide">
								<div class="img-box">
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img08.jpg">
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //2022-10-18 갤러리업데이트 -->

		<div class="content-box">
			<div class="inner-box">
				<div class="detail-wrap">
					<dl>
						<dt>공장 한 눈에 보기</dt>
						<dd>
							<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map02.svg" alt="">
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
											충남 당진시 고대면 보덕포로 542
											<a href="https://goo.gl/maps/fzbMLiyy1u3DkK1MA" target="_blank" class="btn-map">
												<i class="ico-outer"><span class="hidden">주소보기</span></i>
											</a>
										</dd>
									</dl>
								</li>
								<li>
									<dl>
										<dt>연락처</dt>
										<dd>
											<a href="tel:+82413599114">+82-41-359-9114</a>
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
							<h3 class="title-type">Dangjin Cable Accessory Plant</h3>
							<p>The only integrated Cable Accessory production plant in Korea</p>
						</div>
					</div>

					<div class="global-detail">
						<div class="bg v2"></div>
						<div class="inner-box">
							<p class="desc">
								Dangjin Cable Accessory Plant manufactures junction boxes, insulating materials, and other cable accessories. At Dangjin we work daily toward the sophistication of our technology so we’ll be ready with products optimized to customer needs, and our products are becoming more competitive all the time with the development of cable accessories that improve on the ease and reliability of construction.
							</p>

							<ul class="list-summary">
								<li>
									<div class="icon-box"><i class="ico-summary"></i></div>
									<dl>
										<dt>Established</dt>
										<dd><strong>2007</strong></dd>
									</dl>
								</li>
								<li>
									<div class="icon-box"><i class="ico-summary2"></i></div>
									<dl>
										<dt>Employees</dt>
										<dd><strong>107 employees</strong>(as of 2022)</dd>
									</dl>
								</li>
								<li>
									<div class="icon-box"><i class="ico-summary3"></i></div>
									<dl>
										<dt>Area</dt>
										<dd><strong>50,000<span>㎡</span></strong></dd>
									</dl>
								</li>
								<li class="col2">
									<div class="icon-box"><i class="ico-summary5"></i></div>
									<dl>
										<dt>Production Items</dt>
										<dd><strong>EHV cable accessories, GIS insulating materials and more</strong></dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap2" data-delighter>
							<strong class="title">Rigorous Quality Control</strong>
							<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont02/img01.jpg"></div>
							<p class="text">
								Cable accessories are crucial for the stability and reliability of power systems, and no compromise is acceptable on quality. The Dangjin Cable Accessory Plant is installed with Class 10,000 clean rooms throughout, and operations are performed in clean areas with the even the finest dust blocked out. Quality control is performed at the highest standards, with the use of rigorous inspection systems including X-rays and ultrasounds.
							</p>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap2 right" data-delighter>
							<strong class="title">Construction Technique Training</strong>
							<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/cont02/img02.jpg"></div>
							<p class="text">
								Our Technology Training Center (TTC) conducts expert training on cables and cable accessories for our customers and business partners. The TTC has hosted over 100 training sessions since its founding in 2009; over 800 personnel from 19 countries including Singapore, Australia, and Russia have completed training courses and now work as professionals in their fields. The training has not only raised customer satisfaction,<br>but also earned Taihan recognition for its competitive edge in EHV products and work capabilities
							</p>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="thumbs-gallery">
							<div class="view-swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img01.jpg"></div>
										<p class="desc">Dangjin Cable Accessory Plant</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img02.jpg"></div>
										<p class="desc">Dangjin Cable Accessory Plant Showroom</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img03.jpg"></div>
										<p class="desc">EHV Cable Accessory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img04.jpg"></div>
										<p class="desc">EHV Cable Accessory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img05.jpg"></div>
										<p class="desc">EHV Cable Accessory</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img06.jpg"></div>
										<p class="desc">Dangjin Cable Accessory Plant</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img07.jpg"></div>
										<p class="desc">Dangjin Cable Accessory Plant</p>
									</div>
									<div class="swiper-slide">
										<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img08.jpg"></div>
										<p class="desc">Dangjin Cable Accessory Plant</p>
									</div>

								</div>
								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>
								<button type="button" class="btn-zoom"><i class="ico-more2"><span class="hidden">View larger image</span></i></button>
							</div>
							<div class="thumbs-swiper">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img01.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img02.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img03.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img04.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img05.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img06.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img07.jpg"></div>
									</div>
									<div class="swiper-slide">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/global_detail/gallery02/img08.jpg"></div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="content-box">
					<div class="inner-box">
						<div class="detail-wrap">
							<dl>
								<dt>The Plant<br /> at a Glance</dt>
								<dd>
									<img src="${CON_STATIC_URL}/asset/images/business/global_detail/map02_en.svg" alt="">
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
												<dd>542, Bodeokpo-ro, Godae-myeon, Dangjin-si, Chungcheongnam-do, Korea<a href="https://goo.gl/maps/fzbMLiyy1u3DkK1MA" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>Tel</dt>
												<dd><a href="tel:+82413599114">+82-41-359-9114</a></dd>
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
$(document).ready(function(){
	//gnb세팅
	setTimeout(function() {
		setmenu(2, '0204');
	}, 100);
	
});
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