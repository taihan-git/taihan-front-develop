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
								<li class="active"><a href="/esg/safeManage"><span>안전보건경영</span></a></li>
								<li><a href="/esg/socialContribution"><span>사회공헌</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/en/esg/social"><span>Human Rights Principles</span></a></li>
								<li class="active"><a href="/en/esg/safeManage"><span>Health & Safety Management</span></a></li>
								<li><a href="/en/esg/socialContribution"><span>Social Contribution</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>

						<div class="img-type" data-delighter>
							<img class="img" src="${CON_STATIC_URL}/asset/images/esg/img_social02.jpg" alt="">
							<!-- 2022-11-15 수정 -->
							<p class="text">
							<c:if test="${LANG eq 'ko'}">
								대한전선은 안전 최우선의 일터 확립을 통해,<br>
								모두가 건강하게 근무할 수 있도록 노력합니다.
							</c:if>
							<c:if test="${LANG eq 'en'}">
								Taihan is committed to protecting health of all people<br>
								by creating worksites where the highest priority is placed on safety
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
							<h3 class="title-type">안전보건 방침</h3>
							<p>
								대한전선은 임직원의 자율적이고 체계화된 안전 활동을 통해 안전하고 쾌적한 근무환경을 조성하여 재해를 예방하고 삶의 질 향상을 추구합니다.<br>
								생산의 모든 과정에서 위험성 평가, 안전점검, 비상사태 대응, 교육훈련 등 안전보건 사항을 철저하게 관리하며,<br>
								안전보건경영시스템의 국제표준 규격인 ISO45001을 인증 획득하는 등 높은 수준의 안전보건경영체계를 유지하고 있습니다.
							</p>
						</div>

						<div class="content-btn bg" data-delighter>
							<a href="/resources/files/safeManage.pdf" class="btn-type v3 btn-m" target="_blank">
								안전보건경영방침<i class="ico-arr"></i>
							</a>
						</div>

						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_policy_pc.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_policy_mo.png" alt="" class="mo-display">
							<div class="hidden">
								<strong>안전보건
									경영시스템</strong>
								<ul>
									<li>안전보건
										관리방침
										운영∙개선</li>
									<li>목표 및
										계획 수립</li>
									<li>실시 및
										운영</li>
									<li>이행 여부
										평가</li>
									<li>경영진
										검토</li>
								</ul>
							</div>
						</div>
					</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Health and Safety Policy</h3>
							<p>
								Taihan promotes to prevent accidents and improve employees’ quality of life by creating
								a safe and pleasant working environment based on employees’ autonomous and systemized
								safety activities. Throughout the production process, Taihan strictly manages health and
								safety through risk assessment, safety inspection, emergency response, and training,
								etc. Taihan also maintains a high-quality health and safety management system, which is
								demonstrated by winning the ISO 45001 certification, an international standard for
								health and safety management system.
							</p>
						</div>

						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_policy_pc_en.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_policy_mo_en.png" alt="" class="mo-display">
							<div class="hidden">
								<strong>Health and safety management system</strong>
								<ul>
									<li>Health and safety management policy operation/improvement</li>
									<li>Development of goals and plan</li>
									<li>Implementation and operation</li>
									<li>Assessment of implementation</li>
									<li>Review by senior management</li>
								</ul>
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
						</div>
						<ul class="list-detail6" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">안전보건점검</strong><!-- 수정 -->
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<!-- 2022-11-09 수정 -->
										<li>일일 안전점검</li>
										<li>위험 기계기구 자체 안전검사 및 외부전문기관 안전검사</li>
										<li>위험요소 사전 발굴 및 개선</li>
										<li>위험성 평가</li>
										<!-- //2022-11-09 수정 -->
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">안전보건교육</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>작업 안전수칙 정기교육</li>
										<li>고위험 기계기구 근로자 특별안전교육</li>
										<li>환경안전보건회보 월간 발행</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">공생 협력 프로그램</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>협력업체 위험성 평가 및 기술지원</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">임직원 건강증진</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>임직원 종합검진</li>
										<li>유해요인 정기조사</li>
										<li>작업환경측정</li><!-- 2022-11-09 수정 -->
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">비상대응능력 강화</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>비상사태 발생 시 피해 최소화를 위한 정기 훈련</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">기타</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>ISO45001(안전보건경영시스템) 인증 관리</li>
										<li>SCL(Safety Culture Ladder) 인증 관리</li>
										<li>공정안전관리 PSM(Process Safety Management) 운영</li>
									</ul>
								</div>
							</li>
						</ul>
					</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Key Activities</h3>
						</div>
						<ul class="list-detail6" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">Health and safety inspection
									</strong><!-- 수정 -->
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>Daily safety inspection</li>
										<li>Internal safety inspection/specialized external safety inspection on
											high-risk machinery and equipment</li>
										<li>Detection of hazard in advance and improvement</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Health and safety training
									</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>Regular training on safety rules for operation</li>
										<li>Special safety training for workers handling high-risk machinery and
											equipment</li>
										<li>Monthly publication of safety, health, and environment bulletin</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Cooperative programs for shared growth</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>Risk assessment of and technical support to suppliers</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Employee health promotion</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>Employees’ general health checkup</li>
										<li>Regular investigation for hazardous factors</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Strengthening emergency response competency</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>Regular training to minimize damage at emergency</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Other</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type">
										<li>ISO45001 (health and safety management system) certification management</li>
										<li>SCL (Safety Culture Ladder) certification management</li>
										<li>Process Safety Management (PSM) system operation</li>
									</ul>
								</div>
							</li>
						</ul>
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
            setmenu( 3, '030302');
        },100);
    })
</script>





