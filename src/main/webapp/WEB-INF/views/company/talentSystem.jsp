<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
    
 <!--content-->
		<section id="content" class="sub-wrap company-system">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/company/visual_company_05.jpg?v5)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="hr.title" text="인재경영"/></h2>
				</div>
			</div>

			<%-- GNB --%>
			    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
			 <%-- GNB --%>


			<div id="container" class="content-wrap">

				<div class="content-box">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap" data-delighter>
							<strong class="title-type">
								<span>인사제도</span>
							</strong>
							<!-- <p>
								세상을 연결하고 세계를 무대로 끊임없이 도전하는 사람들, 당신이 대한전선인입니다.
								<br>
								대한전선은 높은 직무 역량과 잠재력을 가진 인재를 선발하고, 각자의 능력을 창의적이고 능동적으로 발휘할 수 있도록 적극 양성합니다. <br>
								공정한 평가와 보상 시스템을 통해 회사와 구성원이 함께 성장하는 건강한 조직 문화 조성에 노력을 기울이고 있습니다. 

							</p> 수정 --> 
						</div>
					</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap" data-delighter>
							<strong class="title-type">
								<span>HR System</span>
							</strong>
						</div>
					</c:if>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">인재상</h3>
							<p>
								대한전선의 인재는 열린 마음으로 소통하고, 최고의 전문성으로 고객 감동을 추구하며, 일에 대한 열정으로 발전된 미래를 실현합니다. 
							</p>
						</div>
						<div class="focus-box" data-delighter>
							<strong class="focus-text">열린 마음과 전문성으로<br class="mo-display"> 끊임없이 도전하는 인재</strong>
						</div>
						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/company/img_cont_system01_pc.png" alt="" class="pc-display">
						</div>
					</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Talent</h3>
							<!-- 2022-10-26 텍스트 수정 -->
							<p>
								The talents of Taihan communicate with an open mind, pursue customer satisfaction<br>
								with the best professionalism, and realize the future development with passion for their work.
							</p>
							<!-- //2022-10-26 텍스트 수정 -->
						</div>
						<div class="focus-box" data-delighter>
						<!-- 2022-10-26 텍스트 수정 -->
						<strong class="focus-text">Talents who constantly challenge themselves <br class="mo-display">with an open mind and professionalism</strong>
						<!-- //2022-10-26 텍스트 수정 -->
						</div>
						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/company/img_cont_system01_pc.png" alt="" class="pc-display">
						</div>
					</c:if>
						<div class="content-text" data-delighter>
							<ul class="inner-box">
							<c:if test="${LANG eq 'ko'}">
								<li>
									<div class="icon-box">
										<i class="ico-system-text1"></i>
									</div>
									<dl>
										<dt><em>Open Mind</em>열린 마음</dt>
										<!-- 2022-12-26 -->
										<dd>
											열린 마음으로 소통하고<br class="mo-display">
											서로를 존중하며<br class="pc-display">
											신뢰와 협업을 통해<br class="pc-display"><br class="mo-display">
											긍정적인 기업문화를
											만들어 가는 인재
										</dd>
										<!-- // 2022-12-26 -->
									</dl>
								</li>
								<li>
									<div class="icon-box">
										<i class="ico-system-text2"></i>
									</div>
									<dl>
										<dt><em>Professional</em>전문성</dt>
										<!-- 2022-12-26 -->
										<dd>
											최고의 전문성을 갖추고
											주인의식과 <br class="pc-display"><br class="mo-display">책임감 있는 자세로
											더 나은 가치를 <br class="mo-display">창출하여
											고객 감동을 추구하는 인재
										</dd>
										<!-- // 2022-12-26 -->
									</dl>
								</li>
								<li>
									<div class="icon-box">
										<i class="ico-system-text3"></i>
									</div>
									<dl>
										<dt><em>Passion</em>열정</dt>
										<dd>
											일에 대한 열정과
											포기하지 않는<br class="mo-display"> 노력으로
											시련과 역경을 이기며<br class="mo-display">
											변화와 혁신을 통해
											발전된 미래를<br class="mo-display"> 실현하는 인재
										</dd>
									</dl>
								</li>
								</c:if>
							<c:if test="${LANG eq 'en'}">
									<li>
										<div class="icon-box">
											<i class="ico-system-text1"></i>
										</div>
										<dl>
											<dt><em>Open Mind</em></dt>
											<!-- 2022-10-26 텍스트 수정 -->
											<dd>
												Talents who constantly challenge<br>
												themselves with an open mind and<br>
												professionalism
											</dd>
											<!-- //2022-10-26 텍스트 수정 -->
										</dl>
									</li>
									<li>
										<div class="icon-box">
											<i class="ico-system-text2"></i>
										</div>
										<dl>
											<dt><em>Professional</em></dt>
											<dd>
												Talents who create better value with the highest level of professionalism and a sense of ownership and pursue customer satisfaction with a responsible attitude
											</dd>
										</dl>
									</li>
									<li>
										<div class="icon-box">
											<i class="ico-system-text3"></i>
										</div>
										<dl>
											<dt><em>Passion</em></dt>
											<dd>
												Talents who overcome trials and hardships with passion for work and ceaseless effort to realize the future developed through change and innovation
											</dd>
										</dl>
									</li>
								</c:if>
							</ul>
						</div>
					</div>

					<div class="slider-wrap" data-delighter>
						<!-- 2022-10-19//(s) -->
							<!-- 2022-11-29 -->
						<div class="slider">
							<ul>
								<li class="odd">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system1.jpg)"></div>
								</li>
								<li class="even">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system2.jpg)"></div>
								</li>
								<li class="odd">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system3.jpg)"></div>
								</li>
								<li class="even">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system4.jpg)"></div>
								</li>
								<li class="odd">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system5.jpg)"></div>
								</li>
								<li class="even">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system6.jpg)"></div>
								</li>
								<li class="odd">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system7.jpg)"></div>
								</li>
								<li class="even">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system8.jpg)"></div>
								</li>
								<li class="odd">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system9.jpg)"></div>
								</li>
								<li class="even">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system10.jpg)"></div>
								</li>
								<li class="odd">
									<div class="img" style="background-image:url(${CON_STATIC_URL}/asset/images/company/img_slide_system11.jpg)"></div>
								</li>
							</ul>
						</div>
						<!-- //2022-11-29 -->
						<!-- 2022-10-19//(e) -->
					</div>

				</div>

				<div class="content-box">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">인재육성</h3>
							<p>
								구성원 모두가 전문 분야의 경쟁력을 갖추고 글로벌 리더로 성장할 수 있도록, 직무 특성과 시기 등에 맞는 맞춤형 교육을 지원합니다.
							</p>
						</div>

						<div class="board-wrap" data-delighter>
							<div class="board-body">
								<ul class="list-board2">
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/company/img_list_system1.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">신입사원 육성 </strong>
												<p class="desc">
													입문교육, 공장교육, 멘토링 제도의 운영으로 안정적인 조직 적응 및 역량 개발을 지원합니다.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/company/img_list_system2.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">직무교육</strong>
												<p class="desc">
													직무 역량 향상을 위한 단계별 맞춤형 교육을 실시합니다.<br> 영업사원 역량 강화 교육, 엔지니어 역량 향상 과정 등이 포함됩니다.

												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/company/img_list_system3.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">글로벌 교육</strong>
												<p class="desc">
													글로벌 인재로 거듭나기 위해 기본적으로 요구되는 어학 강좌 및 해외 파견자 사전 교육 등을 실시합니다. 
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/company/img_list_system4.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">자기 계발 지원</strong>
												<p class="desc">
													직무, 어학, 자기 계발 등 필요한 교육을 선택하여 수강할 수 있는 온라인 및 사외 교육을 지원합니다.
												</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
								<h3 class="title-type">Talent Nurturing</h3>
								<!-- 수정 -->
								<p>
									Taihan provides customized training tailored to job characteristics and timing, etc. so that all members can become competitive in their specialized fields and grow into global leaders.
								</p>
							</div>
	
							<div class="board-wrap" data-delighter>
								<div class="board-body">
									<ul class="list-board2">
										<li>
											<div class="list-item">
												<div class="img-flex">
													<img src="${CON_STATIC_URL}/asset/images/company/img_list_system1.jpg" alt="">
												</div>
												<div class="title-box">
													<strong class="title">New Employee Training</strong>
													<p class="desc">
														Supports stable organizational adjustment and competency development through introductory training, on-site training, and mentoring system.
													</p>
												</div>
											</div>
										</li>
										<li>
											<div class="list-item">
												<div class="img-flex">
													<img src="${CON_STATIC_URL}/asset/images/company/img_list_system2.jpg" alt="">
												</div>
												<div class="title-box">
													<strong class="title">On-the-Job Training</strong>
													<p class="desc">
														Provides step-by-step customized training to improve job competency. This includes salesperson competency-building training and engineer competency enhancement courses, etc.
													</p>
												</div>
											</div>
										</li>
										<li>
											<div class="list-item">
												<div class="img-flex">
													<img src="${CON_STATIC_URL}/asset/images/company/img_list_system3.jpg" alt="">
												</div>
												<div class="title-box">
													<strong class="title">Global Talent Training</strong>
													<p class="desc">
														Provides language courses and overseas work prior training, etc. which are basically required to become global talents.
													</p>
												</div>
											</div>
										</li>
										<li>
											<div class="list-item">
												<div class="img-flex">
													<img src="${CON_STATIC_URL}/asset/images/company/img_list_system4.jpg" alt="">
												</div>
												<div class="title-box">
													<strong class="title">Self-development Support</strong>
													<p class="desc">
														Supports online and external training courses necessary for work, language, self-development, etc.
													</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</c:if>
					</div>
				</div>

				<div class="content-box">
				<c:if test="${LANG eq 'ko'}">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">복지제도</h3>
							<p>
								일과 삶이 조화로운 행복한 일터가 될 수 있도록, 다양한 복지제도를 운영합니다. 
							</p>
						</div>
						<!-- 2022-10-19//(s) -->
						<!-- 2022-10-26//(s) -->
						<ul class="list-summary v2" data-delighter>
							<li>
								<div class="icon-box mo-display"><i class="ico-system1"></i></div>
								<dl>
									<dt><span class="mo-display">01 </span>자녀 학자금</dt>
									<dd>중학교, 고등학교, 대학교<br> 자녀 학자금 전액 지급</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system1"></i></div>
							</li>
							<li>
								<div class="icon-box mo-display"><i class="ico-system2"></i></div>
								<dl>
									<dt><span class="mo-display">02 </span>선물 지급</dt>
									<dd>생일, 출산, 명절,<br>창립기념일 등 선물 지급</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system2"></i></div>
							</li>
							<li>
								<div class="icon-box mo-display"><i class="ico-system3"></i></div>
								<dl>
									<dt><span class="mo-display">03 </span>경조사 지원</dt>
									<dd>경조금, 경조화환,<br>장례용품 지급 및 휴가 부여</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system3"></i></div>
							</li>
							<li>
								<div class="icon-box mo-display"><i class="ico-system4"></i></div>
								<dl>
									<dt><span class="mo-display">04 </span>포상</dt>
									<dd>장기근속 포상</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system4"></i></div>
							</li>
							<!-- 2022-10-14 수정 -->
							<li>
								<div class="icon-box mo-display"><i class="ico-system5"></i></div>
								<dl>
									<dt><span class="mo-display">05 </span>사내식당</dt>
									<dd>구내식당 운영</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system5"></i></div>
							</li>
							<!-- //2022-10-14 수정 -->
							<li>
								<div class="icon-box mo-display"><i class="ico-system6"></i></div>
								<dl>
									<dt><span class="mo-display">06 </span>사원숙소</dt>
									<dd>공장 및 해외 근무자<br class="pc-display">숙소 제공</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system6"></i></div>
							</li>
							<li>
								<div class="icon-box mo-display"><i class="ico-system7"></i></div>
								<dl>
									<dt><span class="mo-display">07 </span>휴양시설</dt>
									<dd>리솜리조트(계열사 혜택),<br>무주리조트 이용 지원</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system7"></i></div>
							</li>
							<!-- 2022-10-14 수정 -->
							<li>
								<div class="icon-box mo-display"><i class="ico-system8"></i></div>
								<dl>
									<dt><span class="mo-display">08 </span>통근버스</dt>
									<dd>본사 및 공장<br>출퇴근 버스 운행</dd>
								</dl>
								<div class="icon-box pc-display"><i class="ico-system8"></i></div>
							</li>
							<!-- //2022-10-14 -->
						</ul>
						<!-- 2022-10-26//(e) -->
					</div>
				</c:if>
				<c:if test="${LANG eq 'en'}">
					<div class="inner-box">
							<div class="title-wrap4" data-delighter>
								<h3 class="title-type">Welfare System</h3>
								<p>
									Taihan operates various welfare systems to create a happy workplace where work and life are in harmony.
								</p>
							</div>
							<!-- 2022-10-19//(s) -->
							<ul class="list-summary v2" data-delighter><!-- 2022-10-26 -->
								<li>
									<div class="icon-box mo-display"><i class="ico-system1"></i></div>
									<dl>
										<dt><span class="mo-display">01 </span>Children's Tuition Assistance Program</dt>
										<dd>Support for tuitions of middle school, high school, and university children according to company regulations</dd>
									</dl>
									<div class="icon-box pc-display"><i class="ico-system1"></i></div>
								</li>
								<li>
									<div class="icon-box mo-display"><i class="ico-system2"></i></div>
									<dl>
										<dt><span class="mo-display">02 </span>Celebration Gifts</dt>
										<dd>Gifts to celebrate birthdays, childbirth, Korean New Year's day and thanksgiving, the company’s founding anniversary, etc.</dd>
									</dl>
									<div class="icon-box pc-display"><i class="ico-system2"></i></div>
								</li>
								<li>
									<div class="icon-box mo-display"><i class="ico-system3"></i></div>
									<dl>
										<!-- 2022-10-26 텍스트 수정 -->
										<dt><span class="mo-display">03 </span>Congratulations &<br>
										Condolences<br>
										Program</dt>
										<dd>Congratulations &<br>
										Condolences through<br>
										financial supports,<br>
										wreaths, funeral supplies and<br>
										vacations, etc.</dd>
										<!-- //2022-10-26 텍스트 수정 -->
									</dl>
									<div class="icon-box pc-display"><i class="ico-system3"></i></div>
								</li>
								<li>
									<div class="icon-box mo-display"><i class="ico-system4"></i></div>
									<dl>
										<dt><span class="mo-display">04 </span>Reward</dt>
										<dd>Long service awards</dd>
									</dl>
									<div class="icon-box pc-display"><i class="ico-system4"></i></div>
								</li>
								<!-- 2022-10-14 수정 -->
								<li>
									<div class="icon-box mo-display"><i class="ico-system5"></i></div>
									<dl>
										<dt><span class="mo-display">05 </span>Cafeteria</dt>
										<dd>Cafeterias for employees</dd>
									</dl>
									<div class="icon-box pc-display"><i class="ico-system5"></i></div>
								</li>
								<!-- //2022-10-14 수정 -->
								<li>
									<div class="icon-box mo-display"><i class="ico-system6"></i></div>
									<dl>
										<dt><span class="mo-display">06 </span>Lodging</dt>
										<dd>Lodging for local and overseas workers.</dd>
									</dl>
									<div class="icon-box pc-display"><i class="ico-system6"></i></div>
								</li>
								<li>
									<div class="icon-box mo-display"><i class="ico-system7"></i></div>
									<dl>
										<dt><span class="mo-display">07 </span>Leisure Facilities</dt>
										<dd>Resom Hoban Hotel & Resort (benefit as an affiliate), Muju Deogyusan Resort</dd>
									</dl>
									<div class="icon-box pc-display"><i class="ico-system7"></i></div>
								</li>
								<!-- 2022-10-14 수정 -->
								<li>
									<div class="icon-box mo-display"><i class="ico-system8"></i></div>
									<dl>
										<dt><span class="mo-display">08 </span>Commuter Bus</dt>
										<!-- 2022-10-26 텍스트 수정 -->
										<dd>Commuting bus service to the headquarters and Plant</dd>
										<!-- //2022-10-26 텍스트 수정 -->
									</dl>
									<div class="icon-box pc-display"><i class="ico-system8"></i></div>
								</li>
								<!-- //2022-10-14 -->
							</ul>
							<!-- 2022-10-19//(e) -->
						</div>
					</c:if>
				</div>

			</div>

		</section>
		<!--//content-->   
<script src="${CON_STATIC_URL}/asset/js/jquery.kxbdmarquee.js"></script>
<script>
$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 3, '010501');
    },100);
    
   
})

 $(".slider").kxbdMarquee({
		loop:0,
		isEqual:true,
		scrollAmount:1,
		scrollDelay:14//2022-11-09 수치변경
	});
</script>





