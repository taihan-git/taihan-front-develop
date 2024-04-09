<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

		    
<!--content-->
		<section id="content" class="sub-wrap esg-ethics">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_05.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="ethics.title" text="윤리경영"/></h2>
				</div>
				<c:if test="${LANG eq 'ko' }">
				<div class="btn-box pc-display"><a href="/esg/inquireRegForm?gubun=em" class="btn-type btn-s">윤리경영 제보하기<i class="ico-arr v2"></i></a></div>
				</c:if>
			</div>

			<%-- GNB(S)--%>
		    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
		    <%-- GNB(E) --%> 

			<div id="container" class="content-wrap is-last-bg">

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap v2" data-delighter>
							<strong class="title-type">
							<c:if test="${LANG eq 'ko' }">
								기업윤리 실천을 통해 <br class="mo-br">다양한 이해관계자의 <br class="mo-br">가치를 제고하며,<br>
								투명하고 신뢰받는 <br class="mo-br">기업문화를 추구합니다.
							</c:if>
							<c:if test="${LANG eq 'en' }">
								By practicing corporate ethics, Taihan pursues to enhance shareholder value, and create
								a transparent and reliable corporate culture.
							</c:if>
							</strong>
							<c:if test="${LANG eq 'ko' }">
							<div class="side-box btn-box mo-display"><a href="/esg/inquireRegForm?gubun=em" class="btn-type btn-s v3">윤리경영 제보하기<i class="ico-arr v2"></i></a></div>
							</c:if>						
						</div>

						<c:if test="${LANG eq 'ko' }">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/ethics"><span>윤리규범</span></a></li>
								<li class="active"><a href="/majorActivities"><span>운영현황</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en' }">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/en/ethics"><span>Code of Ethics</span></a></li>
								<li class="active"><a href="/en/majorActivities"><span>Operational Status</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>

						<div class="title-wrap4" data-delighter>
						<c:if test="${LANG eq 'ko' }">
							<h3 class="title-type">3C 운영체계</h3>
							<p>
							
								윤리경영에 대한 전 임직원의 관심을 확대하고 윤리경영을 생활화 하기 위해 구체적으로 성문화된 구성원의 행동 지침을 수립하였습니다.<br>
								명확한 행동 기준을 제시하고 원리와 원칙에 위배되는 상황이 발생하지 않도록 관리하며 올바른 기업 문화를 만들어갑니다.
							</p>
						</c:if>
						<c:if test="${LANG eq 'en' }">
							<h3 class="title-type">3C Operation System
							</h3>
							<p>
								Taihan established the Code of Conduct for employees that is codified in detail to
								expand employees’ interest in ethical management and promote the practice of ethical
								management. The Code of Conduct specifies clear standards of conduct, stipulates
								management to prevent violation of the principles and rules, and therefore contributes
								to creating a healthy corporate culture.
							</p>
						</c:if>
						</div>
						<c:if test="${LANG eq 'ko' }">
						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_3c_pc.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_3c_mo.png" alt="" class="mo-display">
							<div class="hidden">
								<strong>준법 경영</strong>
								<strong>윤리 경영</strong>
								<ul>
									<li>
										<strong>경제적 책임</strong>
										<p>이윤 창출을 통해
											기업의 영속성 유지</p>
									</li>
									<li>
										<strong>법적 책임</strong>
										<p>사회가 법을 통해 만들어 놓은
											Rule속에서 기업경영
											활동수행</p>
									</li>
									<li>
										<strong>윤리적 책임</strong>
										<p>법적으로 강요되지 않으나
											사회통념에 의해 형성된
											윤리적 경영활동</p>
									</li>
									<li>
										<strong>자선적 책임</strong>
										<p>경영활동과 직접 관련이 없는
											문화활동, 기부, 자원봉사
											등의 활동 수행</p>
									</li>
								</ul>
							</div>
						</div>
						</c:if>
						<c:if test="${LANG eq 'en' }">
							<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_3c_pc_en.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_3c_mo_en.png" alt="" class="mo-display">
							<div class="hidden">
								<ul>
									<li>
										<strong>Code of Ethics(Code)</strong>
										<p>Establishing the codified Code of Conduct for employees
											- Ethics Charter, Ethical Guidelines
										</p>
									</li>
									<li>
										<strong>Ethical Management System Operation(Compliance)</strong>
										<p>Operating ethical management organization and system
											- Audit Team, online report system, internal audit</p>
									</li>
									<li>
										<strong>Consensus Building(Consensus)</strong>
										<p>Forming consensus among employees through systematic training
											- CEO message, employees’ ethics pledge, regular ethics training</p>
									</li>
								</ul>
							</div>
						</div>
						</c:if>


					</div>
				</div>

				<c:if test="${LANG eq 'ko' }">
				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">주요 활동</h3>
							<!-- 10-17 수정 
							<p>
								대한전선은 ‘사람 중심의 문화, 고객가치, 미래지향’의 핵심가치를 바탕으로 고객, 주주, 국가사회에 공헌하는 존경받는 기업을 지향한다.<br>
								이를 위하여 전 임직원이 정도 경영을 실천하고 지속적인 성장과 발전을 바탕으로 ‘더 나은 미래로’ 나아갈 것을 도모한다.<br>
								이에 우리가 지켜야 할 올바른 윤리적 판단과 행동의 기준으로 다음과 같이 윤리헌장을 제정하고 윤리경영의 실천을 다짐한다.
							</p> -->
						</div>

						<ul class="list-detail">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">반부패 프로그램 운영</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<!-- 2022-11-25 수정 -->
										<li>국제경제협력개발기구(OECD)의 ‘국제 상거래 뇌물방지 협약’ 및 국내 ‘부정 청탁 및 금품 등
										수수의 금지에 대한 법률’ 등 부패방지 관련 법률 준수 의무를 윤리규정에 명시</li>
										<li>청탁금지법관련 세부기준∙가이드라인 제정</li>
										<li>타사 위반 사례를 수집하여 반부패 정기교육 실시</li>
										<!-- //2022-11-25 수정 -->
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">RISK 예방</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>RISK 발생 가능성이 높은 업무 또는 부서 선정 및 내부감사</li>
										<li>감사 권고사항 이행여부 정기 모니터링</li>
										<li>다양한 채널을 통한 내부소통으로 불합리하거나 비효율적인 업무 개선</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">윤리경영 교육∙홍보</strong>
								</div>
								<div class="desc-box">
									<div class="box">
										<strong class="title-circle">임직원</strong>
										<ul class="list-type v4">
											<li>CEO 윤리경영 레터 발송</li>
											<li>정기 온라인 윤리교육 실시</li>
											<li>윤리경영 소식지 발간</li>
											<li>윤리경영 서약서 서명</li>
										</ul>
									</div>
									<div class="box">
										<strong class="title-circle">이해<br>관계자</strong>
										<ul class="list-type v4">
											<li>협력업체 윤리경영 협조문 발송</li>
											<li>윤리경영 실천 서약서 서명</li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				</c:if>
				
				<c:if test="${LANG eq 'en' }">
				<div class="content-box bg">
					<div class="inner-box">
						<!-- 수정 -->
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Key Activities</h3>
						</div>
						<!-- //수정 -->
						<ul class="list-detail">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Anti-corruption Program</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>Obligation to comply with the anti-corruption related statutes, such as the
											Convention on Combating Bribery of Foreign Public Officials in International
											Business Transactions of the Organization for Economic Cooperation and
											Development (OECD) and the Improper Solicitation and Graft Act of the
											Republic of Korea, specified in the Ethical Guidelines</li>
										<li>Detailed criteria and guidelines established in relation to the Improper
											Solicitation and Graft Act</li>
										<li>Regular anti-corruption training provided through collection of violation
											cases in other companies, etc.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Risk Prevention</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>Internal audit on operations or divisions with high likelihood of risk
											occurrence</li>
										<li>Regular monitoring on implementation of recommendations derived from audit
										</li>
										<li>Improvement on irrational or inefficient operations through internal
											communication using various channels</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Ethical Management
										Training and Promotion
									</strong>
								</div>
								<div class="desc-box">
									<div class="box">
										<strong class="title-circle">Employees</strong>
										<ul class="list-type v4">
											<li>Sending CEO ethical management letter</li>
											<li>Conducting regular online ethics training</li>
											<li>Publishing ethical management newsletter</li>
											<li>Signing the ethical management pledge</li>
										</ul>
									</div>
									<div class="box">
										<strong class="title-circle">Stakeholders</strong>
										<ul class="list-type v4">
											<li>Sending a request for cooperation in ethical management to suppliers
											</li>
											<li>Signing a consent form to fair and transparent transaction</li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				</c:if>
			</div>
			<c:if test="${LANG eq 'ko' }">
			<div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/info_esg_05.jpg)">
				<div class="info-title">
					<span>대한전선 경영활동 및 임직원 업무 수행의 기준이 되는<br></span>
					<span>윤리 규정을 확인해보세요.</span>
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/Code_of_Ethics_ko_2024.docx" target="_blank" class="btn-type btn-m w-type">윤리규정 바로보기<i class="ico-arr v2"></i></a>
					<a href="/resources/files/Ethics Pledge_ko_2024.docx" target="_blank" class="btn-type btn-m w-type">윤리서약서 바로보기<i class="ico-arr v2"></i></a>
				</div>
			</div>
			</c:if>
			<c:if test="${LANG eq 'en' }">
			<div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/info_esg_05.jpg)">
				<div class="info-title">
					<span>Please check out the Taihan’s Ethical Guidelines serving as the criteria <br>
						for the company’s
						management activities and employees’ performance.
					</span>
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/Code_of_Ethics_en_2024.docx" target="_blank" class="btn-type btn-m w-type" >View Code of Ethics<i class="ico-arr v2"></i></a>
					<a href="/resources/files/Ethics Pledge_en_2024.docx" target="_blank" class="btn-type btn-m w-type" >View Ethics Pledge<i class="ico-arr v2"></i></a>
				</div>
			</div>
			</c:if>
		</section>
		<!--//content-->		    

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '030502');
        },100);
    })
</script>





