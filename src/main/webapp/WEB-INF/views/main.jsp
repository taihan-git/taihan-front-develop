<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<main id="content" class="main">
    <div class="visual-wrap">
        <div class="visual-swiper">

            <div class="swiper-wrapper">
                <c:forEach var="banner" items="${bannerList}">
                <div class="swiper-slide"><!-- 2022-10-17 수정 -->
                <!-- <div class="swiper-slide" data-swiper-autoplay="7000"> -->
                    <div class="main-title">
                        <strong class="title-box en"><span class="title-motion">${cmnUtils:unescapeXml(banner.mungu1)}</span></strong>
                        <p class="title-box"><span class="title-motion">${cmnUtils:unescapeXml(banner.mungu2)}</span></p>

                        <c:if test="${banner.btnDspYn eq 'Y'}">
                        <div class="title-box"><span class="title-motion"><a href="${banner.btnLink}" class="btn-more">${banner.btnTitle}<i class="ico-more white"></i></a></span></div>
                        </c:if>
                    </div>
                    <c:if test="${banner.contType eq '2'}">
                   			<!-- 수정 -->
							<video preload="metadata" muted="" playsinline="">
								<source src="${CON_UPLOAD_URL}${banner.sysVideoFile}" type="video/mp4">
							</video>
							<!-- //수정 -->
                        <%-- <video src="${CON_UPLOAD_URL}${banner.sysVideoFile}" playsinline muted></video> --%>
                    </c:if>
                    <c:if test="${banner.contType eq '1'}">
                        <c:if test="${isMobile}">
                            <img src="${CON_UPLOAD_URL}${banner.sysMoImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="" >
                        </c:if>
                        <c:if test="${!isMobile}">
                            <img src="${CON_UPLOAD_URL}${banner.sysPcImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="" >
                        </c:if>
                    </c:if>
                </div>
                </c:forEach>
            </div>
            <!-- 수정 -->
            <!-- 버튼영역 -->
            <div class="main-swiper-button">
                <div class="swiper-pagination"></div>
                <button class="swiper-player-button" aria-pressed="false" aria-label="재생 일시 정지"></button>
            </div>
            <!-- //버튼영역 -->
        </div>
        <span class="scroll-down">Scroll Down<i class="ico-scroll"></i></span>
    </div>

    <c:if test="${LANG eq 'ko'}">
    <section class="vision-wrap" data-delighter><!-- 수정 -->
        <div class="inner-box">
            <div class="main-title" data-delighter>
                <strong class="title-box"><span class="title-motion">대한전선은</span></strong>
                <strong class="title-box"><span class="title-motion">세상 모든 곳에</span></strong>
                <strong class="title-box"><span class="title-motion">에너지와 정보를 연결합니다</span></strong>
            </div>
        </div>


        <div class="bg-box" data-delighter>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
            <div class="main-title">
                <h2 class="title-box"><span class="title-motion">Vision</span></h2>
                <strong class="title-box en"><span class="title-motion">We Connect</span></strong>
                <strong class="title-box en"><span class="title-motion">the Future</span></strong>
                <p class="title-box"><span class="title-motion">더 큰 세계, 더 나은 내일을 향한</span></p>
                <p class="title-box"><span class="title-motion">우리의 담대한 전진은</span></p>
                <p class="title-box"><span class="title-motion">지금부터 시작입니다.</span></p>
                <p class="title-box"><span class="title-motion"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/company/overview" class="btn-more">MORE<i class="ico-more"></i></a></span></p>
            </div>
        </div>
    </section>
    </c:if>

    <c:if test="${LANG eq 'en'}">
    <section class="vision-wrap" data-delighter>
        <!-- 수정 -->
        <div class="inner-box">
            <div class="main-title" data-delighter>
                <strong class="title-box">
							<span class="title-motion">
								<!-- 2022-11-09 수정 -->
								Taihan connects<br>
								energy and information<br>
								across the globe.<br>
								<!-- //2022-11-09 수정 -->
							</span>
                </strong>
            </div>
        </div>
        <div class="bg-box" data-delighter>
            <div class="bg">
                <div class="bg-inner"></div>
            </div>
            <div class="main-title">
                <h2 class="title-box"><span class="title-motion">Vision</span></h2>
                <strong class="title-box en"><span class="title-motion">We Connect</span></strong>
                <strong class="title-box en"><span class="title-motion">the Future</span></strong>
                <p class="title-box">
							<span class="title-motion">
							    Toward broader horizons<br>
								and a better tomorrow,<br>
								our bold step forward begins now
							</span>
                </p>

                <div class="title-box"><span class="title-motion"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/company/overview" class="btn-more">MORE<i class="ico-more"></i></a></span></div>
            </div>
        </div>
    </section>
    </c:if>


    <section class="product-wrap">
        <div class="inner-box">
            <c:if test="${LANG eq 'ko'}">
            <div class="side-box">
           			 <!-- 2022-10-25 텍스트 수정 -->
						<div class="main-title" data-delighter>
							<h2 class="title-box"><span class="title-motion">Business</span></h2>
							<strong class="title-box">
								<span class="title-motion">
									안정적이고 <br class="pc-br"><br class="mo-br">
									효율적인 <br class="pc-br">
									제품을 <br class="pc-br"><br class="mo-br">
									공급합니다
								</span>
							</strong>
							<div class="title-box"><span class="title-motion"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/electricity" class="btn-more">MORE<i class="ico-more"></i></a></span></div>
						</div>
					<!-- //2022-10-25 텍스트 수정 -->

						<!-- 2022-10-18 수정 -->
						<ul class="list-tab mo-display" data-delighter="start:1.2;end:-0.3">
							<li class="active"><a href="#">전력</a></li>
							<li><a href="#">신재생</a></li>
							<li><a href="#">통신</a></li>
							<li><a href="#">소재</a></li>
						</ul>
						<!-- //2022-10-18 수정 -->
            </div>
            </c:if>
            <c:if test="${LANG eq 'en'}">
                <div class="side-box">
                    <div class="main-title" data-delighter>
                        <h2 class="title-box"><span class="title-motion">Business</span></h2>
                        <!-- 2022-10-25 텍스트 수정 -->
                        <strong class="title-box">
								<span class="title-motion">
									We provide<br>
									stable and<br>
									efficient<br>
									products.
								</span>
                        </strong>
                        <!-- //2022-10-25 텍스트 수정 -->
                        <div class="title-box"><span class="title-motion"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/electricity" class="btn-more">MORE<i class="ico-more"></i></a></span></div>
                    </div>

                    <!-- 2022-10-26 수정 -->
                    <ul class="list-tab mo-display" data-delighter="start:1.2;end:-0.3">
                        <li class="active"><a href="#">Power Generation</a></li>
                        <li><a href="#">Renewable Energy</a></li>
                        <li><a href="#">Communications</a></li>
                        <li><a href="#">Base Metal</a></li>
                    </ul>
                    <!-- //2022-10-26 수정 -->
                </div>
            </c:if>


            <ul class="list-product">
                <li class="active" data-delighter>
                    <div class="img-box">
                        <img src="${CON_STATIC_URL}/asset/images/main/img_product01.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
                        <div class="type-box">
                        	<c:if test="${LANG eq 'ko' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=1" class="type">송전용 케이블</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=19" class="type">배전용 케이블</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=31" class="type">산업용 케이블</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=35" class="type">부스덕트</a>
                            </c:if>
                            <c:if test="${LANG eq 'en' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=2" class="type">Transmission Cable</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=20" class="type">Distribution Cable</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=32" class="type">Industrial Cable</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=36" class="type">Busduct</a>
                            </c:if>
                        </div>
                    </div>
                    <div class="title-box">
                        <c:if test="${LANG eq 'ko'}">
                            <strong>전력<span>Power Cable</span></strong>
                            <p>초고압 케이블 분야의 개척자로서 차별화된 가치를 만듭니다.</p>
                        </c:if>

                        <c:if test="${LANG eq 'en'}">
                            <strong>Power Cable</strong>
                            <p>We provide customized solutions for new and renewable energy.</p>
                        </c:if>

                    </div>
                </li>
                <li data-delighter>
                    <div class="img-box">
                        <img src="${CON_STATIC_URL}/asset/images/main/img_product02.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
                        <div class="type-box">
                        	<c:if test="${LANG eq 'ko' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=37" class="type">해저케이블</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=39" class="type">태양광 케이블</a>
                            </c:if>
                            <c:if test="${LANG eq 'en' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=38" class="type">Submarine Cable</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=40" class="type">Solar Power Cable</a>
                            </c:if>
                        </div>
                    </div>
                    <div class="title-box">
                        <c:if test="${LANG eq 'ko'}">
                            <strong>신재생<span>Renewable Energy Cable</span></strong>
                            <p>신재생 에너지 분야에 활용되는 맞춤형 솔루션을 선보입니다.</p>
                        </c:if>

                        <c:if test="${LANG eq 'en'}">
                            <strong>Renewable Energy Cable</strong>
                            <!-- 2022-11-25 수정 -->
							<p>A pioneer in the extra-high voltage cable industry,<br>we create differentiated value for our customers.</p>
							<!-- //2022-11-25 수정 -->
                        </c:if>
                    </div>
                </li>
                <li data-delighter>
                    <div class="img-box">
                        <img src="${CON_STATIC_URL}/asset/images/main/img_product03.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
                        <div class="type-box">
                        	<c:if test="${LANG eq 'ko' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=41" class="type">동 통신케이블</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=55" class="type">광케이블</a>
                            </c:if>
                            <c:if test="${LANG eq 'en' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=42" class="type">Communication Cable</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=56" class="type">Optical Cable</a>
                            </c:if>
                        </div>
                    </div>
                    <div class="title-box">
                        <c:if test="${LANG eq 'ko'}">
                            <strong>통신<span>Communication Cable</span></strong>
                            <p>모든 네트워크 영역에서 정교한 기술력을 제공합니다.</p>
                        </c:if>

                        <c:if test="${LANG eq 'en'}">
                            <strong>Communication Cable</strong>
                            <p>Taihan boasts sophisticated technology in all network areas.</p>
                        </c:if>

                    </div>
                </li>
                <li data-delighter>
                    <div class="img-box">
                        <img src="${CON_STATIC_URL}/asset/images/main/img_product04.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
                        <div class="type-box v2">
                        	<c:if test="${LANG eq 'ko' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=63" class="type">Copper Rod & Wire</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=65" class="type">Magnet Wire</a>
                            </c:if>
                            <c:if test="${LANG eq 'en' }">
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=64" class="type">Copper Rod & Wire</a>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/productDetail?idx=66" class="type">Magnet Wire</a>
                            </c:if>
                        </div>
                    </div>
                    <div class="title-box">
                        <c:if test="${LANG eq 'ko'}">
                            <strong>소재<span>Base Metal</span></strong>
                            <p>풍부한 경험과 노하우로 완벽한 품질의 소재를 생산합니다.</p>
                        </c:if>

                        <c:if test="${LANG eq 'en'}">
                            <strong>Base Metal</strong>
                            <p>With rich experience and know-how, we produce materials of the highest quality.</p>
                        </c:if>
                    </div>
                </li>
            </ul>
        </div>
    </section>


    <!-- 2022-10-18 구조수정 -->
    <section class="global-wrap">
        <div class="inner-box">
            <!-- 2022-10-25 텍스트 수정 -->
            <div class="main-title" data-delighter="start:1.2;end:-0.3">
                <h2 class="title-box"><span class="title-motion">Global Network</span></h2>
                <strong class="title-box">
                    <c:if test="${LANG eq 'ko'}">
					<span class="title-motion">
						전 세계 모든 고객의 <br class="mo-br">요구와<br class="pc-br">
						시장의 변화에 <br class="mo-br">신속하게<br class="pc-br">
						대응하고 <br class="mo-br">있습니다
					</span>
                    </c:if>
                    <c:if test="${LANG eq 'en'}">
                        <!-- 2022-10-27 텍스트 수정 -->
                        <span class="title-motion">
						We satisfy our clients’ needs<br>
						and respond quickly to <br class="pc-br">global market changes.
					</span>
                    </c:if>
                </strong>

                <div class="title-box"><span class="title-motion"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork" class="btn-more">MORE<i class="ico-more"></i></a></span></div>
            </div>
            <!-- //2022-10-25 텍스트 수정 -->
        </div>

        <div class="map-box">
            <div class="bg"></div>
            <img class="map-img" src="${CON_STATIC_URL}/asset/images/main/map4.png" alt="">

            <!-- 2022-11-02 지도 수정 -->
            <object class="map-img" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/main/map7.svg?v4"></object>
            <ul class="list-area">
                <li>
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/korea" class="area-box korea">
                        <div class="title-box">
                            <strong>Korea</strong>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/america" class="area-box america">
                        <div class="title-box">
                            <strong>America</strong>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/asia" class="area-box asia">
                        <div class="title-box">
                            <strong>Asia</strong>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/oceania" class="area-box oceania">
                        <div class="title-box">
                            <strong>Oceania</strong>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/middle" class="area-box middle">
                        <div class="title-box">
                            <strong>Middle East Asia</strong>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/europe" class="area-box eu">
                        <div class="title-box">
                            <strong>Europe</strong>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/africa" class="area-box africa">
                        <div class="title-box">
                            <strong>Africa</strong>
                        </div>
                    </a>
                </li>
            </ul>
            <!-- //2022-11-02 지도 수정 -->
        </div>
    </section>
    <!-- ..2022-10-18 구조수정 -->



    <c:if test="${LANG eq 'ko'}">
    <section class="esg-wrap">
    		<!-- 2022-10-25 텍스트 수정 -->
			<div class="main-title" data-delighter>
				<h2 class="title-box"><span class="title-motion">ESG</span></h2>
				<strong class="title-box"><span class="title-motion">더불어 사는 <br class="mo-br">아름다운 사회를 위해</span></strong>
				<p class="title-box"><span class="title-motion">기업의 사회적 책임을 실천하며 <br class="mo-br">세상에 희망의 빛을 전하겠습니다.</span></p>
				<div class="title-box"><span class="title-motion"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/esgManage" class="btn-more">MORE<i class="ico-more"></i></a></span></div>
			</div>
			<!-- //2022-10-25 텍스트 수정 -->

        <div class="esg-box" data-delighter>

            <div class="door-inner">
                <div class="door is-left"></div>
                <div class="door is-right"></div>
                <ul class="list-esg" data-delighter>
                    <li>
                        <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/environment">
                            <div class="text-box">
                                <i class="ico-env"></i>
                                <p>Environment</p>
                                <strong>친환경 경영 고도화</strong>
                                <i class="ico-arr-circle"></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/social">
                            <div class="text-box">
                                <i class="ico-social"></i>
                                <p>Social</p>
                                <strong>사회적 책임 준수</strong>
                                <i class="ico-arr-circle"></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/ownership">
                            <div class="text-box">
                                <i class="ico-gvrnn"></i>
                                <p>Governance</p>
                                <strong>기업지배구조 투명화</strong>
                                <i class="ico-arr-circle"></i>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    </c:if>

    <c:if test="${LANG eq 'en'}">
        <section class="esg-wrap">
            <!-- 2022-10-19 텍스트 수정 -->
            <div class="main-title" data-delighter>
                <h2 class="title-box"><span class="title-motion">ESG</span></h2>
                <strong class="title-box"><span class="title-motion">To create a beautiful and harmonious society</span></strong>
                <p class="title-box">
						<span class="title-motion">
							<!-- 2022-11-25 수정 -->
							Taihan will continue to carry out corporate social responsibility,<br>spreading the light of hope to the world.
							<!-- //2022-11-25 수정 -->
						</span>
                </p>
                <div class="title-box"><span class="title-motion"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/esgManage" class="btn-more">MORE<i class="ico-more"></i></a></span></div>
            </div>
            <!-- //2022-10-19 텍스트 수정 -->

            <div class="esg-box" data-delighter>

                <div class="door-inner">
                    <div class="door is-left"></div>
                    <div class="door is-right"></div>
                    <ul class="list-esg" data-delighter>
                        <li>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/environment">
                                <div class="text-box">
                                    <i class="ico-env"></i>
                                    <p>Environment</p>
                                    <strong>Advanced Eco-friendly Management</strong>
                                    <i class="ico-arr-circle"></i>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/social">
                                <div class="text-box">
                                    <i class="ico-social"></i>
                                    <p>Social</p>
                                    <strong>Corporate Social Responsibility</strong>
                                    <i class="ico-arr-circle"></i>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/esg/ownership">
                                <div class="text-box">
                                    <i class="ico-gvrnn"></i>
                                    <p>Governance</p>
                                    <!-- 2022-11-01 수정 -->
									<strong>Transparent Corporate <br class="pc-br">Governance</strong>
									<!-- //2022-11-01 수정 -->
                                    <i class="ico-arr-circle"></i>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </c:if>


    <section class="news-wrap">
        <div class="inner-box">
            <div class="main-title" data-delighter>
                <h2 class="title-box"><span class="title-motion">News</span></h2>
                <strong class="title-box"><span class="title-motion">
                    ${LANG eq 'ko' ? '새로운 소식을 알려드립니다.':  'What’s New'}
                </span>
                    <span class="title-motion">
                    <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/news/pr/taihanNews" class="btn-more">MORE<i class="ico-more"></i>
                    </a></span>
                </strong>
            </div>
            <ul class="list-news" data-delighter>
                <c:forEach var="news" items="${newsList}">
                <li>
                    <a href="${news.btnLink}" target="${news.btnLinkTarget}">
                        <div class="img-box"><img src="${CON_UPLOAD_URL}${news.sysPcImgFile}"  onerror="this.src='${CON_STATIC_URL}/asset/images/taihan-log.png';" alt=""></div>
                        <div class="date-box">
                            <p>${news.dispYearMonth}</p>
                            <strong>${news.dispYearDay}</strong>
                        </div>
                        <div class="title-box">
                            <strong class="category">${news.dispContName}</strong>
                            <span class="date">${news.dispRegDt}</span>
                            <p class="title">${news.title}</p>
                        </div>
                    </a>
                </li>
                </c:forEach>
            </ul>
        </div>
    </section>

	<!-- 수정 -->
    <section class="story-wrap">
        <div class="inner-box">
            <div class="main-title" data-delighter>
                <h2 class="title-box"><span class="title-motion">Success Story</span>
                    <span class="title-motion">
                       	<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/successStory" class="btn-more">MORE<i class="ico-more"></i></a>
                    </span>
                </h2>
            </div>

            <!-- 2022-10-18 : 페이징 위치 변경 -->
			<div class="story-swiper" data-delighter>
				<div class="swiper-wrapper">
					<c:forEach var="success" items="${successList}">
					<div class="swiper-slide">
						<a href="${success.btnLink}" class="story-box" target="${success.btnLinkTarget}">
							<div class="img-box"><img src="${CON_UPLOAD_URL}${success.sysPcImgFile}" alt=""></div>
							<div class="title-box">
								<strong>${success.title}</strong>
							</div>
						</a>

					</div>
					</c:forEach>
				</div>
				<div class="swiper-button-box">
					<div class="button-prev"></div>
					<div class="button-next"></div>
					<div class="fraction-pagination"></div>
				</div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<!-- //2022-10-18 -->

<!--             <div class="story-swiper" data-delighter> -->
<!--                 <div class="swiper-wrapper"> -->
<%--                     <c:forEach var="success" items="${successList}"> --%>
<!--                     <div class="swiper-slide"> -->
<!--                         <div class="story-box"> -->
<%--                             <a href="${success.btnLink}" class="img-box" target="${success.btnLinkTarget}"> --%>
<%--                                 <img src="${CON_UPLOAD_URL}${success.sysPcImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""> --%>
<!--                             </a> -->
<!--                             <div class="category-box"> -->
<%--                                 <span>${success.section}</span> --%>
<%--                                 <span>${success.country}</span> --%>
<!--                             </div> -->
<%--                             <a  href="${success.btnLink}" class="title-box" target="${success.btnLinkTarget}"> --%>
<%--                                 <strong>${success.title}</strong> --%>
<!--                             </a> -->
<!--                         </div> -->
<!--                     </div> -->
<%--                     </c:forEach> --%>
<!--                 </div> -->
<!--             </div> -->

<!--             <div class="swiper-button-next"></div> -->
<!--             <div class="swiper-button-prev"></div> -->

<!--             <div class="swiper-button-box" data-delighter> -->
<!--                 <div class="button-prev"></div> -->
<!--                 <div class="button-next"></div> -->
<!--                 <div class="fraction-pagination"></div> -->
<!--             </div> -->

        </div>
    </section>

    <section class="banner-wrap">
        <ul class="list-banner">

            <li>
                <a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/company/jobs">
                    <div class="img-box"><img src="${CON_STATIC_URL}/asset/images/main/img_bnr01.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
                    <h2 class="title-text">${LANG eq 'ko' ? '채용정보' : 'Careers'}</h2>
                    <p class="sub-text">${LANG eq 'ko' ? '대한전선을 이끌어 갈 인재를 모집합니다.'
                    : 'We are looking for talented individuals to lead Taihan'}<i class="ico-more white"><span class="hidden">더 보기</span></i></p>
                </a>
            </li>
            <li>
                <a href="${LANG eq 'ko' ? '/news/ir/notice?mode=2' : '/en/customer/irRelation'}">
                    <div class="img-box"><img src="${CON_STATIC_URL}/asset/images/main/img_bnr02.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
                    <h2 class="title-text">${LANG eq 'ko' ? '공고·공시' : 'IR'}</h2><!-- 수정 -->
                    <p class="sub-text">${LANG eq 'ko' ? 'IR 주요행사 및 경영활동을 확인하세요.' : 'IR Archive'}<i class="ico-more"><span class="hidden">더 보기</span></i></p>
                </a>
            </li>

        </ul>
    </section>

</main>
<!--//content-->

<!-- 메인팝업 -->
<c:if test="${not empty popupList }">
    <div class="pop-layer pop-main" id="pop-main">
        <div class="dim"></div>
        <div class="pop-wrap">
            <div class="pop-content">
                <!-- Swiper -->
                <div class="swiper pop-swiper">
                    <div class="swiper-wrapper">
                        <c:forEach var="item" items="${popupList}">
                        <div class="swiper-slide">
                        <a href="${item.btnLink}" target="${item.btnLinkTarget}">
                        <img class="notice-img" src="${CON_UPLOAD_URL}${item.sysPcImgFile}" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="${item.imgText}"
                             data-url="${item.btnLink}"  data-url-type="${item.btnLinkTarget}">
                        </a>
                        </div>
                        </c:forEach>
                    </div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <!-- //Swiper -->
            </div>
            <button class="pop-close"><span class="hidden">팝업닫기</span></button>
            <div class="pop-footer">
                <button class="btn-today-close" id="todayClose"><i class="ico-checkbox"></i>
                    ${LANG eq 'ko' ? '오늘 하루 보지 않기' : 'Please do not show me this again today'}
                </button>
            </div>

        </div>
    </div>
<!-- //메인팝업 -->
</c:if>

<script>
$(document).ready(function(){
    <c:if test="${not empty popupList }">
        let today = getToday();
        if(today == cookieManager.getCookie("popCloseDay")){
            $('#pop-main').hide();
        }
        else{
            UI.layerPopUp({ selId: '#pop-main' });
            var popSwiper = new Swiper(".pop-swiper", {
                pagination: {
                    el: ".swiper-pagination",
                },
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
            });
        }

        $("#todayClose").click(function(){
            cookieManager.setCookie("popCloseDay",today);
            UI.layerPopUp({selId:'#pop-main',st:'close'})
        });

        // $('.notice-img').click(function(){
        //     let url = $(this).data('url');
        //     let urlType = $(this).data('urlType');
        //     console.log('url',url)
        //     console.log('urlType',urlType)
        //
        //     let aEl = document.createElement('a');
        //     aEl.setAttribute('href', isEmpty(url) ? '#' : url);
        //     aEl.setAttribute('target',isEmpty(urlType) ? '' : urlType);
        //     aEl.click();
        // })
    </c:if>
});

function getToday(){
    let today = new Date();
    let year = today.getFullYear(); // 년도
    let month = today.getMonth() + 1;  // 월
    let date = today.getDate();  // 날짜
    return String(year) + String(month) + String(date);
}
</script>