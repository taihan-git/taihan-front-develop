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
								<li class="active"><a href="/esg/social"><span>인권경영</span></a></li>
								<li><a href="/esg/safeManage"><span>안전보건경영</span></a></li>
								<li><a href="/esg/socialContribution"><span>사회공헌</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li class="active"><a href="/en/esg/social"><span>Human Rights Principles</span></a></li>
								<li><a href="/en/esg/safeManage"><span>Health & Safety Management</span></a></li>
								<li><a href="/en/esg/socialContribution"><span>Social Contribution</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						
						<div class="img-type" data-delighter>
							<img class="img" src="${CON_STATIC_URL}/asset/images/esg/img_social03.jpg" alt="">
							<p class="text">
							<spring:message code="society.imgTitle" text="임직원을 비롯한 모든 이해관계자의 권리를 존중하며,<br>
								인권경영을 실천하기 위해 노력하고 있습니다."/>
								
							</p>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">인권보호 원칙</h3>
							<p>
								임직원을 비롯한 모든 이해관계자의 인권을 존중하고, 사업 전 과정에서 인권 침해가 발생하지 않도록 최선의 주의 의무를 기울입니다.<br>
								이를 위해 ‘UN세계인권선언(Universal Declaration of Human Rights, UDHR)’,<br>
								‘UN 기업과 인권 이행 지침(Guiding Principles on Business and Human Rights, UNGPs)’, ‘OECD 다국적기업 가이드라인’,<br>
								‘UN 아동권리협약’, ‘국제노동기구 핵심 협약’ 등 노동ᆞ인권 관련 국제기구 및 단체의 기준과 규범을 엄격히 준수합니다.
							</p>
						</div>
						<ul class="list-detail3" data-delighter>
							<li>
								<strong>첫째,</strong>
								<p>대한전선은 모든 구성원의 인간 존엄과 가치를 존중하며, 일하기 좋은 근로환경을 제공하기 위해 최선의 노력을 다한다.</p>
							</li>
							<li>
								<strong>둘째,</strong>
								<p>대한전선은 국제기구의 인권보호 및 노동기준을 존중하며, 성별ᆞ인종ᆞ국적ᆞ종교 등의 사유로 차별하지 않는다.</p>
							</li>
							<li>
								<strong>셋째,</strong>
								<p>대한전선은 국가와 사회의 가치관을 존중하고 제반 법규를 준수하며 건전한 기업활동을 통해 국가발전에 기여할 수 있도록 노력한다.</p>
							</li>
						</ul>
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Human Rights Principles
							</h3>
							<p>
								Taihan exercises the utmost due diligence to ensure that human rights of all
								stakeholders including employees are respected, and to prevent human rights violation
								throughout the business process. Accordingly, Taihan strictly abide by the standards and
								rules of the labor and human rights-related international organizations, such as the
								Universal Declaration of Human Rights (UDHR) of the UN, the UN Guiding Principles on
								Business and Human Rights (UNGPs),” the OECD Guidelines for Multinational Enterprises,
								the Convention of the Rights of the Child of the UN, and the ILO (International Labor
								Organization) Fundamental Conventions.
							</p>
						</div>
						<ul class="list-detail3" data-delighter>
							<li>
								<strong>First,</strong>
								<p>Taihan respects the dignity and value of all its members, and dedicates the utmost
									effort to providing a good working environment.</p>
							</li>
							<li>
								<strong>Second,</strong>
								<p>Taihan respects human rights protection and labor standards of international
									organizations, and prohibits discrimination by reason of gender, race, nationality,
									and religion, etc.</p>
							</li>
							<li>
								<strong>Third,</strong>
								<p>Taihan complies with labor-related laws and regulations of each country, and applies
									this policy to all suppliers and investors.</p>
							</li>
						</ul>
						</c:if>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">운영지침</h3>
							<p>
								모두의 자유와 인권을 존중하며, 어떠한 차별도 허용하지 않습니다.<br>
								아울러 더욱 책임 있는 경영활동을 수행하기 위해 인권보호 운영지침을 마련하고 엄격히 관리합니다.
							</p>
						</div>
						
						<ul class="list-detail8" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">금지</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>강제노동 금지</li>
										<li>아동노동 금지</li>
										<li>차별 금지</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">보장</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>근로시간 준수</li>
										<li>최저임금 보장</li>
										<li>결사의 자유</li>
										<li>안전한 사업 환경조성</li>
									</ul>
								</div>
							</li>
						</ul>
						</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Operating Guidelines</h3>
							<p>
								Taihan respects everyone's freedom and human rights and does not tolerate any
								discrimination.
								In order to deploy more responsible management activities, Taihan has established human
								rights protection operating guidelines and administers them strictly.
							</p>
						</div>

						<ul class="list-detail8" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">Combat</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Forced labor</li>
										<li>Child labor</li>
										<li>Discrimination</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Uphold</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Compliance with working hours</li>
										<li>Guarantee of minimum wage</li>
										<li>Freedom of association</li>
										<li>Creation of safe business environment</li>
									</ul>
								</div>
							</li>
						</ul>
						</c:if>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">인권 상담 절차</h3>
							<p>
								대한전선은 모든 이해관계자의 인권 보호를 위해 홈페이지 사이버 신문고 및 사업장 내 고충 처리실, 익명 건의함 등 다양한 채널을 운영하고 있습니다.
							</p>
						</div>
						<ul class="list-detail5" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">상담 접수</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>홈페이지 사이버 신문고</li>
										<li>사업장 고충처리실, 익명 건의함</li>
										<li>온라인 제보 전용 이메일</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">상담 확인 및 검토</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>전담 부서 상담 및 내용 검토</li>
										<li>조치 방안 검토</li>
										<li>제보자 보호 및 익명 보장</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">결과 전달 및 조치</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>검토 결과 전달</li>
										<li>사안에 따른 후속 조치</li>
										<li>재발 방지 교육 실시</li>
									</ul>
								</div>
							</li>
						</ul>
						</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Human Rights Counseling</h3>
							<p>
								For protection of human rights of all stakeholders, Taihan operates a number of channels
								including online report center on the website, grievance centers in worksites, and
								anonymous report center.
							</p>
						</div>
						<ul class="list-detail5" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">Trouble registration</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Homepage: Hot Line</li>
										<li>On site: Adjustment of grievance and an anonymous suggestion box</li>
										<li>Online: Tip-off dedicated email</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<!-- 2022-11-25 수정 -->
									<strong class="title">Check and review</strong>
									<!-- //2022-11-25 수정 -->
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Dedicated department's consultation and case review</li>
										<li>Action plan review</li>
										<li>Whistleblower protection and guarantee of anonymity</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Follow-up actions</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Review result is sent.</li>
										<li>Follow-up actions according to the case</li>
										<li>Training to prevent recurrence</li>
									</ul>
								</div>
							</li>
						</ul>
						</c:if>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
					<c:if test="${LANG eq 'ko'}">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">주요활동</h3>
							<!-- 10-17 수정 <p>
								대한전선은 모든 이해관계자의 인권 보호를 위해 홈페이지 사이버 신문고 및 사업장 내
								고충 처리실, 익명 건의함 등 다양한 채널을 운영하고 있습니다.
							</p> -->
						</div>
						<ul class="list-detail6" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">가족친화기업 인증</strong>
									<%--<a href="/resources/files/taihan_friendlycertificate.pdf" class="btn"  target="_blank">인증서 바로보기<i class="ico-arr"></i></a>--%>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>여성가족부 인증 가족친화기업
											<a href="/resources/files/taihan_friendlycertificate.pdf" class="btn"  target="_blank">인증서 바로보기<i class="ico-arr"></i></a>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">인권 보호 교육 실시</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>
											직장내 괴롭힘 방지 교육
											<ul class="list-type v4">
												<li>직장상사의 상습적인 부당행위 지시금지</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">내부신고제도 교육 실시</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>
											제보 대상 유형 교육
											<ul class="list-type v4">
												<li>인권침해 행위, 제보자 보호, 제보자 신분보장 등</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">임직원 윤리서약서 제출</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>인권보호 내용을 포함한 윤리규정 준수 서약</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">노동환경 정기점검</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>당진공장 환경∙안전∙소방 점검</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">인재육성</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>
											인재육성 Master-plan 수립 및 온라인 교육 지원
											<ul class="list-type v4">
												<li>역량 교육, 직무 교육, 외국어 교육 등</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">퇴직자 지원제도</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>퇴직자 대상 촉탁직 전환프로그램 운영</li>
									</ul>
								</div>
							</li>
						</ul>
						</c:if>
					<c:if test="${LANG eq 'en'}">
						<div class="title-wrap4" data-delighter>
							<!-- 수정 -->
							<h3 class="title-type">Key Activities
							</h3>
							<!-- //수정 -->
						</div>
						<ul class="list-detail6" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">Family-friendly company certification
									</strong>
									<!-- 2022-11-02 수정 -->
									<!-- <a href="#" class="btn">Open Certificate
										<i class="ico-arr"></i></a> -->
										<!-- //2022-11-02 수정 -->
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Family-friendly company certified by the Ministry of Gender Equality and
											Family
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Human rights protection training</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>
											Workplace harassment prevention training
											<ul class="list-type v4">
												<li>Prohibition of superiors’ habitual unfair instructions</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Training on internal report system</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>
											Training on report types
											<ul class="list-type v4">
												<li>Prevention of human rights violation, whistleblower protection,
													protection of whistleblower identification, etc.</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Employees’ ethics pledge</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Pledge to comply with Ethical Regulations containing details on human rights
											protection</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Regular inspection of labor environment</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Environmental, safety, and fire inspection in Dangjin Plant</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Talent fostering</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>
											Talent fostering masterplan development, and online educational support
											<ul class="list-type v4">
												<li>Competency building training, on-the-job training, foreign language
													training, etc.</li>
											</ul>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Retiree support system</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Operating program for reemployment of retirees in temporary positions</li>
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
            setmenu( 3, '030301');
        },100);
    })
</script>





