<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<script src="${CON_STATIC_URL}/asset/js/gsap-3.6.0.min.js"></script>
<!--content-->
		<section id="content" class="sub-wrap company-summary">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/company/visual_company_01.jpg)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="overview.title" text="개요"/></h2>
				</div>
			</div>
		  <%-- GNB(S)--%>
		    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
		    <%-- GNB(E) --%>

			<!-- 2022-10-21 텍스트 수정 -->
			<div id="container" class="content-wrap is-last-bg">
				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap v3" data-delighter>
								<!-- 2022-12-09 -->
							<strong class="title-type">
								<span>The power lighting up </span>
								<span>the world </span>
							<c:if test="${LANG eq 'ko' }">
								<span class="sub">대한전선은2 세상 모든 곳에 에너지와 정보를 연결합니다.</span>
							</strong>
							<p>
								대한민국 최초의 전선회사로 출발한 대한전선은 전력 및 통신 케이블과 소재 분야를 개척하며<br>
								국내는 물론 글로벌 전선 시장의 발전을 선도해왔습니다.<br><br>

								대한전선은 이제 호반그룹의 일원으로 또 다른 시작을 알리며, Cable & Solution 분야의 글로벌 리더로서<br>
								보다 업그레이드된 제품, 앞선 투자와 끊임없는 혁신으로 새로운 100년을 향해 나아갑니다.
							</p>
							<!-- //2022-11-09 수정 -->
							<!-- //2022-10-26 -->
							</c:if>
							<c:if test="${LANG eq 'en' }">
							<span class="sub">Taihan connects energy and information everywhere in the world.</span>
							</strong>
							<p>
								Taihan, which was established as the first electric wire company in Korea, <br>
								paved the way for development of the fields of power and communication cables and base metal,<br>
								and has been leading the development of the global cable market as well as Korea market.<br><br>

								Today, Taihan, the company which recently opened a new chapter as a proud member of the Hoban Group, <br>
								endeavors to continue to lead the global electric wire industry as a successful enterprise for the next century<br>
								based on more upgraded products, proactive investment, and relentless innovation.
							</p>
							<!-- //2022-11-15 수정 -->
							</c:if>
						</div>

						<div class="video-box" data-delighter>
							<div class="img-flex">
							<c:if test="${LANG eq 'ko' }">
								<iframe type="text/html" src="https://www.youtube.com/embed/GGeBfsz6NMU?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
							</c:if>
							<c:if test="${LANG eq 'en' }">
								<!-- 2022-11-29 -->
								<iframe type="text/html" src="https://www.youtube.com/embed/8IbiXLxmKQo?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
								<!-- //2022-11-29 -->
							</c:if>
							</div>
						</div>

						<ul class="list-summary v3" data-delighter>
							<li>
								<div class="icon-img"><img src="${CON_STATIC_URL}/asset/images/icon/icon_motion01.gif" alt=""></div>
								<dl>
									<dt><spring:message code="overview.year1" text="설립연도"/></dt>
									<!-- 2022-10-19 문구수정 -->
									<dd><strong>1941</strong><spring:message code="overview.year2" text="년"/>
									<c:if test="${LANG eq 'ko' }">
									<span class="add-text">*조선전선</span>
									</c:if>
									<c:if test="${LANG eq 'en' }">
									<span class="add-text">*Chosun Electric Wire</span>
									</c:if>
									</dd>
									<!-- //2022-10-19 문구수정 -->
								</dl>
							</li>
							<li>
								<div class="icon-img"><img src="${CON_STATIC_URL}/asset/images/icon/icon_motion02.gif" alt=""></div>
								<dl>
									<dt><spring:message code="overview.nation1" text="진출 국가"/></dt>
									<dd><strong><spring:message code="overview.nation3" text="100+"/></strong><spring:message code="overview.nation2" text="개국"/></dd>
								</dl>
							</li>
							<li>
								<div class="icon-img"><img src="${CON_STATIC_URL}/asset/images/icon/icon_motion03.gif" alt=""></div>
								<dl>
								<c:if test="${LANG eq 'ko' }">
									<dt><span>글로벌</span> <span>영업망</span></dt>
									<dd><span><strong>7</strong>개 법인</span> <span><strong>16</strong>개 지사</span></dd>
								</c:if>
								<c:if test="${LANG eq 'en' }">
									<dt><span>Global</span> <span>Network</span></dt>
									<!-- 2022-11-15 수정 -->
									<dd><span><strong>7</strong>Subsidiaries</span> <span><strong>16</strong>Bransh Offices</span></dd>
									<!-- //2022-11-15 수정 -->
								</c:if>
								</dl>
							</li>
							<li>
								<div class="icon-img"><img src="${CON_STATIC_URL}/asset/images/icon/icon_motion04.gif" alt=""></div>
								<dl>
									<dt><spring:message code="overview.company" text="<span>세계 최대</span> <span>단일전선공장</span>"/></dt>
									<dd><strong>No.1</strong></dd>
								</dl>
							</li>
							<li>
								<div class="icon-img"><img src="${CON_STATIC_URL}/asset/images/icon/icon_motion05.gif" alt=""></div>
								<dl>
									<dt>
										<span>
										<spring:message code="overview.industry" text="전선업계 유일"/>
										</span>
									 	<span><spring:message code="overview.industry2" text="ESG"/></span></dt>
									<dd><spring:message code="overview.grade2" text=""/><strong>A</strong><spring:message code="overview.grade" text="등급"/></dd>
								</dl>
							</li>

						</ul>
					</div>
				</div>

				<div class="explain-wrap">
					<div class="bg"></div>
					<div class="inner-box">
						<div class="explain-swiper">
							<ul class="swiper-wrapper">
								<li class="swiper-slide" data-delighter>
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/company/summary01.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
									<div class="text-box">
									<c:if test="${LANG eq 'ko' }">
										<strong class="title">최초 그리고 최고의 기록</strong>
										<p class="desc">
											대한민국 최초의 전선 회사로 시작해<br>
											글로벌 기업으로 성장하기까지,<br>
											차곡차곡 쌓아 온 수많은 <br>
											최초의 기록과 개척의 역사가<br>
											대한전선의 경쟁력입니다.
										</p>
									</c:if>
									<c:if test="${LANG eq 'en' }">
										<strong class="title">The First and Best Records <br>in the Business</strong>
										<p class="desc">
											Since its foundation as the first electric wire company, Taihan has grown enormously and now is leading the global electric wire industry.
											In addition, Taihan has set countless first records and paved the way for exploitations of <br>new markets, which proves its <br>competitive edge.

										</p>
									</c:if>
									</div>
								</li>
								<li class="swiper-slide" data-delighter>
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/company/summary02.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
									<div class="text-box">
									<c:if test="${LANG eq 'ko' }">
										<strong class="title">초고압 전력망의 표준</strong>
										<p class="desc">
											시스템 디자인과 생산, 시공, 유지보수까지<br>
											최고의 기술 경쟁력과 턴키 역량으로<br>
											어떤 환경에서도 안정적인 전력망을 제공합니다.
										</p>
									</c:if>
									<c:if test="${LANG eq 'en' }">
										<strong class="title">Standard for Extra-high Voltage Power Grid</strong>
										<p class="desc">
											Taihan provides a stable power grid<br>in any environment with the best technological competitive edge and turnkey capabilities from system design, manufacturing, construction, and maintenance.
										</p>
									</c:if>
									</div>
								</li>
								<li class="swiper-slide" data-delighter>
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/company/summary03.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
									<div class="text-box">
									<c:if test="${LANG eq 'ko' }">
										<strong class="title">고객 가치를 높이는 최적의 솔루션</strong>
										<p class="desc">
											전력 인프라와 건설, 플랜트, 모빌리티, 통신 등<br>
											모든 산업에 최적화된 토탈 솔루션으로<br>
											고객의 가치를 높입니다.
										</p>
									</c:if>
									<c:if test="${LANG eq 'en' }">
										<strong class="title">Optimal Solution that Increases Customer Value</strong>
										<p class="desc">
											Taihan increases customer value with total solutions optimized for all industries such as power infrastructure, construction, plant, mobility, and telecommunications.
										</p>
									</c:if>
									</div>
								</li>
								<li class="swiper-slide" data-delighter>
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/company/summary04.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
									<div class="text-box">
									<c:if test="${LANG eq 'ko' }">
										<strong class="title">글로벌 네트워크로 빠르고 정확하게</strong>
										<p class="desc">
											전 세계 모든 대륙의 탄탄한 네트워크를 통해<br>
											고객의 요구와 시장의 변화에<br>
											빠르고 정확하게 대응합니다.
										</p>
									</c:if>
									<c:if test="${LANG eq 'en' }">
										<strong class="title">Fast and Accurate<br> with Global Network</strong><!-- 2022-11-01 -->
										<!-- 2022-10-26 텍스트 수정 -->
										<p class="desc">
											Taihan promptly and accurately responds to customers needs and market changes through a reliable network on every continent in the world.
										</p>
										<!-- //2022-10-26 텍스트 수정 -->
									</c:if>
									</div>
								</li>
								<li class="swiper-slide" data-delighter>
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/company/summary05.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
									<div class="text-box">
									<c:if test="${LANG eq 'ko' }">
										<strong class="title">지속 가능한 내일을 위한 약속</strong>
										<p class="desc">
											우리 사회의 일원으로서<br>
											환경과 지역사회를 먼저 생각하고<br>
											사회적 책임을 다하며<br>
											지속가능한 미래를 열어갑니다.
										</p>
									</c:if>
									<c:if test="${LANG eq 'en' }">
										<strong class="title">Securing New Growth Engines</strong>
										<p class="desc">
											Taihan strengthens company’s competitive edge by developing next-generation products related to carbon neutrality, environment preservation, and safety, etc. for the future society and promoting new businesses.
										</p>
									</c:if>
									</div>
								</li>
								<li class="swiper-slide" data-delighter>
									<!-- 2022-10-18 수정 -->
									<div class="img-flex"><img src="${CON_STATIC_URL}/asset/images/company/summary06.jpg" alt=""></div>
									<!-- //2022-10-18 수정 -->
									<div class="text-box">
									<c:if test="${LANG eq 'ko' }">
										<strong class="title">새로운 성장 동력의 확보</strong>
										<p class="desc">
											탄소중립, 환경, 안전 등 미래 사회를 위한<br>
											차세대 제품 개발과 신사업 추진으로<br>
											기업의 경쟁력을 강화합니다.
										</p>
									</c:if>
									<c:if test="${LANG eq 'en' }">
										<strong class="title">A Promise for a Sustainable Tomorrow</strong>
										<p class="desc">
											As a member of society, Taihan considers the environment and local communities its top priority and practices its social responsibilities to build a sustainable future.
										</p>
									</c:if>
									</div>
								</li>
							</ul>
							<div class="swiper-pagination"></div>
						</div>
					</div>
				</div>


				<div class="content-box">
					<div class="inner-box">

						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Vision</h3>
						<c:if test="${LANG eq 'ko' }">
								<p>창립 당시에는 상상할 수 없었던 놀라운 미래가 현실이 된 지금,<br>
							대한전선은 현실에 안주하지 않고 '더 나은 미래로’ 나아가기 위해 최고의 기술과 품질의 실현에 끊임없이 도전합니다.<br>
							에너지와 정보로 연결되는 하나의 세상, 그 길에 대한전선이 있습니다.</p>
						</c:if>
						<c:if test="${LANG eq 'en' }">
								<p>Ever after succeeding in transforming its dream completely unimaginable at the time of its foundation into reality, <br>
									Taihan never stops its journey, but tries harder again to realize the best technology and quality for creating a better future.</p>
						</c:if>
						</div>

						<div class="content-img" data-delighter>
							<c:if test="${LANG eq 'ko' }">
							<!-- 수정 -->
							<!-- <img src="../../images/company/img_cont_summary_pc.png" alt="" class="pc-display"> -->
							<div class="pc-display"><object class="object-vision " type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/company/img_vision.svg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" style="width:991px;"></object></div>
							<!-- //수정 -->
<div class="scroll-box mo-display">
								<div class="inner-box">
									<img src="${CON_STATIC_URL}/asset/images/company/img_cont_summary_mo.png" alt="" style="width:857px;">
								</div>
							</div>							</c:if>
							<c:if test="${LANG eq 'en' }">
							<div class="pc-display"><object class="object-vision " type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/company/en_img_vision.svg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" style="width:991px;"></object></div>
							<div class="scroll-box mo-display">
								<div class="inner-box">
									<img src="${CON_STATIC_URL}/asset/images/company/img_cont_summary_mo_eng.png" alt="" style="width:857px;">
								</div>
							</div>							</c:if>
							<div class="hidden">
								<c:if test="${LANG eq 'ko' }">
									<strong>더 나은 미래로 We connect the future</strong>
								<dl>
									<dt>People 사람중심 문화</dt>
									<dd>
										끊임없는 소통과 신뢰를 통해
										사람을 위한 기업문화를 만듭니다
									</dd>
								</dl>
								<dl>
									<dt>Future 미래지향</dt>
									<dd>
										창의적 사고와 도전을 통해
										발전된 미래를 실현합니다
									</dd>
								</dl>
								<dl>
									<dt>Solution 고객가치</dt>
									<dd>
										최고의 기술과 품질을 통해
										고객 감동을 추구합니다
									</dd>
								</dl>
								</c:if>
								<c:if test="${LANG eq 'en' }">
									<strong>To a Better Future We connect the future</strong>
									<dl>
										<dt>People People-centric Culture</dt>
										<dd>
											A people-centric corporate culture, 
											focusing on communications and mutual trust

										</dd>
									</dl>
									<dl>
										<dt>Future Future-Oriented</dt>
										<dd>
											A brighter future through creative thinking and taking on challenges
										</dd>
									</dl>
									<dl>
										<dt>Solution Customer Value</dt>
										<dd>
											Customer satisfaction through technology and quality
										</dd>
									</dl>
								</c:if>
							</div>
						</div>
					</div>
				</div>
				
				<div class="brochure-wrap full">
					<div class="inner-box">
						<div class="img-box">
							<img src="${CON_STATIC_URL}/asset/images/customer/brochure.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
						</div>
						<div class="text-box">
							<p>
								<c:if test="${LANG eq 'ko' }">
								<strong>모든 연결의 시작,</strong>
								대한전선의 더 많은 이야기를 브로슈어에서도 만나보세요.
								</c:if>
								<c:if test="${LANG eq 'en' }">
								<strong>Taihan - the beginning of all connections.</strong>
									Please check out the brochure for more detailed stories of Taihan.
								</c:if>
							</p>
							<a href="/resources/files/2020_Taihan_Brochure(eng).pdf" class="btn-type btn-m"  target="_blank">
							<span><spring:message code="overview.btnDownload" text="브로슈어 다운로드"/></span><i class="ico-down"></i></a>
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
	        setmenu( 2, '0101') 
	    },100);
	    explainSwiperInit();
	  //수정
	    window.onload = function () {
	    	var objectVision = $('.object-vision')[0].contentDocument;

	    	TweenMax.set($(objectVision).find('.people'), { x: 450, opacity: 0 });
	    	TweenMax.set($(objectVision).find('.future'), { x: -450, opacity: 0 });
	    	TweenMax.set($(objectVision).find('.solution'), { y: -450, opacity: 0 });

	    	$(window).scroll(function () {
	    		if ($('.content-img').hasClass('started')) {
	    			TweenMax.to($(objectVision).find('.people'), 1, {
	    				x: 0,
	    				opacity: 1,
	    				delay: 0.5,
	    				ease: Power4.easeOut,
	    			});
	    			TweenMax.to($(objectVision).find('.future'), 1, {
	    				x: 0,
	    				opacity: 1,
	    				delay: 0.5,
	    				ease: Power4.easeOut,
	    			});
	    			TweenMax.to($(objectVision).find('.solution'), 1, {
	    				y: 0,
	    				opacity: 1,
	    				delay: 0.5,
	    				ease: Power4.easeOut,
	    			});
	    		}
	    	});


	    }
	})
	var explainSwiper = undefined;
	
	function explainSwiperInit() {
		/*
		breakpoints 버그있음.
		*/
		if (matchMedia("screen and (min-width: 1025px)").matches) {
			explainSwiper = undefined;
			setTimeout(function(){
				$('.explain-swiper ul.swiper-wrapper').removeAttr('style');
				$('.explain-swiper li.swiper-slide').removeAttr('style');
			}, "100")
			if (explainSwiper != undefined) {
				explainSwiper.destroy(true);
			}
	
			gsap.timeline({
				scrollTrigger: {
					trigger: ".explain-wrap .bg",
					pin: true,
					scrub: 0.3,
					start: "top top",
					end: "+=1550",
					//markers: true,
				}
			});
		} else if (matchMedia("screen and (max-width: 767px)").matches) {
			console.log(2)
			if(!explainSwiper){
				explainSwiper = new Swiper('.explain-swiper', {
					slidesPerView: 1.2,
					centeredSlides: true,
					spaceBetween: 15, 
					observer: true,
					pagination: {
						el: ".swiper-pagination",
						clickable: true,
					},
				})
			}
		} else{
			console.log(3)
			explainSwiper = new Swiper('.explain-swiper', {
				slidesPerView: 1.2,
				centeredSlides: true,
				spaceBetween: 15, 
				observer: true,
				pagination: {
					el: ".swiper-pagination",
					clickable: true,
				},
			})
		}
	}
	
	$(window).resize(function () {
		explainSwiperInit();
	});


</script>





