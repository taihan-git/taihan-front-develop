<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

		    
<!--content-->
		<section id="content" class="sub-wrap esg-social">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_03.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="society.title" text="사회"/></h2>
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
							<c:if test="${LANG eq 'ko'}">
									사람 중심의 경영, <br class="mo-br">나눔의 가치를 중심으로<br>
								지역사회와 함께 성장합니다.
							</c:if>
							<c:if test="${LANG eq 'en'}">
									Taihan grows with local communities based on the people-centric management and value of
								sharing.
							</c:if>
							</strong>
						</div>

						<c:if test="${LANG eq 'ko'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/esg/social"><span>인권경영</span></a></li>
								<li><a href="/esg/safeManage"><span>안전보건경영</span></a></li>
								<li class="active"><a href="/esg/socialContribution"><span>사회공헌</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/en/esg/social"><span>Human Rights Principles</span></a></li>
								<li><a href="/en/esg/safeManage"><span>Health & Safety Management</span></a></li>
								<li class="active"><a href="/en/esg/socialContribution"><span>Social Contribution</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>

						<div class="img-type" data-delighter>
							<!-- 2022-10-20 이미지 수정 -->
							<img class="img" src="${CON_STATIC_URL}/asset/images/esg/img_social03_03.jpg" alt="">
							<!-- //2022-10-20 이미지 수정 -->
							<!-- 2022-11-15 수정 -->
							<p class="text">
							<c:if test="${LANG eq 'ko'}">
								세상과의 연결을 통해 더 따뜻한 사회,<br>
								더 나은 미래를 만듭니다.
							</c:if>
							<c:if test="${LANG eq 'en'}">
								Creating a happier society and a better future <br>by connecting with the world
							</c:if>
							</p>
							<!-- //2022-11-15 수정 -->
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">사회공헌 가치체계</h3>
							<p>
								대한전선은 ‘연결된 세상, 함께하는 행복’이라는 비전 아래, 사람과 공간, 시간의 연결을 통해<br>
								상생의 가치를 창출하고 소외 없고 지속 가능한 미래를 조성하기 위해 노력합니다.<br>
								‘교육’, ‘지역사회’, ‘환경’의 세 중점 영역에서 임직원과 가족이 함께할 수 있는 참여형 활동을 기획하고 추진함으로써,<br>
								나눔의 문화를 확산하고 사회와 함께 동반 성장해 나가겠습니다.
							</p>
						</div>

						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_worth_pc.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_worth_mo.png" alt="" class="mo-display">
							<div class="hidden">
								<table>
									<tbody>
										<tr>
											<th scope="row">비전</th>
											<td colspan="3">연결된 세상, 함께하는 행복
												Connected World, Connected Happiness</td>
										</tr>
										<tr>
											<th scope="row">목표</th>
											<td>
												<strong>사람의 연결
													People
												</strong>
												<p>사람과 사람, 기업과 사회가
													함께하는 상생의 가치를 창출한다.
												</p>
											</td>
											<td>
												<strong>공간의 연결
													Space
												</strong>
												<p>지역과 경계를 넘어선 나눔으로
													소외 없는 세상을 만든다.</p>
											</td>
											<td>
												<strong>시간의 연결
													Time
												</strong>
												<p>오늘에서 내일로, 세대에서 세대로
													지속 가능한 미래를 조성한다.</p>
											</td>
										</tr>
										<tr>
											<th scope="row">중점영역</th>
											<td>교육</td>
											<td>지역사회</td>
											<td>환경</td>
										</tr>
										<tr>
											<th scope="row">추진전략</th>
											<td>미래 세대 성장 지원과
												교육의 기회 제공</td>
											<td>지역사회 발전과
												주민 삶의 질 향상에 기여</td>
											<td>환경 보호 인식 제고 및
												친환경 활동 확대</td>
										</tr>
										<tr>
											<th scope="row">임직원봉사 촉진제도</th>
											<td colspan="3">근무 시간 내 봉사활동 진행을 통한 임직원 참여 독려</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</c:if>
					<c:if test="${LANG eq 'en'}">
					<div class="title-wrap4" data-delighter>
						<h3 class="title-type">Social Contribution Value System</h3>
						<p>
							Under the vision to “work together to make a happier world,” Taihan is committed to
							creating the value of shared growth by connecting people, space and time, and therefore
							building an inclusive and sustainable future. Taihan disseminate the culture of sharing
							and grow together with the society by planning and performing activities with its
							employees and their families in three key areas, “education, local community, and
							environment.”
						</p>
					</div>

					<div class="content-img" data-delighter>
						<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_worth_pc_en.png" alt="" class="pc-display">
						<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_worth_mo_en.png" alt="" class="mo-display">
						<div class="hidden">
							<table>
								<tbody>
									<tr>
										<th scope="row">Vision</th>
										<td colspan="3">Connected World, Connected Happiness</td>
									</tr>
									<tr>
										<th scope="row">Goals</th>
										<td>
											<strong>People</strong>
											<p>Create a win-win value that people, company, and society share
												together.</p>
										</td>
										<td>
											<strong>Space</strong>
											<p>Share across regions and boundaries to create an alienation-free
												world.
											</p>
										</td>
										<td>
											<strong>Time</strong>
											<p>Create a future sustainable from present to future and from
												generation to generation.</p>
										</td>
									</tr>
									<tr>
										<th scope="row">Areas of Focus</th>
										<td>Education</td>
										<td>Community</td>
										<td>Environment</td>
									</tr>
									<tr>
										<th scope="row">Promotion Strategy</th>
										<td>Support the growth of future generations and provide educational
											opportunities</td>
										<td>Contribute to the development of the local community and the improvement
											of the quality of life of the residents</td>
										<td>Raise awareness of environmental protection and expand eco-friendly
											activities</td>
									</tr>
									<tr>
										<th scope="row">Employee Volunteer Promotion System</th>
										<td colspan="3">Plan volunteer activities during working hours to encourage
											employee participation</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
					</c:if>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">주요활동</h3>
							<p>대한전선은 1970년대부터 지금까지 진정성을 바탕으로 한 지속적인 나눔에 앞장서 왔습니다.<br>
								특히, 구성원의 적극적이고 자발적인 참여로 교육, 지역사회 상생 및 환경을 주요 테마로 삼고 적극적인 사회공헌 활동을 시행합니다.</p>
						</div>

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">교육</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities01_01.jpg" alt="">
											</div>
											<strong class="title">주니어 전기교실</strong>
											<p class="desc v2">사업지 인근 학생들에게 과학에 대한 호기심과 관심을
												심어주기 위해 임직원이 직접 선생님으로
												참여하는 재능기부 활동입니다.</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities01_02.jpg" alt="">
											</div>
											<strong class="title">목소리 기부</strong>
											<p class="desc v2">임직원들의 목소리로 동화책을 녹음하여 시각장애 및
												다문화 가정 아동들에게 교육의 기회를 제공합니다.</p>
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

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">지역사회</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities02_01.jpg" alt="">
											</div>
											<strong class="title">정기 사회공헌 활동</strong>
											<p class="desc v2">안양시 비산종합사회복지관 등 지역 복지 단체와
												연계하여 소외계층을 위해 정기적으로
												사회공헌활동을 실시합니다.</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities02_02.jpg" alt="">
											</div>
											<strong class="title">사랑의 헌혈 캠페인</strong>
											<p class="desc v2">임직원 단체 헌혈을 실시하여 혈액 수급에 기여하고
												있으며, 헌혈증을 기부해 의료 혜택을 받기 어려운
												소외계층을 지원합니다</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities02_03.jpg" alt="">
											</div>
											<strong class="title">당진시 나눔장터</strong>
											<p class="desc v2">당진시 주최 나눔장터를 통해 임직원이 기증한 물품을
												판매하는 활동입니다. 수익금 전액을 기부합니다.</p>
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

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">환경</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities03_01.jpg" alt="">
											</div>
											<strong class="title">1사 1연안 활동</strong>
											<p class="desc v2">깨끗한 해안 환경과 주민들의 쾌적한 주거 환경 조성을
												위해 임직원들이 정기적으로 충남 당진시 장고항 일대의
												해안가를 관리하고 있습니다.</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities03_02.jpg" alt="">
											</div>
											<strong class="title">멸종 위기종 보호 활동</strong>
											<p class="desc v2">당진공장 인근에 서식하고 있는 멸종위기종
												‘금개구리’의 보호 및 관련 생물 보전을 위해
												환경 정화 활동을 실시합니다.</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities03_03.jpg" alt="">
											</div>
											<strong class="title">폐 건전지 교환 캠페인</strong>
											<p class="desc v2">환경 보호 및 자원 순환 인식을 제고하기 위해 매년
												‘폐 건전지 교환 캠페인’을 진행합니다.
												수거된 폐 건전지는 아연, 철, 니켈 등으로 재활용됩니다.</p>
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

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">호반사랑 나눔이</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities04_01.jpg" alt="">
											</div>
											<p class="desc v2">호반그룹 임직원들이 매달 월급에서 일정 금액을
												기부하는 프로그램으로, 대한전선은 2021년부터
												동참하고 있으며, 이 외 다양한 사회공헌 활동에도
												활발히 참여하고 있습니다.</p>
											<div class="btn-box">
												<a href="https://www.ihoban.co.kr/social/love-share/web" class="btn-type v3 btn-m" target="_blank">호반그룹 사회공헌 홈페이지<i class="ico-arr"></i></a>
											</div>
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
						</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Key Activities</h3>
							<!-- 2022-11-15 수정 -->
							<p>
								Since the 1970s, Taihan has been leading sustainable sharing based on sincerity.<br>
								Through the employees’ active and voluntary participation, <br>
								Taihan performs social contribution activities under the themes of education, shared growth with local communities, and environment.
							</p>
							<!-- //2022-11-15 수정 -->
						</div>

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">Education</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities01_01.jpg" alt="">
											</div>
											<strong class="title">Junior Electricity Class
											</strong>
											<p class="desc v2">This is a talent donation program where Taihan’s employees participate as instructors teaching science to students in areas near the company’s worksites in order to help the students develop curiosity for and interest in science.</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities01_02.jpg" alt="">
											</div>
											<strong class="title">Voice Donation</strong>
											<p class="desc v2">Taihan’s employees donate their voice to record the reading of children’s books to provide an educational opportunity to children with visual impairments and from multicultural families.</p>
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

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">Community</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities02_01.jpg" alt="">
											</div>
											<strong class="title">Regular Social Contribution Activities</strong>
											<p class="desc v2">Taihan performs social contribution activities on a regular basis for the underprivileged through cooperation with local welfare organizations, such as Bisan Social Total Welfare Center in Anyang-si.
											</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities02_02.jpg" alt="">
											</div>
											<strong class="title">Blood Donation Campaign</strong>
											<p class="desc v2">Taihan’s employees participate in blood donation to contribute to the national blood supply, and also donate their blood donation certificates to support the medically underserved.
											</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities02_03.jpg" alt="">
											</div>
											<strong class="title">Dangjin-si Flea Market</strong>
											<p class="desc v2">Taihan’s employees donate items for sale at a flea market organized by Dangjin City. The entire proceeds from the market are donated.</p>
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

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">Environment</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities03_01.jpg" alt="">
											</div>
											<strong class="title">“One Company One Coast” Campaign</strong>
											<p class="desc v2">Taihan’s employees perform a regular volunteer activity to care for the coastal areas of Jango port in Dangjin-si, Chungcheongnam-do in order to keep the coastal environment clean, and create a pleasant residential environment for local residents.</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities03_02.jpg" alt="">
											</div>
											<strong class="title">Protection of Endangered Species</strong>
											<p class="desc v2">Taihan performs environmental purification activities to protect the habitat of gold-spotted pond frog, an endangered species, near Dangjin Plant, and contribute to conservation of the related organisms.</p>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities03_03.jpg" alt="">
											</div>
											<strong class="title">Waste Battery Exchange Campaign</strong>
											<p class="desc v2">Taihan holds the annual “waste battery exchange campaign” to enhance awareness for environmental protection and resource circulation. The collected waste batteries are recycled as useful metallic materials, such as zinc, iron, and nickel.
											</p>
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

						<div class="board-wrap" data-delighter>
							<div class="title-wrap2">
								<h4 class="title-type">Hoban Sarangnanumi (Share Love with Hoban)</h4>
							</div>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_social_activities04_01.jpg" alt="">
											</div>
											<p class="desc v2">Since 2021, Taihan has been participating in Hoban Sarangnanumi (Share Love with Hoban), a program through which the employees of Hoban Group donate a set amount of their monthly wages. Also, Taihan is participating in various other social contribution activities.
											</p>
											<div class="btn-box">
												<a href="https://www.ihoban.co.kr/social/love-share/web" class="btn-type v3 btn-m" target="_blank">Learn More<i class="ico-arr"></i></a>
												
											</div>
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
						</c:if>
					</div>
				</div>
			</div>


		</section>
		<!--//content-->		    

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '030303');
        },100);
    })
    
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
</script>





