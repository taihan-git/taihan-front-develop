<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<link rel="stylesheet" type="text/css" href="${CON_STATIC_URL}/asset/css/locomotive-scroll.min.css">
<script src="${CON_STATIC_URL}/asset/js/gsap-3.6.0.min.js"></script>
<script src="${CON_STATIC_URL}/asset/js/ScrollToPlugin-3.4.2.min.js"></script>
<script src="${CON_STATIC_URL}/asset/js/ScrollTrigger-3.4.2.min.js"></script>
<%-- <script src="${CON_STATIC_URL}/asset/js/locomotive-scroll.min.js"></script> --%>

<!--content-->
<section id="content" class="sub-wrap company-history smooth-scroll" data-scroll-section data-scroll-section-id="section0" data-scroll-section-inview="">
	<style>
		.header-wrap{position:absolute;}
	</style>
	<c:if test="${LANG eq 'ko' }">
		<!-- 2022-11-09 : history-visual-wrap 감싸줌 -->
		<div class="history-visual-wrap">
			<!--visual-->
			<div class="history-visual" >
				<!-- intro -->
				<div class="intro">
					<div class="open-txt">
						<div class="his-intro-txt">
							<strong>The history of Taihan</strong>
							<span class="text">대한전선, 놀라운 성장의 역사</span>
						</div>
					</div>
					<div class="open-window">
						<div class="left"></div>
						<div class="right"></div>
					</div>
				</div>
				<!-- txtbox -->
				<div class="text-box text-box1">
					<div class="his-next-txt">
						<p>
							끊임없는 도전과 혁신으로<br class="mo-display">&nbsp;전 세계 곳곳에 이름을 알려 온<br class="mo-display"> 대한전선.<br>
							오랜 기간 축적된 대한전선의&nbsp;<br class="mo-display">경험과&nbsp;노하우는<br class="pc-display">
							강력한 경쟁력이자<br class="mo-display"> 더 나은 미래를 만들 소중한&nbsp;<br class="mo-display">자산입니다.
						</p>
					</div>
				</div>
				<div class="text-box text-box2">
					<div class="his-next-txt">
						<p>
							불가능을 가능으로 <br>상상을 현실로 만든<br class="mo-br"> 지난 70여 년,<br><!-- 2022-10-25 -->
							묵묵히 걸어온 도전과 개척<br> 창조와 성취의 여정을<br class="mo-br">&nbsp;소개합니다.
						</p>
					</div>
				</div>

				<!-- 2022-11-02 -->
				<!-- 2022-11-09 수정 -->
				<!-- <div class="title-wrap cross-title">
						<div class="inner-box">
							<h2 class="title-type">
								<span class="left">The history of</span>
								<span class="right">Taihan</span>
							</h2>
						</div>
					</div> -->
				<!-- //2022-11-09 수정 -->
				<!-- //2022-11-02 -->

				<!-- scroll -->
				<span class="scroll-down">Scroll Down<i class="ico-scroll"></i></span>
			</div>
		</div>


		<div id="container" class="content-wrap is-last-bg">
			<div class="title-wrap cross-title" data-delighter>
				<!-- 2022-10-25
                    <div class="inner-box">
                        <h2 class="title-type">
                            <span class="left">The history of</span>
                            <span class="right">Taihan</span>
                        </h2>
                    </div>-->
			</div>

			<div class="history-navi">
				<div class="inner-box">
					<ol>
						<li class="active">
							<a href="#" data-role="btnAnchor" data-target=".list1">
								<strong>2020 ~ 현재</strong>
								<span>
										NEW TAIHAN<br>
										IN HOBAN
									</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list2">
								<strong>2010 ~ 2019</strong>
								<span>
										위기를<br>기회로 바꾸다
									</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list3">
								<strong>2000 ~ 2009</strong>
								<span>
										변화를 통해<br>성장하다
									</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list4">
								<strong>1990 ~ 1999</strong>
								<span>
										세계 무대로<br>뻗어 나가다
									</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list5">
								<strong>1980 ~ 1989</strong>
								<span>
										성장의 기반을<br>구축하다
									</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list6">
								<strong>1941 ~ 1979</strong>
								<span>
										대한민국 전선 산업의<br>기준이 되다
									</span>
							</a>
						</li>
					</ol>
				</div>
			</div>
			<ol class="history-list">
				<!-- 2020 ~ 현재 -->
				<li class="list list1">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title1.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										2020 ~ 현재
										<span>NEW TAIHAN IN HOBAN</span>
									</h3>
									<p>
										대한전선은 2021년 호반그룹에 편입되며 새로운 시대를 맞이했습니다. <br>
										안정적이고 투명한 지배구조를 바탕으로<br>
										세계 최고의 케이블&솔루션 기업으로 성장하겠다는 청사진을 제시하고,<br>
										지속가능한 성장을 위한 노력을 지속하고 있습니다.<br>
										더 나은 미래를 향한 대한전선의 도전,  대한전선의 새로운 역사는 이제부터 시작입니다.
									</p>
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2022">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2022</h4>
											<ol>
												<!-- 2022-12-26 -->
												<li>
													<strong>12</strong><span>국내최초 500kV 전류형 XLPE HVDC 케이블</span>
												</li>
												<li>
													<strong>11</strong><span>2년 연속 ESG 통합 A등급 획득</span>
												</li>
												<li>
													<strong>10</strong><span>M-TEC 설비 고도화 추진</span>
												</li>
												<!-- // 2022-12-26 -->
												<li>
													<strong>06</strong><span>한국기업평가, 한국신용평가 ‘A-‘ 획득</span>
												</li>
												<li>
													<strong>05</strong><span>기업지배구조헌장 공표</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2021">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2021</h4>
											<ol>
												<li>
													<strong>10</strong><span>한국기업지배구조원(KCGS) ESG 평가 통합 'A' 등급 획득</span>
												</li>
												<li>
													<strong>05</strong><span>영문사명 변경(Taihan Cable & Solution Co., Ltd.)</span>
												</li>
												<li>
													<strong>05</strong><span>최대주주 변경 : 호반산업</span>
												</li>
												<li>
													<strong>05</strong><span>ESG 위원회 및 ESG 조직 체계 확립</span>
												</li>
												<li>
													<strong>03</strong><span>국내 최초 미국 전력회사 PG&E 품질 우수 기업으로 선정</span>
												</li>
												<li>
													<strong>01</strong><span>쿠웨이트 광케이블 생산법인 Taihan Kuwait 설립</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_05_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_05_02.jpg)"></div>
											<p>호반그룹 인수합병 기념행사</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_03_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_03_02.jpg)"></div>
											<p>국내 최초 PG&E 품질 우수 기업 선정</p><!-- 2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2020">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2020</h4>
											<ol>
												<li>
													<strong>12</strong><span>한국전력공사 '전력기자재 품질 우수 기업' 2년 연속 선정</span>
												</li>
												<li>
													<strong>02</strong><span>BCP(Business Continuity Planning) 수립</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2020_12_01.jpg)"></div>
											<p>한국전력공사 전력기자재 우수 기업 선정 공로패</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //2020 ~ 현재 -->
				<!-- 2010 ~ 2019 -->
				<li class="list list2">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title2.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										2010 ~ 2019
										<span>위기를 기회로 바꾸다</span>
									</h3>
									<p>
										2011년 세계 최대 규모의 당진공장을 준공하고, 미주, 유럽, 중동 등에<br>
										법인과 지사를 설립하며 글로벌 경쟁력을 갖춘 세계적 기업으로 발돋움했습니다. <br>
										경영상의 위기를 슬기롭게 이겨내고 새로운 비전과 경영이념, 중장기 전략 등을 수립해 <br>
										도약과 전진의 발판을 만들었습니다.
									</p>
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2019">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2019</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>친환경 PP케이블(22.9kV) 개발</span>
												</li>
												<li>
													<strong>11</strong><span>한국전력공사 '전력기자재 품질 우수 기업' 선정</span>
												</li>
												<li>
													<strong>06</strong><span>국가핵심기술 지정 (500kV급 이상 전력케이블 시스템)</span>
												</li>
												<li>
													<strong>04</strong><span>네덜란드 판매법인 Taihan Netherlands 설립</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2019_11_01.jpg)"></div>
											<!-- 2022-12-26 -->
											<p>한국전력공사 ‘전력기자재 품질 우수 기업’ 선정</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2018">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2018</h4>
											<ol>
												<!--
													<li>
														<strong class="desc"></strong><span>서남해 해상풍력 배전 해저 케이블 수주</span>
													</li>-->
												<li>
													<strong>09</strong><span>중장기 경영 계획 V2025 선포</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<!-- 이동 2022-10-25
								<div class="img-box">
									<div class="img-item">
										<div class="item" data-delighter>
											<div class="box">
												<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_10_01.jpg)"></div>
												<p>New CI 선포식</p>
											</div>
										</div>
									</div>
									<div class="img-item">
										<div class="item" data-delighter>
											<div class="box">
												<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_06_01.jpg)"></div>
												<p>서남해 배전 해저 케이블 수주</p>
											</div>
										</div>
									</div>
								</div> -->

							<!-- 이동 2022-10-25 -->
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2017">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2017</h4>
											<ol>
												<li>
													<strong>12</strong><span>가족친화인증기업 선정</span>
												</li>
												<li>
													<strong>10</strong><span>New CI 선포</span>
												</li>
												<li>
													<strong>09</strong><span>New 인재상 정립</span>
												</li>
												<li>
													<strong>06</strong><span>서남해 해상풍력 배전 해저 케이블 수주</span>
												</li>
												<li>
													<strong>04</strong><span>윤리경영 선포</span>
												</li>
												<li>
													<strong>02</strong><span>사우디 합작 법인 SAUDI Taihan 설립</span><!-- 2022-10-25 -->
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>

							<div class="img-box">
								<!-- 2022-10-25//이동 -->
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_10_01.jpg)"></div>
											<p>New CI 선포식</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_06_01.jpg)"></div>
											<!-- 2022-12-26 -->
											<p>서남해 해상풍력 배전 해저 케이블 수주</p>
										</div>
									</div>
								</div>
								<!-- 2022-10-25//이동 -->
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_04_01.jpg)"></div>
											<p>윤리경영 선포식</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_02_01.JPG)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_02_02.jpg)"></div>
											<p>SAUDI Taihan 설립</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2016">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2016</h4>
											<ol>
												<li>
													<strong>07</strong><span>베트남 생산법인 Taihan VINA 설립</span><!-- 2022-10-25 -->
												</li>
												<li>
													<strong>01</strong><span>티이씨앤코 인수합병</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2016_07_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2016_07_02.jpg)"></div>
											<p>Taihan VINA 설립</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2015">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2015</h4>
											<ol>
												<li>
													<strong>09</strong><span>최대주주 변경 : IMM PE</span><!-- 2022-10-25 -->
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2014">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2014</h4>
											<ol>
												<li>
													<!-- 2022-12-26 -->
													<strong>12</strong><span>ACCC 증용량 가공선 생산</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2014_12_01.jpg)"></div>
											<p>ACCC 증용량 가공선</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2013">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2013</h4>
											<ol>
												<!--
													<li>
														<strong class="desc"></strong><span>국내 최초 러시아 500kV 초고압케이블 상업운전 돌입</span>
													</li>-->
												<li>
													<strong>09</strong><span>국내 최초 열차 제어 신호전송용 케이블 개발</span>
												</li>
												<li>
													<strong>07</strong><span>러시아 연방전력공사(FSK) 감사 훈장 수훈</span>
												</li>
												<li>
													<strong>07</strong><span>국내 최초 극저손실 광섬유 개발</span>
												</li>
												<li>
													<strong>07</strong><span>국내 최초 슬림형 UTP 케이블 개발</span>
												</li>
												<li>
													<strong>06</strong><span>국내 최초 러시아 500kV 초고압케이블 상업운전 돌입</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2013_07_01.jpg)"></div>
											<p>러시아 연방전력공사 감사 훈장</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2012">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2012</h4>
											<ol>
												<li>
													<strong>11</strong><span>세계 최초 400km/h남 고속전차선 개발</span>
												</li>
												<li>
													<strong>10</strong><span>부스덕트 신제품 런칭</span>
												</li>
												<li>
													<strong>09</strong><span>친환경 Gel-Free 광케이블 개발 및 양산</span>
												</li>
												<li>
													<strong>04</strong><span>국내 최초 500kV급 초고압케이블 PQ 테스트 통과</span>
												</li>
												<li>
													<strong>01</strong><span>국내 최초 일본 EOO케이블 벤더 자격 획득</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2012_10_01.jpg)"></div>
											<p>부스덕트 신제품 런칭</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2011">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2011</h4>
											<ol>
												<li>
													<strong>11</strong><span>국내 최초 500kV급 초고압케이블 수주(러시아)</span>
												</li>
												<li>
													<strong>07</strong><span>국내 최초 히팅케이블 출시</span>
												</li>
												<li>
													<strong>05</strong><span>당진공장 건설, 설비 이전 완료 및 본격 가동</span>
												</li>
												<li>
													<strong>05</strong><span>당진공장 초고압케이블 완제품 첫 출하</span>
												</li>
												<li>
													<strong>03</strong><span>옵토매직, 국내 최초 구부림 강화 광섬유 양산</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2011_11_01.jpg)"></div>
											<p>국내최초 500kV급 초고압 케이블 수주</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2011_05_01.jpg)"></div>
											<p>당진공장 전경</p>
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2011_05_02.jpg)"></div>
											<p>당진공장 본격 가동</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2010">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2010</h4>
											<ol>
												<li>
													<!-- 2022-12-26 -->
													<strong class="desc"></strong><span>지식경제부 및 KEPCO에게 스마트그리드 사업 감사패 수상</span>
												</li><!--
													<li>
														<strong class="desc"></strong><span>옵토매직, 국내 최초 구부림 강화 광섬유 양산</span>-->
												</li>
												<li>
													<strong>11</strong><span>제47회 무역의 날 국무총리표창 수상</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
				</li>
				<!-- //2010 ~ 2019 -->
				<!-- 2000 ~ 2009 -->
				<li class="list list3">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title3.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										2000 ~ 2009
										<span>변화를 통해 성장하다</span>
									</h3>
									<p>
										베트남과 남아공에 해외 생산기지를 설립하고 주요 국가에 지사를 설립하며<br>
										세계 10대 종합 케이블 기업의 면모를 갖추었습니다. <br>
										빠르게 변화하는 대내외 환경 속에서도 새로운 도전에 주저하지 않고 <br>
										숱한 위기들을 슬기롭게 극복하며 성장 가도를 이어 갔습니다.
									</p>
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2009">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2009</h4>
											<ol>
												<li>
													<strong>12</strong><span>옵토매직, 나노광섬유 개발</span>
												</li>
												<li>
													<strong>10</strong><span>국내 최초 초고압용 폴리머애관 개발</span>
												</li>
												<li>
													<strong>09</strong><span>사우디 합작투자 법인 STCC 설립</span>
												</li>
												<li>
													<!-- 2022-11-25 수정 -->
													<strong>04</strong><span>국내 최초 400kV 소선절연케이블 상용화</span>
													<!-- //2022-11-25 수정 -->
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2008">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2008</h4>
											<ol>
												<li>
													<strong>10</strong><span>당진공장 기공</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2008_10_01.jpg)"></div>
											<p>당진공장 건립 기공식</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2007">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2007</h4>
											<ol><!--
													<li>
														<strong class="desc"></strong><span>스테인레스 스틸 사업분리, 대한ST 설립</span>
													</li>-->
												<li>
													<strong>11</strong><span>제4회 무역의 날 ‘10억불 수출의 탑’ 수상</span>
												</li>
												<li>
													<strong>09</strong><span>당진 전력기기공장 준공</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2007_11_01.jpg)"></div>
											<p>10억불 수출의 탑 수상</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2007_09_01.jpg)"></div>
											<p>전력기기공장 준공</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2006">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2006</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>초고압케이블 VCV 3호기 증설</span>
												</li>
												<li>
													<strong>12</strong><span>콩고 유선회사 CKT 인수</span>
												</li>
												<li>
													<strong>10</strong><span>스테인레스 스틸 사업분리, 대한ST 설립</span>
												</li>
												<li>
													<strong>09</strong><span>Taihan Global Holdings LTD 설립(홍콩)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2005">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2005</h4>
											<ol>
												<li>
													<strong>12</strong><span>태양광 발전 전문업체 대한테크렌 설립</span>
												</li>
												<li>
													<strong>11</strong><span>베트남 생산법인 TSC 설립</span>
												</li>
												<li>
													<strong>11</strong><span>제42회 무역의 날 7억불 수출의 탑 수상</span>
												</li>
												<li>
													<strong>01</strong><span>400kV XLPE 전력케이블 및 접속재 개발(KEMA 인증)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2005_11_01.jpg)"></div>
											<p>베트남 TSC 설립</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2004">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2004</h4>
											<ol><!--
													<li>
														<strong class="desc"></strong><span>400kV XLPE 전력케이블 및 접속재 개발(KEMA 인증)</span>
													</li>-->
												<li>
													<strong class="desc"></strong><span>FTTH 통합 Solution 개발</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2003">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2003</h4>
											<ol>
												<li>
													<strong>06</strong><span>국내 최초 345kV 지중선 가압(영서-영등포)<!-- 2022-10-25 -->
														</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2003_06_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2003_06_02.jpg)"></div>
											<p>국내 최초 345kV XLPE 케이블 지중송전선로</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2002">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2002</h4>
											<ol>
												<li>
													<strong>06</strong><span>345kV XLPE 전력케이블 접속자재 개발 및 상용화</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2001">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2001</h4>
											<ol>
												<li>
													<strong>10</strong><span>345kV XLPE 전력케이블 개발</span>
												</li>
												<li>
													<strong>03</strong><span>국내 최초 변압기용 OIP 콘덴서부싱 개발</span>
												</li>
												<li>
													<strong>02</strong><span>ISO 14001 환경경영시스템 인증 취득</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2000">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2000</h4>
											<ol>
												<li>
													<strong>12</strong><span>UTP 케이블 UL인증 획득</span>
												</li>
												<li>
													<strong>12</strong><span>미국 판매법인 Taihan USA 설립</span>
												</li>
												<li>
													<!-- 2022-12-26 -->
													<strong>10</strong><span>초고압케이블, 가공송전로, OPGW : ISO 9001 획득</span>
												</li>
												<li>
													<strong>09</strong><span>남아공 전선회사 M-TEC 설립</span>
												</li>
												<li>
													<strong>07</strong><span>광섬유부문 사업분리, 옵토매직 설립</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2000_09_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2000_09_03.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2000_09_02.jpg)"></div>
											<p>남아공 M-TEC 설립</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //2000 ~ 2009 -->
				<!-- 1990 ~ 1999 -->
				<li class="list list4">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title4.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										1990 ~ 1999
										<span>세계 무대로 뻗어 나가다</span>
									</h3>
									<p>
										1964년 국내 최초로 전선을 수출하기 시작한 대한전선은 <br>
										지속적으로 해외 시장의 문을 두드리며 동남아시아와 중동에서 성과를 거두었습니다. <br>
										여기서 그치지 않고 미국, 호주, 일본 등  선진 시장을 개척해 국가 경쟁력을 높이는 한편 <br>
										글로벌 기업으로 성장할 발판을 마련하였습니다.
									</p>
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1999">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1999</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>고전압 선로 시험 단말용 에폭시부싱 개발</span>
												</li>
												<li>
													<strong>12</strong><span>전파장 저손실 광섬유 KT 마크 획득</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1998">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1998</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>비영분산천이 광섬유 개발</span>
												</li>
												<li>
													<strong>02</strong><span>국내 최초 다심 기계식 광접속자 상용화</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1997">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1997</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>특고압 수밀형 가공케이블(ABC-W) 개발</span>
												</li>
												<li>
													<strong class="desc"></strong><span>리본형 광케이블 개발</span>
												</li>
												<li>
													<strong>11</strong><span>제34회 무역의 날 5억불 수출의 탑 수상</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1997_01_01.jpg)"></div>
											<p>초고압케이블 수출 현장</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1996">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1996</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>전력기기부문 ISO 9001 인증 획득</span>
												</li>
												<li>
													<strong>11</strong><span>신 VCV TOWER 및 초고압케이블 공장 준공</span>
												</li>
												<li>
													<strong>01</strong><span>고강도 TACSR/AW, 765kV OPGW 개발</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1996_01_01.jpg)"></div>
											<p>전력기기부문 ISO 9001 인증 획득</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1996_11_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1996_11_02.jpg)"></div>
											<p>신 VCV 타워 및 초고압케이블 공장 준공</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1995">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1995</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>345kV 및 765kV 가공지선용 AWS 개발</span>
												</li>
												<li>
													<strong class="desc"></strong><span>765kV ACSR, AW 480 SQMM(Cardinal)개발</span>
												</li>
												<li>
													<strong class="desc"></strong><span>초내열 인바심 알루미늄 합금연선(STACIR) 개발</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1994">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1994</h4>
											<ol>
												<li>
													<strong>12</strong><span>345kV OPGW 개발</span>
												</li>
												<li>
													<strong>02</strong><span>스테인리스 스틸 사업 시작</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1993">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1993</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>전자식 전력량계 개발</span>
												</li>
												<li>
													<strong>12</strong><span>국내 최초 적산 전력량계 ISO 9001 인증</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1992">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1992</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>원자력 발전소용 Class 1E 케이블 국산화</span>
												</li>
												<li>
													<strong>11</strong><span>345kV OF 케이블 상용화</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1992_11_01.jpg)"></div>
											<p>345kV 초고압 OF 케이블 상용화 선도</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1991">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1991</h4>
											<ol>
												<li>
													<strong>11</strong><span>국내 최대 규모 SCR 증설</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1991_11_01.jpg)"></div>
											<p>SCR 공장 증설</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //1990 ~ 1999 -->
				<!-- 1980 ~ 1989 -->
				<li class="list list5">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title5.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										1980 ~ 1989
										<span>성장의 기반을 구축하다</span>
									</h3>
									<!-- 2022-12-26 -->
									<p>
										대한전선은 1980년대에 ‘제2의 창업’이라는 기치를 내걸고, <br>
										안양공장 내 전력, 통신, 소재 등 케이블 생산을 위한 <br>
										설비 일체를 구축하며 성장의 기반을 마련하였습니다. <br>
										특히 초고압케이블 생산 설비를 도입하고 기술연구소를 출범하는 등 <br>
										기술력과 전문성 강화에 전사 역량을 집중했습니다.
									</p>
									<!-- // 2022-12-26 -->
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1989">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1989</h4>
											<ol>
												<li>
													<!-- 2022-11-25 수정 -->
													<strong class="desc"></strong><span>국내 최초 PPLP 절연 345kV OF 케이블 개발</span>
													<!-- //2022-11-25 수정 -->
												</li>
												<li>
													<!-- 2022-12-26 -->
													<strong>12</strong><span>응급용 광케이블, 154kV OF 케이블 접속재 개발</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1989_01_01.jpg)"></div>
											<p>광통신 기술개발 현장</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1988">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1988</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>해저용 광케이블, 누설 동축케이블 개발</span>
												</li>
												<li>
													<!-- 2022-11-25 수정 -->
													<strong class="desc"></strong><span>국내 최초 Kraft 절연 345kV OF 케이블 개발</span>
													<!-- //2022-11-25 수정 -->
												</li>
												<li>
													<strong>09</strong><span>CATV용 고발포 동축케이블 개발</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1988_01_01.jpg)"></div>
											<p>시흥공장 목표달성 결의 대회</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1987">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1987</h4>
											<ol>
												<li>
													<strong>10</strong><span>저손실 광복합가공지선(OPGW) 생산</span>
												</li>
												<li>
													<strong>07</strong><span>자동차용전선 KS표시 허가 획득</span>
												</li>
												<li>
													<strong>06</strong><span>초고압 OF 케이블 접속기기 국산화</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1987_01_01.jpg)"></div>
											<p>사우디 132kV 초고압 OF 케이블 시공 현장</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1987_06_01.jpg)"></div>
											<p>초고압 OF 케이블 접속재</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1986">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1986</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>국가기간통신망 발전 공로 ‘체신의 날’ 국무총리상 수상</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1986_01_01.jpg)"></div>
											<p>대한전선 사옥 전경</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1985">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1985</h4>
											<ol>
												<li>
													<!-- 2022-12-26 -->
													<strong class="desc"></strong><span>국내 최초 154kV 단심 OF 연피 케이블 개발</span>
												</li>
												<li>
													<!-- 2022-11-25 수정 -->
													<strong class="desc"></strong><span>국내 최초 132kV XLPE 전력케이블 수출</span>
													<!-- //2022-11-25 수정 -->
												</li>
												<li>
													<strong class="desc"></strong><span>ASP 케이블 개발</span>
												</li>
												<li>
													<!-- 2022-12-26 -->
													<strong>12</strong><span>345kV OF 케이블 생산</span>
												</li>
												<li>
													<!-- 2022-11-25 수정 -->
													<strong>11</strong><span>국내 최초 THHN, THWN UL인증 획득</span>
													<!-- //2022-11-25 수정 -->
												</li>
												<li>
													<strong>09</strong><span>서울올림픽 통신망에 광통신케이블 공급</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1985_01_01.jpg)"></div>
											<p>국내 최초 132kV 초고압 XLPE 케이블 수출</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1984">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1984</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>154kV XLPE 절연케이블 개발 및 생산</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Shielded Wire, Feeder Wire UL마크 획득</span>
												</li>
												<li>
													<strong>10</strong><span>안양 광통신케이블 공장 준공</span>
												</li>
												<li>
													<strong>06</strong><span>국내 최초 장파장 다중단일모드 광케이블 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1984_01_01.jpg)"></div>
											<p>안양 광통신케이블 공장 전경</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1983">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1983</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>안양 VCV 초고압케이블 공장 준공</span>
												</li>
												<li>
													<strong class="desc"></strong><span>국내 최초 Foam Skin 통신케이블 생산</span>
												</li>
												<li>
													<strong>11</strong><span>기술연구소 설립</span>
												</li>
												<li>
													<!-- 2022-12-26 -->
													<strong>08</strong><span>국내 최초 초고압 OF 케이블 수출 개시(말레이시아)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_02.jpg)"></div>
											<!-- 2022-12-26 -->
											<p>안양공장 전경</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_03.jpg)"></div>
											<p>안양공장 VCV 타워 건설 현장</p>
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_04.jpg)"></div>
											<p>Foam Skin 통신 케이블</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_08_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_08_02.jpg)"></div>
											<p>말레이시아 초고압 OF 케이블 포설현장</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_11_01.jpg)"></div>
											<!-- 2022-12-26 -->
											<p>대한전선 기술연구소 설립</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1982">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1982</h4>
											<ol>
												<li>
													<strong>04</strong><span>세계 최초 154kV POF 케이블 선로 교체</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1982_04_01.jpg)"></div>
											<p>154kV 초고압 POF 케이블 준공 기념식</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1981">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1981</h4>
											<ol>
												<li>
													<strong>04</strong><span>국내 최초 원자력 발전소용 케이블 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1980">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1980</h4>
											<ol>
												<li>
													<strong>11</strong><span>안양 SCR 공장 준공 및 생산</span>
												</li>
												<li>
													<strong>06</strong><span>국내 최초 초고압 지중송전선로 완공(개봉-오류)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1980_11_01.jpg)"></div>
											<p>안양 SCR 공장 준공식</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //1980 ~ 1989 -->
				<!-- 1941 ~ 1979 -->
				<li class="list list6">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title6.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										1941 ~ 1979
										<span>대한민국 전선 산업의 기준이 되다</span>
									</h3>
									<p>
										대한전선의 역사는 1941년에 세워진 대한민국 최초의 전선회사, <br>
										조선전선에서 시작합니다. <br>
										국내 전선 역사의 첫 불을 밝힌 조선전선. <br>
										그 명맥을 이어받은 대한전선은 전선 산업의 개척자로서 <br>
										산업 발전의 토대를 마련하고, 세계 시장에 한국의 전선 제품을 처음으로 선보였습니다.
									</p>
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1979">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1979</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>스크린케이블 개발</span>
												</li>
												<li>
													<strong>12</strong><span>국내 최초 광케이블 설치(광화문-중앙전화국간)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1978">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1978</h4>
											<ol>
												<li>
													<!-- 2022-12-26 -->
													<strong>09</strong><span>세계 8번째 초고압 OF 케이블 공장 준공</span>
												</li>
												<li>
													<strong>02</strong><span>국내 최초 광섬유 개발</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1978_09_01.jpg)"></div>
											<p>초고압 OF 케이블 공장 준공</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1976">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1976</h4>
											<ol>
												<li>
													<strong>04</strong><span>국내 최초 표준 동축케이블 생산</span>
												</li>
												<li>
													<!-- 2022-12-26 -->
													<strong>03</strong><span>국내 최초 154kV OF 케이블 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_01_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_01_02.jpg)"></div>
											<p>안양공장 통신 케이블 생산 라인</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_04_01.jpg)"></div>
											<p>국내 최초 표준 동축케이블 생산</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_03_01.jpg)"></div>
											<!-- 2022-12-26 -->
											<p>국내 최초 154kV OF 케이블 생산</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1975">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1975</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>안양 전선공장 준공</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1975_01_01.jpg)"></div>
											<p>시흥공장 동 제련 현장</p>
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1975_01_02.jpg)"></div>
											<p>대한전선 사기</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1974">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1974</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>국내 최초 UL 및 CSA 규격 인증</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1972">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1972</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>알루미늄 압축 도체 전력케이블 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1970">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1970</h4>
											<ol>
												<li>
													<!-- 2022-11-09 수정 -->
													<strong class="desc"></strong><span>국내 최초 345kV ACSR 생산</span>
													<!-- //2022-11-09 수정 -->
												</li>
												<li>
													<strong>07</strong><span>국내 최초 야전용 통신선 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="img-item">
										<div class="item" data-delighter>
											<div class="box">
												<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1970_01_01.jpg)"></div>
											</div>
											<div class="box">
												<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1970_01_02.jpg)"></div>
												<p>시흥공장 전경</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1969">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1969</h4>
											<ol>
												<li>
													<!-- 2022-11-09 수정 -->
													<strong class="desc"></strong><span>국내 최초 33kV XLPE 절연케이블 생산</span>
													<!-- //2022-11-09 수정 -->
												</li>
												<li>
													<strong class="desc"></strong><span>적산량 전력량계 생산</span>
												</li>
												<li>
													<strong class="desc"></strong><span>수출의 날 국무총리 표창</span>
												</li>
												<li>
													<strong>05</strong><span>국내 최초 스틸패스 통신케이블 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1969_01_01.jpg)"></div>
											<p>통신용 동축 케이블 시설공사 기공식</p>
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1969_01_02.jpg)"></div>
											<p>시흥공장 내부 전경</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1968">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1968</h4>
											<ol>
												<li>
													<strong>12</strong><span>증권거래소 주식 상장, 기업공개</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1968_12_01.jpg)"></div>
											<p>증권거래소 주식 상장, 기업공개</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1966">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1966</h4>
											<ol>
												<li>
													<strong>02</strong><span>국내 최초 알루미늄선 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="img"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1965">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1965</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>국내 최초 1.2/4.4mm 세심 동축케이블 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1964">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1964</h4>
											<ol>
												<li>
													<strong>12</strong><span>국내 최초 전선류 KS 표시 허가 획득</span>
												</li>
												<li>
													<strong>01</strong><span>국내 최초 전선 수출 개시(베트남, 대만)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1961">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1961</h4>
											<ol>
												<li>
													<strong>02</strong><span>국내 최초 연피통신케이블 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1961_01_01.jpg)"></div>
										</div>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1961_01_02.jpg)"></div>
											<p>시흥공장 전경</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1959">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1959</h4>
											<ol>
												<li>
													<strong>12</strong><span>국내 최초 용동 압연기 설치</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1959_01_01.jpg)"></div>
											<p>시흥공장 용동 주조 공정</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1957">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1957</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>플라스틱 전력케이블 생산</span>
												</li>
												<li>
													<strong>02</strong><span>PVC 피복 전선 생산</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1955">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1955</h4>
											<ol>
												<li>
													<strong>02</strong><span>대한전선㈜</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1941">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1941</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>조선전선㈜ (대한민국 최초의 전선회사)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1941_01_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1941_01_02.jpg)"></div>
											<p>대한민국 최초의 전선회사</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //1941 ~ 1979 -->
			</ol>


		</div>
	</c:if>

	<c:if test="${LANG eq 'en' }">
		<!-- 2022-11-09 : history-visual-wrap 감싸줌 -->
		<div class="history-visual-wrap">
			<!--visual-->
			<div class="history-visual" >
				<!-- intro -->
				<div class="intro">
					<div class="open-txt">
						<div class="his-intro-txt">
							<strong>The history of Taihan</strong>
							<span class="text">Taihan, a history of remarkable growth</span>
						</div>
					</div>
					<div class="open-window">
						<div class="left"></div>
						<div class="right"></div>
					</div>
				</div>
				<!-- txtbox -->
				<div class="text-box text-box1">
					<div class="his-next-txt">
						<p>
							Taihan has made its name known all over the world through<br>
							constant challenge and innovation. The experience and know-how<br>
							of Taihan has accumulated over a long period of time are strong<br>
							competitive edge and valuable assets for creating a better future.
						</p>
					</div>
				</div>
				<div class="text-box text-box2">
					<!-- 2022-11-01 -->
					<div class="his-next-txt">
						<!-- 2022-12-26 -->
						<p>
							The past 70 years have been a time of transforming <br>
							the impossible into possible and imagination into reality for Taihan. <br>
							Now, let us introduce the journey of creations and achievements that <br>Taihan has silently
							accomplished through challenges and market exploitations.

						</p>
						<!-- // 2022-12-26 -->
					</div>
					<!-- //2022-11-01 -->
				</div>

				<!-- 2022-11-02 -->
				<div class="title-wrap cross-title" >
					<div class="inner-box">
						<h2 class="title-type">
							<span class="left">The history of</span>
							<span class="right">Taihan</span>
						</h2>
					</div>
				</div>
				<!-- //2022-11-02 -->



				<!-- scroll -->
				<span class="scroll-down">Scroll Down<i class="ico-scroll"></i></span>
			</div>
		</div>


		<div id="container" class="content-wrap is-last-bg">
			<div class="title-wrap cross-title" data-delighter>
				<!-- 2022-10-25 //
						<div class="inner-box">
							<h2 class="title-type">
								<span class="left">The history of</span>
								<span class="right">Taihan</span>
							</h2>
						</div>-->
			</div>

			<div class="history-navi">
				<div class="inner-box">
					<ol>
						<li class="active">
							<a href="#" data-role="btnAnchor" data-target=".list1">
								<strong>2000 ~ Present</strong><!-- 2022-10-26 -->
								<span>
											NEW TAIHAN<br>
											IN HOBAN
										</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list2">
								<strong>2010 ~ 2019</strong>
								<span>
										<!-- 2022-12-27 -->
										Turning<br>Crisis into<br>Opportunity
										</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list3">
								<strong>2000 ~ 2009</strong>
								<span>
											Growing<br>through Change
										</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list4">
								<strong>1990 ~ 1999</strong>
								<span>
										<!-- 2022-12-27 -->
										Expanding<br>into the<br>Global Market
										</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list5">
								<strong>1980 ~ 1989</strong>
								<span>
										<!-- 2022-12-27 -->
										Building<br>a Foundation<br>for Growth
										</span>
							</a>
							<div class="line">
								<span></span>
							</div>
						</li>
						<li>
							<a href="#" data-role="btnAnchor" data-target=".list6">
								<strong>1941 ~ 1979</strong>
								<!-- 2022-11-01 -->
								<span>
										<!-- 2022-12-27 -->
										Becoming<br>a Standard<br>for the Korean<br>Cable Industry
										</span>
								<!-- //2022-11-01 -->
							</a>
						</li>
					</ol>
				</div>
			</div>
			<ol class="history-list">
				<!-- 2020 ~ 현재 -->
				<li class="list list1">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title1.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										2020 ~ Present
										<span>NEW TAIHAN IN HOBAN</span>
									</h3>
									<!-- 2022-11-01 -->
									<p>
										In 2021, Taihan entered a new phase with its incorporation into Hoban Group.<br>
										Taihan presents a blueprint to grow into the world's best cable & solution company<br>
										based on a stable and transparent governance structure,<br>
										and continues its efforts for sustainable growth.
										<br>
										With the spirit of challenge for a better future, <br>the new history of Taihan has begun now.
									</p>
									<!-- //2022-11-01 -->
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2022">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2022</h4>
											<ol>
												<!-- 2022-12-26 -->
												<li>
													<strong>12</strong><span>Acquired Korea’s first KEMA international certification for 500kV LCC XLPE HVDC</span>
												</li>
												<li>
													<strong>11</strong><span>Acquired ESG Integrated Grade A for 2 consecutive years</span>
												</li>
												<li>
													<strong>10</strong><span>Advancement of M-TEC facilities</span>
												</li>
												<!-- // 2022-12-26 -->
												<li>
													<strong>06</strong><span>Acquired A- in Korea's credit rating <br>by Korea Enterprise Rating.</span>
												</li>
												<li>
													<strong>05</strong><span>Published Corporate Governance Charter.</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2021">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2021</h4>
											<ol>
												<li>
													<strong>10</strong><span>The only cable industry to acquire ESG<br> integrated grade A</span>
												</li>
												<li>
													<strong>05</strong><span>Changed company name in English into<br> Taihan Cable & Solution Co., Ltd.
														   </span>
												</li>
												<li>
													<strong>05</strong><span>Acquired by Hoban</span>
												</li>
												<li>
													<strong>05</strong><span>Established ESG committee and ESG organizational system.</span>
												</li>
												<li>
													<strong>03</strong><span>Selected as 'Outstanding Quality Performance Award'<br>
																by PG&E, a US electric power company</span>
												</li>
												<li>
													<strong>01</strong><span>Established Taihan Kuwait, a Kuwait optical cable production corporation.</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_05_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_05_02.jpg)"></div>
											<p>Acquired by Hoban</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_03_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2021_03_02.jpg)"></div>
											<p>Selected as 'Outstanding Quality Performance Award' by PG&E</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2020">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2020</h4>
											<ol>
												<li>
													<strong>12</strong><span>Selected as a 'Top Quality Power Manufacturer‘<br>
																by KEPCO for two consecutive years

																</span>
												</li>
												<li>
													<strong>02</strong><span>Established BCP (Business Continuity Planning)</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2020_12_01.jpg)"></div>
											<p>Selected as a 'Top Quality Power Manufacturer' by KEPCO<br> for two consecutive years</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //2020 ~ 현재 -->
				<!-- 2010 ~ 2019 -->
				<li class="list list2">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title2.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										2010 ~ 2019
										<span>Turning Crisis into Opportunity</span>
									</h3>
									<!-- 2022-10-26 -->
									<p>
										In 2011, Taihan built the world's largest plant in Dangjin and established subsidiaries and branches <br>
										in the Americas, Europe, and the Middle East, etc. to become a global company with competitive edge.<br>
										Although Taihan faced a management crisis, but wisely overcame and turned the crisis into <br>
										A stepping stone for leaps and bounds by establishing a new vision, <br>
										management philosophy, and mid-to-long term strategies, etc.
									</p>
									<!-- //2022-10-26 -->
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2019">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2019</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed eco-friendly PP cable (22.9kV)</span>
												</li>
												<li>
													<strong>11</strong><span>Selected by the Top Quality Power Manufacturer<br> by KEPCO</span>
												</li>
												<li>
													<strong>06</strong><span>Designated as a national core technology<br> (power cable system of 500kV or higher).</span>
												</li>
												<li>
													<strong>04</strong><span>Founded Taihan Netherlands, Netherlands sales corporation</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2019_11_01.jpg)"></div>
											<p>Selected as a 'Top Quality Power Manufacturer' by KEPCO</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2018">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2018</h4>
											<ol>
												<!--
														<li>
															<strong class="desc"></strong><span>서남해 해상풍력 배전 해저 케이블 수주</span>
														</li>-->
												<li>
													<strong>09</strong><span>Declared V2025, the mid-to-long term management plan</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<!-- 2022-10-25 // 이동
									<div class="img-box">
										<div class="img-item">
											<div class="item" data-delighter>
												<div class="box">
													<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_10_01.jpg)"></div>
													<p>Declared new CI</p>
												</div>
											</div>
										</div>
										<div class="img-item">
											<div class="item" data-delighter>
												<div class="box">
													<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_06_01.jpg)"></div>
													<p>Obtained the offshore wind power distribution submarine cable order in southwestern sea</p>
												</div>
											</div>
										</div>
									</div> -->
							<!-- 2022-10-25 // 이동 -->
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2017">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2017</h4>
											<ol>
												<li>
													<strong>12</strong><span>Selected as a certified family-friendly company</span>
												</li>
												<li>
													<strong>10</strong><span>Declared new CI</span>
												</li>
												<li>
													<strong>09</strong><span>Established new concept of talent</span>
												</li>
												<li>
													<strong>06</strong><span>Obtained the offshore wind power distribution submarine cable order in southwestern sea</span>
												</li>
												<li>
													<strong>04</strong><span>Proclaimed ethical management</span>
												</li>
												<li>
													<strong>02</strong><span>Established SAUDI Taihan, a joint venture <br>in Saudi Arabia</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<!-- 2022-10-25//이동 -->
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_10_01.jpg)"></div>
											<p>Declared new CI</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_06_01.jpg)"></div>
											<p>Obtained the offshore wind power distribution submarine cable order in southwestern sea</p>
										</div>
									</div>
								</div>
								<!-- 2022-10-25//이동 -->
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_04_01.jpg)"></div>
											<p>Proclaimed ethical management</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_02_01.JPG)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2017_02_02.jpg)"></div>
											<p>Established Saudi Taihan</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2016">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2016</h4>
											<ol>
												<li>
													<strong>07</strong><span>Established Taihan Vina, a production base<br> in Vietnam</span>
												</li>
												<li>
													<strong>01</strong><span>Acquired TEC & Co.</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2016_07_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2016_07_02.jpg)"></div>
											<p>Established Taihan VINA</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2015">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2015</h4>
											<ol>
												<li>
													<strong>09</strong><span>Taken over by IMM PE</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2014">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2014</h4>
											<ol>
												<li>
													<strong>12</strong><span>Produced ACCC dual capacity transmission</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2014_12_01.jpg)"></div>
											<p>ACCC</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2013">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2013</h4>
											<ol>
												<!--
														<li>
															<strong class="desc"></strong><span>국내 최초 러시아 500kV 초고압케이블 상업운전 돌입</span>
														</li>-->
												<li>
													<strong>09</strong><span>09 Developed Korea's first signal transmission cable for train control</span>
												</li>
												<li>
													<strong>07</strong><span>Received the Order of Appreciation from the <br>Russian Federation Electricity Corporation (FSK)</span>
												</li>
												<li>
													<strong>07</strong><span>Developed Korea's first ultra-low loss optical fiber</span>
												</li>
												<li>
													<strong>07</strong><span>Developed Korea's first slim UTP cable</span>
												</li>
												<li>
													<strong>06</strong><span>Started Korea's first commercial operation of<br> 500kV extra-high voltage cable in Russia</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2013_07_01.jpg)"></div>
											<p>Received the Order of Appreciation from the Russian Federation Electricity Corporation (FSK)</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2012">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2012</h4>
											<ol>
												<li>
													<strong>11</strong><span>Developed world's first 400km/h high-speed electric automotive wire</span>
												</li>
												<li>
													<strong>10</strong><span>Launched new Bus-duct product</span>
												</li>
												<li>
													<strong>09</strong><span>Developed and produced Eco Gel-free optical cable</span>
												</li>
												<li>
													<strong>04</strong><span>Passed Korea's first the PQ test for 500kV<br> extra-high-voltage cable </span>
												</li>
												<li>
													<strong>01</strong><span>Qualified as the first Korean vendor of ECO cable<br>
																in the Japanese market
														  </span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2012_10_01.jpg)"></div>
											<p>Launched new Bus-duct product</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2011">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2011</h4>
											<ol>
												<li>
													<strong>11</strong><span>Won order of 500kV-class extra-high-voltage cable from Russia for the first time in Korea
														  </span>
												</li>
												<li>
													<strong>07</strong><span>Produced Korea's first heating cable</span>
												</li>
												<li>
													<strong>05</strong><span>Began producing extra-high-voltage cable<br>in Dangjin plant</span>
												</li>
												<li>
													<strong>05</strong><span>Built Dangjin plant transferred facilities, and began full operation </span>
												</li>
												<li>
													<strong>03</strong><span>Optomagic developed Korea's first in mass-producing the bending-reinforced optical fiber</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2011_11_01.jpg)"></div>
											<p>Won order of 500kV-class EHV cable</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2011_05_01.jpg)"></div>
											<p>Dangjin Plant</p>
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2011_05_02.jpg)"></div>
											<p>Began full operation of Dangjin Plant</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2010">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2010</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Received an Award of Gratitude for contributions in smart grid business from The Ministry of Knowledge and Economy and KEPCO</span>
												</li><!--
														<li>
															<strong class="desc"></strong><span>옵토매직, 국내 최초 구부림 강화 광섬유 양산</span>-->
												</li>
												<li>
													<strong>11</strong><span>Received the Prime Minister's Award on the 47th Trade Day</span>
												</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
				</li>
				<!-- //2010 ~ 2019 -->
				<!-- 2000 ~ 2009 -->
				<li class="list list3">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title3.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										2000 ~ 2009
										<span>Growing through Change</span>
									</h3>

									<!-- 2022-10-26 -->
									<p>
										Taihan established overseas production corporations in Vietnam and South Africa and incorporated branches in major countries<br>
										to become one of the world’s top 10 comprehensive cable companies. <br>
										Despite the rapidly changing internal and external environment, Taihan did not hesitate to take on new challenges,<br>
										but rather, wisely overcame numerous crises to continue to facilitate the more rapid growth.
									</p>
									<!-- 2022-10-26 -->
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2009">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2009</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>12</strong><span>Optomagic, Developed subsidiary <br>
																and nano-optical fiber</span>
												</li>
												<li>
													<strong>10</strong><span>Developed Korea's first extra-high-voltage <br>
																polymer composite bushing</span>
												</li>
												<li>
													<strong>09</strong><span>Established Saudi joint venture corporation STCC</span>
												</li>
												<li>
													<strong>04</strong><span>Succeeded in commercializing Korea's first <br>
																400kV thread insulation cable</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2008">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2008</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>10</strong><span>Held a groundbreaking ceremony <br>
																for the new Dangjin plant</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2008_10_01.jpg)"></div>
											<p>Groundbreaking ceremony for the new Dangjin plant</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2007">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2007</h4>
											<ol><!--
														<li>
															<strong class="desc"></strong><span>스테인레스 스틸 사업분리, 대한ST 설립</span>
														</li>-->
												<li>
													<strong>11</strong><span>Won the $1 bil. export award on the 4th Trade Day</span>
												</li>
												<li>
													<strong>09</strong><span>Built Dangjin Cable Accessory Plant </span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2007_11_01.jpg)"></div>
											<p>Won the $1 bil. export award</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2007_09_01.jpg)"></div>
											<p>Built Dangjin Cable Accessory Plant</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2006">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2006</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Built third extra-high-voltage VCV</span>
												</li>
												<li>
													<strong>12</strong><span>Purchased DR Congo's fixed-line telecom operator
																Congo Korea Telecom
														   </span>
												</li>
												<li>
													<strong>10</strong><span>Founded Taihan ST by spinning off the stainless steel division</span>
												</li>
												<li>
													<strong>09</strong><span>Established Taihan Global Holdings LTD. (Hong Kong)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2005">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2005</h4>
											<ol>
												<li>
													<strong>12</strong><span>Founded Taihan Techren, a solar power accessory company</span>
												</li>
												<li>
													<strong>11</strong><span>Established TSC, a production base in Vietnam</span>
												</li>
												<li>
													<strong>11</strong><span>Won the $700 mil. export award on the 42nd Trade Day</span>
												</li>
												<li>
													<strong>01</strong><span>Developed 400kV XLPE power cable and accessories (KEMA certified)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2005_11_01.jpg)"></div>
											<p>Established TSC</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2004">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2004</h4>
											<ol><!--
														<li>
															<strong class="desc"></strong><span>400kV XLPE 전력케이블 및 접속재 개발(KEMA 인증)</span>
														</li>-->
												<li>
													<strong class="desc"></strong><span>Developed the integrated FTTH solution</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2003">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2003</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>06</strong><span>Installed the pressurized 345kV XLPE underground<br>
																power line between Yeongseo and Yeongdeungpo</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2003_06_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2003_06_02.jpg)"></div>
											<p>Korea's first 345kV XLPE underground power line</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2002">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2002</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>06</strong><span>Developed and commercialized <br>
																345kV XLPE power cable and accessories
															</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2001">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2001</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>10</strong><span>Developed 345kV XLPE power cable</span>
												</li>
												<li>
													<strong>03</strong><span>Developed Korea's first OIP bushing for transformers</span>
												</li>
												<li>
													<strong>02</strong><span>Earned the ISO 14001 <br>
																environmental management certification
															</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="2000">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">2000</h4>
											<ol>
												<li>
													<strong>12</strong><span>Acquired UL certification for UTP cable</span>
												</li>
												<li>
													<strong>12</strong><span>Founded Taihan USA, US sales corporation</span>
												</li>
												<li>
													<strong>10</strong><span>Earned ISO 9001 certification on extra-high-pressure underground cable, aerial power transmission line, and OPGW</span>
												</li>
												<li>
													<strong>09</strong><span>Founded M-TEC, a South African cable affiliate</span>
												</li>
												<li>
													<strong>07</strong><span>Established Optomagic by spinning off optical fiber division</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2000_09_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2000_09_03.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/2000_09_02.jpg)"></div>
											<p>Established M-TEC</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //2000 ~ 2009 -->
				<!-- 1990 ~ 1999 -->
				<li class="list list4">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title4.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										1990 ~ 1999
										<span>Expanding into the Global Market</span>
									</h3>
									<p>
										In 1964, Taihan started exporting electric wires and cables for the first time<br>
										in Korea and continuously knocked on the door of overseas markets and <br>
										achieved results in Southeast Asia and the Middle East.<br> However, Taihan did
										not stop there, but pioneered advanced markets such as the United States, <br>
										Australia, and Japan and enhanced national competitive edge <br>as well as laid
										a foothold to grow into a global company.
									</p>
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1999">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1999</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed epoxy bushing for experimental <br>high-voltage transmission line</span>
												</li>
												<li>
													<strong>12</strong><span>Earned the KT Mark for electric wave field low-loss optical fiber</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1998">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1998</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Succeeded in commercializing Korea's first multifiber mechanical optical connector</span>
												</li>
												<li>
													<strong>02</strong><span>Developed non-zero dispersion shifted fiber</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1997">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1997</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed aerial extra-high-voltage bundled<br> cable-waterproof (ABC-W)</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Developed ribbon-type optical cable</span>
												</li>
												<li>
													<strong>11</strong><span>Received the $500 mil. export award on the 34th Trade Day</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1997_01_01.jpg)"></div>
											<p>EHV cable export site</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1996">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1996</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong class="desc"></strong><span>Acquired ISO 9001 certification in cable accessory</span>
												</li>
												<li>
													<strong>11</strong><span>Built new VCV tower and <br>
																extra-high-voltage cable factory</span>
												</li>
												<li>
													<strong>01</strong><span>Developed high-strength TACSR/AW and <br>
																765kV OPGW
															</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1996_01_01.jpg)"></div>
											<p>Acquired ISO 9001 certification in cable accessory</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1996_11_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1996_11_02.jpg)"></div>
											<!-- 2022-10-26 -->
											<p>Built new VCV tower and <br>
												extra-high-voltage cable factory</p>
											<!-- //2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1995">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1995</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed super thermal-resistant aluminum-aloy conduction, invar-reinforced (STACIR)</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Developed 765kV ACSR/AW 480 SQMM (cardinal)</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Developed 345kV and 765kV AWS <br>
																for overhead ground wire
																</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1994">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1994</h4>
											<ol>
												<li>
													<strong>12</strong><span>Developed 345kV OPGW</span>
												</li>
												<li>
													<strong>02</strong><span>Began stainless steel business</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1993">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1993</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed the electronic watt hour meter</span>
												</li>
												<li>
													<strong>12</strong><span>Earned Korea's first ISO 9001 certification<br> in watt hour meter</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1992">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1992</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Localized 1E-class cable for nuclear power plants</span>
												</li>
												<li>
													<strong>11</strong><span>Commercialized 345kV OF cable</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img " style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1992_11_01.jpg)"></div>
											<p>Commercialized 345kV EHV OF cable</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1991">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1991</h4>
											<ol>
												<li>
													<strong>11</strong><span>Expanded SCR production, the largest ever in Korea</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1991_11_01.jpg)"></div>
											<p>Expanded SCR production</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //1990 ~ 1999 -->
				<!-- 1980 ~ 1989 -->
				<li class="list list5">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title5.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										1980 ~ 1989
										<span>Building a Foundation for Growth</span>
									</h3>
									<!-- 2022-10-26 -->
									<p>
										In the 1980s, under the slogan of “The Second Startup,” <br>
										Taihan laid the foundation for growth by building facilities for manufacturing cables <br>
										For electric power and communication and cable materials, etc. in the Anyang plant.<br>
										In particular, Taihan focused its company-wide capabilities on strengthening<br>
										technology and expertise by introducing extra-high voltage cable<br>
										production facilities and launching a technology research center, etc.

									</p>
									<!-- //2022-10-26 -->
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1989">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1989</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed Korea's first PPLP insulated
																345kV <br>OF cable
															  </span>
												</li>
												<li>
													<strong>12</strong><span>Developed optical fiber cable for emergency and 154kV OF cable accessories</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1989_01_01.jpg)"></div>
											<p>Developed optical fiber cable for emergency and <br>
												154kV OF cable accessories
											</p><!-- 2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1988">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1988</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed submarine optical fiber cable and <br>
																leakage coaxial cable
															  </span>
												</li>
												<li>
													<strong class="desc"></strong><span>Developed Korea's first Kraft insulated
																345 kV<br> OF cable
															  </span>
												</li>
												<li>
													<strong>09</strong><span>Developed high-foamed coaxial cable for CATV</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1988_01_01.jpg)"></div>
											<p>Siheung Plant</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1987">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1987</h4>
											<ol>
												<li>
													<strong>10</strong><span>Localized extra-high-voltage OF cable accessories</span>
												</li>
												<li>
													<strong>07</strong><span>Began manufacturing optical fiber ground wire (OPGW)</span>
												</li>
												<li>
													<strong>06</strong><span>Acquired the KS Mark for automotive wire & cable</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1987_01_01.jpg)"></div>
											<p>132kV EHV OF Cable in Saudi</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1987_06_01.jpg)"></div>
											<p>EHV OF Cable Accessories</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1986">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1986</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Won the Prime Minister's Award on the Day of Post & Telecommunication for contributing to the development of the national key communication network</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1986_01_01.jpg)"></div>
											<p>Taihan Office Building</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1985">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1985</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed Korea's first 154kV single core lead-sheathed OF cable</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Exported Korea's first 132kV XLPE power cable</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Developed ASP cable</span>
												</li>
												<li>
													<strong>12</strong><span>Developed 345kV OF power cable</span>
												</li>
												<li>
													<strong>11</strong><span>Acquired Korea's first the UL certification for <br>
																THHN and THWN
															</span>
												</li>
												<li>
													<strong>09</strong><span>Supplied optical fiber cable for Seoul Olympics communication network</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1985_01_01.jpg)"></div>
											<p>Exported Korea's first 132kV XLPE cable</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1984">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1984</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong class="desc"></strong><span>Produced 154kV XLPE insulated cable</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Acquired the UL certification for <br>
																shielded wire and feeder wire
																</span>
												</li>
												<li>
													<strong>10</strong><span>Built the Anyang optical fiber cable factory</span>
												</li>
												<li>
													<strong>06</strong><span>Produced Korea's first multiple and single mode long wavelength optical fiber cable</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1984_01_01.jpg)"></div>
											<p>Built the Anyang optical fiber cable factory</p><!-- 2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1983">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1983</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong class="desc"></strong><span>Built the VCV EHV power cable factory in Anyang</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Produced Korea's first foam skin <br>
																communication cable
															  </span>
												</li>
												<li>
													<strong>11</strong><span>Established the Technology Research Center</span>
												</li>
												<li>
													<strong>08</strong><span>Exported Korea's first OF power cable (to Malaysia)</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_02.jpg)"></div>
											<p>Built the VCV EHV cable factory in Anyang</p><!-- 2022-10-26 -->
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_03.jpg)"></div>
											<p>Built the VCV EHV cable factory in Anyang</p><!-- 2022-10-26 -->
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_01_04.jpg)"></div>
											<p>Foam Skin Communication Cable</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_08_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_08_02.jpg)"></div>
											<p>Exported Korea's first EHV OF cable to Malaysia</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1983_11_01.jpg)"></div>
											<p>Established the Technology Research Center </p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1982">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1982</h4>
											<ol>
												<li>
													<strong>04</strong><span>Completed the world's first 154kV POF power line replacement</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1982_04_01.jpg)"></div>
											<p>Completed the world's first 154kV POF power line replacement</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1981">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1981</h4>
											<ol>
												<li>
													<strong>04</strong><span>Produced Korea's first cables for nuclear power plants</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1980">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1980</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>11</strong><span>Built Anyang SCR (Southwire Continuous Rod) factory <br>
																and began production
															</span>
												</li>
												<li>
													<strong>06</strong><span>Installed Korea's first underground power transmission line (between Gaebong and Oryu)</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1980_11_01.jpg)"></div>
											<p>Built Anyang SCR factory</p><!-- 2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //1980 ~ 1989 -->
				<!-- 1941 ~ 1979 -->
				<li class="list list6">
					<div class="title">
						<div class="bg">
							<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/bg_history_title6.jpg)"></div>
							<div class="inner-box">
								<div class="text">
									<h3>
										1941 ~ 1979
										<span>Becoming a standard for the Korean Cable industry</span>
									</h3>
									<p>
										The history of Taihan began with Chosun Electric Wire,<br>
										the first electric wire company in Korea established in 1941. <br>
										Inheriting the legacy of Chosun Electric Wire, <br>
										which lit the first light in the history of Korean electric wire industry,<br>
										Taihan laid the foundation for industrial development as a pioneer <br>
										in the electric wire industry and introduced Korean electric wire products <br>
										to the global market for the first time.
									</p>
								</div>

							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1979">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1979</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Developed a screen cable</span>
												</li>
												<li>
													<strong>12</strong><span>Installed the first optical cable line in Korea between Gwanghwamun Gate and Central Telephone Office</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1978">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1978</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>09</strong><span>Built the world's 8th EHV OF cable plant<br>
																in Anyang

														   </span>
												</li>
												<li>
													<strong>02</strong><span>Developed Korea's first optical fiber</span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1978_09_01.jpg)"></div>
											<p>Built the EHV OF cable factory in Anyang</p><!-- 2022-10-26 -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1976">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1976</h4>
											<ol>
												<li>
													<strong>04</strong><span>Produced Korea's first standard coaxial cable</span>
												</li>
												<li>
													<strong>03</strong><span>Produced Korea's first 154kV OF cable</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_01_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_01_02.jpg)"></div>
											<p>Communication cable production line in Anyang Plant</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_04_01.jpg)"></div>
											<p>Developed Korea's first optical fiber</p>
										</div>
									</div>
								</div>
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1976_03_01.jpg)"></div>
											<p>Produced Korea's first 154kV OF cable</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1975">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1975</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Built Anyang cable plant</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1975_01_01.jpg)"></div>
											<p>Base metal plant at Siheung</p>
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1975_01_02.jpg)"></div>
											<p>Taihan coperate flags</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1974">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1974</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Acquired UL and CSA certification for the first time<br> in Korea</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1972">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1972</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Produced aluminum compression conductor power cables</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1970">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1970</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Produced Korea's first 345kV ACSR</span>
												</li>
												<li>
													<strong>07</strong><span>Produced Korea's first communication cable<br> for field operation</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="img-item">
										<div class="item" data-delighter>
											<div class="box">
												<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1970_01_01.jpg)"></div>
											</div>
											<div class="box">
												<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1970_01_02.jpg)"></div>
												<p>Siheung Plant</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1969">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1969</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Produced Korea's first 33kV XLPE insulated cable</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Produced an integrated watt-hour meter</span>
												</li>
												<li>
													<strong class="desc"></strong><span>Received Prime Minister's Commendation on Export Day</span>
												</li>
												<li>
													<strong>05</strong><span>Produced Korea's first SteelPass communication cable</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img type2" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1969_01_01.jpg)"></div>
											<p>Produced Korea's first communication cable for field operation</p>
										</div>
									</div>
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1969_01_02.jpg)"></div>
											<p>Siheung Plant</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1968">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1968</h4>
											<ol>
												<li>
													<strong>12</strong><span>Listed on the stock exchange and IPO</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1968_12_01.jpg)"></div>
											<p>Listed on the stock exchange and IPO</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1966">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1966</h4>
											<ol>
												<li>
													<strong>02</strong><span>Produced Korea's first aluminum wire</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="img"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1965">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1965</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Produced Korea's first small diameter coaxial cable (1.2/4.4mm)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1964">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1964</h4>
											<!-- 2022-10-26 -->
											<ol>
												<li>
													<strong>12</strong><span>Acquired Korea's first KS mark for cables</span>
												</li>
												<li>
													<strong>01</strong><span>Started Korea's first exporting cables <br>
																(to Vietnam and Taiwan)

														  </span>
												</li>
											</ol>
											<!-- //2022-10-26 -->

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont">
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1961">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1961</h4>
											<ol>
												<li>
													<strong>02</strong><span>Produced Korea's first lead-sheathed communication cable</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1961_01_01.jpg)"></div>
										</div>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1961_01_02.jpg)"></div>
											<p>Siheung Plant</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1959">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1959</h4>
											<ol>
												<li>
													<strong>12</strong><span>Produced Korea's first copper smelting and <br>rolling mill</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item" data-delighter>
										<div class="box">
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1959_01_01.jpg)"></div>
											<p>Produced Korea's first copper smelting and rolling mill</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1957">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1957</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Produced plastic insulated power cable</span>
												</li>
												<li>
													<strong>02</strong><span>Produced PVC jacket cable</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1955">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1955</h4>
											<ol>
												<li>
													<strong>02</strong><span>Established Taihan Electric Wire Co., Ltd.</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
							</div>
						</div>
					</div>
					<div class="cont last"><!-- 2022-10-19 //클래스추가 -->
						<div class="inner-box">
							<div class="text-box">
								<div class="text-item" data-hisyear="1941">
									<div>
										<span class="cover"></span>
										<div class="box">
											<h4 class="year">1941</h4>
											<ol>
												<li>
													<strong class="desc"></strong><span>Established Chosun Electric Wire Co., Ltd.<br> (The first electric cable company in Korea)</span>
												</li>
											</ol>

										</div>
									</div>
								</div>
							</div>
							<div class="img-box">
								<div class="img-item">
									<div class="item">
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1941_01_01.jpg)"></div>
										</div>
										<div class="box" data-delighter>
											<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/history/1941_01_02.jpg)"></div>
											<p>Korea's first electric cable company </p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<!-- //1941 ~ 1979 -->
			</ol>


		</div>
	</c:if>
</section>
<!--//content-->

<script>
	/*$('.history-visual').on('mousewheel', function(e){
if(e.originalEvent.wheelDelta < 0) {
	//scroll down
	$('html, body').stop().animate({
		scrollTop : '+=150px'
	},500);
}else {
	//scroll up
	$('html, body').stop().animate({
		scrollTop : '-=150px'
	},500);
}
return false;
});*/


	$(document).ready(function () {

		function deviceChk(){
			var $html = $('html');
			var w = $(window).width();
			if( w < 768 ) $html.addClass('mobile');
			else if( w < 1024 ) $html.addClass('tablet');
			else $html.addClass('desktop');
		}deviceChk()


// init animate
		$('html, body').css({'overflow':'hidden','height':'100%'});

// init animate, scrolltrigger refresh, scroll start
		$(function(){
			gsap.set(".history-visual .open-txt", { autoAlpha: 0, scale:1.4});
			gsap.to(".history-visual .open-txt", { autoAlpha: 1, scale:1, delay:0.5, duration:3});

			setTimeout(function() {
				$(".history-visual").addClass("init-animation");
			}, 1000);
			setTimeout(function() {
				//$(".sub").addClass("open");
			}, 3500);
			setTimeout(function() {
				ScrollTrigger.refresh();
				$('html, body').css({'overflow':'visible','height':'auto'});
			}, 2000); // scroll gap 주의

			/*
    setTimeout(function() { // 3초간 행동 없으면 자동 스크롤
        var scrollTopValue = $(window).scrollTop();
        var timer = setTimeout(function() {
            $('html, body').css({'overflow':'hidden','height':'100%'});
            $('html, body').animate({
                scrollTop: window.innerHeight * 2.5
            }, 2000);
            $('html, body').animate({
                scrollTop: window.innerHeight * 3.5
            }, 500);
            $('html, body').css({'overflow':'visible','height':'auto'});
        },0);

        if(scrollTopValue > 0) {
            clearTimeout(timer);
        }

        $(window).on('scroll',function(){
            var scrollValue = $(document).scrollTop();
            //console.log(scrollValue);
            if(scrollValue > 0) {
                clearTimeout(timer);
            }
        });
    }, 5000);*/
		});

// visual



		var visionBgScale = gsap.timeline()
				.set(".history-visual .cross-title", { autoAlpha: 0, yPercent:0, delay:10, duration:100})
				.set(".history-visual .cross-title .left", { autoAlpha: 0, xPercent:-100, delay:10, duration:100})
				.set(".history-visual .cross-title .right", { autoAlpha: 0, xPercent:100, delay:10, duration:100})



				.to(".history-visual .his-intro-txt", { autoAlpha: 1, yPercent:0, duration:100})
				.to(".history-visual .his-intro-txt", { autoAlpha: 1, yPercent:0, duration:100})
				.to(".history-visual .his-intro-txt", { autoAlpha: 1, yPercent:0, duration:100})
				.to(".history-visual .his-intro-txt", { autoAlpha: 0.8, yPercent:-10, duration:100})
				.to(".history-visual .his-intro-txt", { autoAlpha: 0.7, yPercent:-20, duration:100})
				.to(".history-visual .his-intro-txt", { autoAlpha: 0.6, yPercent:-40, duration:100})
				.to(".history-visual .his-intro-txt", { autoAlpha: 0, yPercent:-50, duration:100})


				.set(".history-visual .text-box1 p", { autoAlpha:0, yPercent:80, delay:10, duration:100})
				.to(".history-visual .text-box1 p", { autoAlpha: 0.7, yPercent:50, delay:10, duration:200})
				.to(".history-visual .text-box1 p", { autoAlpha: 0.8, yPercent:10, delay:10, duration:200})
				.to(".history-visual .text-box1 p", { autoAlpha: 1, yPercent:0, delay:10, duration:200})
				.to(".history-visual .text-box1 p", { autoAlpha: 0.8, yPercent:-10, delay:10, duration:100})
				.to(".history-visual .text-box1 p", { autoAlpha: 0.7, yPercent:-20, delay:10, duration:100})
				.to(".history-visual .text-box1 p", { autoAlpha: 0.5, yPercent:-40, delay:10, duration:100})
				.to(".history-visual .text-box1 p", { autoAlpha: 0, yPercent:-50, delay:10, duration:100})


				.set(".history-visual .text-box2 p", { autoAlpha:0, yPercent:120, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 0.6, yPercent:80, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 0.7, yPercent:50, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 0.8, yPercent:20, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:100})


				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:100})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:10})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:10})
				.to(".history-visual .text-box2 p", { autoAlpha: 1, yPercent:0, delay:10, duration:10})
		/*  ".history-visual .cross-title .left", { autoAlpha: 0.5, xPercent:-80, delay:10, duration:10},
".history-visual .cross-title .right", { autoAlpha: 0.5, xPercent:80, delay:10, duration:10})

.to(".history-visual .cross-title", { autoAlpha: 1, yPercent:0, delay:10, duration:10})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:10})

.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100})
.to(".history-visual .cross-title span", { autoAlpha: 1, xPercent:0, delay:10, duration:100}) */

		ScrollTrigger.create({
			trigger: ".history-visual",
			start: "top top",
			end: function(){
				return (($(window).innerHeight() * 3.5));
			},
			animation:visionBgScale,
			pin:true,
			scrub: true,
			onComplete: function() {
				console.log('onComplete');
				$('.history-visual .cross-title').addClass("started");
			},
			onLeave: function(){
				console.log('onLeave');
				$('body').removeClass('on-visual');
			},
			onEnterBack: function(){
				$('body').addClass('on-visual');
			},
			onEnter: function(){
				$('body').addClass('on-visual');
			}
		});

// list bg width 조절
		var hisTitBg = gsap.utils.toArray('.history-list .list .bg .img');
		hisTitBg.forEach(function (item, i, items) {
			var hisTitBgTl = gsap.timeline({
				scrollTrigger: {
					trigger: item,
					start: 'top 50%',
					end: 'top top',
					scrub: true,
					toggleClass: 'active',
					//markers:true
				}
			});
			hisTitBgTl.fromTo(item, {width:'70%'},{ maxWidth:'none', width:'100%'});
		});

		var naviPos = $(".history-navi").offset().top;

		function scrollprogress(idx) {
			var contentTop = window.scrollY - $(".list" + (idx + 1)).offset().top;
			var contentHeight = $(".list" + (idx + 1)).outerHeight();
			var windowHeight = window.innerHeight;
			var scrolled = parseInt(contentTop / (contentHeight - windowHeight) * 100);
			//console.log(scrolled + "%")
			$(".history-navi li").eq(idx).find('.line span').css("width", scrolled + "%");
		}

		$(window).on('scroll',function(){
			var _navHeight = $(".history-navi").outerHeight();
			var nScrollTop = $(this).scrollTop();

			if( (nScrollTop >= $(".history-list").offset().top - _navHeight) && (nScrollTop <= $(".list2").offset().top - _navHeight)){
				$(".history-navi li").removeClass("active");
				$(".history-navi li").removeClass("end");
				$(".history-navi li").eq(0).addClass("active");
				scrollprogress(0);

			}else if( (nScrollTop >= $(".list2").offset().top) && (nScrollTop <= $(".list3").offset().top - _navHeight)){
				$(".history-navi li").removeClass("active");
				$(".history-navi li").removeClass("end");
				$(".history-navi li").eq(0).addClass("end");
				$(".history-navi li").eq(1).addClass("active");
				scrollprogress(1);
			}else if( (nScrollTop >= $(".list3").offset().top) && (nScrollTop <= $(".list4").offset().top - _navHeight)){
				$(".history-navi li").removeClass("active");
				$(".history-navi li").removeClass("end");
				$(".history-navi li").eq(0).addClass("end");
				$(".history-navi li").eq(1).addClass("end");
				$(".history-navi li").eq(2).addClass("active");
				scrollprogress(2);
			}else if( (nScrollTop >= $(".list4").offset().top) && (nScrollTop <= $(".list5").offset().top - _navHeight)){
				$(".history-navi li").removeClass("active");
				$(".history-navi li").removeClass("end");
				$(".history-navi li").eq(0).addClass("end");
				$(".history-navi li").eq(1).addClass("end");
				$(".history-navi li").eq(2).addClass("end");
				$(".history-navi li").eq(3).addClass("active");
				scrollprogress(3);
			}else if( (nScrollTop >= $(".list5").offset().top) && (nScrollTop <= $(".list6").offset().top - _navHeight)){
				$(".history-navi li").removeClass("active");
				$(".history-navi li").removeClass("end");
				$(".history-navi li").eq(0).addClass("end");
				$(".history-navi li").eq(1).addClass("end");
				$(".history-navi li").eq(2).addClass("end");
				$(".history-navi li").eq(3).addClass("end");
				$(".history-navi li").eq(4).addClass("active");
				scrollprogress(4);
			}else if( (nScrollTop >= $(".list6").offset().top) && (nScrollTop <= $(".sitemap-wrap").offset().top - _navHeight)){
				$(".history-navi li").removeClass("active");
				$(".history-navi li").removeClass("end");
				$(".history-navi li").eq(0).addClass("end");
				$(".history-navi li").eq(1).addClass("end");
				$(".history-navi li").eq(2).addClass("end");
				$(".history-navi li").eq(3).addClass("end");
				$(".history-navi li").eq(4).addClass("end");
				$(".history-navi li").eq(5).addClass("active");
				scrollprogress(5);
			}else{
				//$(".history-navi li").find('.line span').css("width", "0%");
			}

			if(nScrollTop >= $(".history-list").offset().top - _navHeight){
				$(".history-navi").addClass('top');
			}else{
				$(".history-navi").removeClass('top');
			}
		});


		$(document).on("click", '[data-role="btnAnchor"]', function(scroll) {
			scroll.preventDefault();
			var wW = $(this),
					target = wW.data("target"),
					speed = wW.data("speed") || 500,
					scroll = wW.data("scroll"),
					wW = $(window).outerWidth(),
					scroll = scroll ? wW < 769 ? Math.min(scroll, scroll / 720 * wW) : Math.min(scroll, scroll / 1440 * wW) : 1,
					terms = wW < 769 ? 50 : 300;
			$("html, body").stop().animate({
				scrollTop: ($(target).offset().top + scroll - $(".history-navi").outerHeight() + 1) - terms
			}, speed)
		})
	});


	function explainSwiperInit() {
		/*
		breakpoints 버그있음.
		*/
		var explainSwiper = undefined;

		if (matchMedia("screen and (min-width: 1025px)").matches) {
			explainSwiper = undefined;
			setTimeout(function() {
				$('.explain-swiper ul.swiper-wrapper').removeAttr('style');
				$('.explain-swiper li.swiper-slide').removeAttr('style');
			}, "100")
			if (explainSwiper != undefined) {
				explainSwiper.destroy(true);
			}
		} else {
			explainSwiper = new Swiper('.explain-swiper', {
				slidesPerView: 1.2,
				centeredSlides: true,
				spaceBetween: 15, observer: true,
				pagination: {
					el: ".swiper-pagination",
				},
			})
		}
	}
	explainSwiperInit();
	$(window).resize(function () {
		explainSwiperInit();
	});
</script>
<script src="${CON_STATIC_URL}/asset/js/history.js"></script>
