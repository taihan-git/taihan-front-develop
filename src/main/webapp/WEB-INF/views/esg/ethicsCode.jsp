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

			<div id="container" class="content-wrap">

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
								<li class="active"><a href="/ethics"><span>윤리규범</span></a></li>
								<li><a href="/majorActivities"><span>운영현황</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en' }">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li class="active"><a href="/en/ethics"><span>Code of Ethics</span></a></li>
								<li><a href="/en/majorActivities"><span>Operational Status</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						
						<c:if test="${LANG eq 'ko' }">

						<div class="cp-wrap" data-delighter>
							<div class="text-box">
								<strong class="title">컴플라이언스 강화 메시지</strong>
								<p class="text">안녕하십니까. 대한전선 대표이사입니다.</p>
								<p class="text2">
									컴플라이언스는 대한전선의 우선 순위이자 핵심 목표입니다.<br>
									세계 속에서 더욱 신뢰받고 인정받기 위해 모든 구성원의 역할이 중요하다는 점을<br>
									기억해주시고 함께 실천해 주시기를 당부드립니다.
								</p>
								<p class="sign">대한전선 대표이사</p>
							</div>
							<div class="btn-box"><a href="${CON_STATIC_URL}/files/Taihan_compliance.pdf" target="_blank" class="btn-type btn-m">컴플라이언스 강화 메시지 전문보기<i class="ico-more2"></i></a></div>
						</div>

						<p class="text-type v2" data-delighter>
							대한전선은 윤리경영을 기업경영의 근간으로 삼고 경제적, 법적 책임의 준수를 넘어 윤리적 책임을 수행하기 위해 최선을 다하고 있습니다.<br>
							어떠한 상황에서도 부당한 영향력을 행사하지 않으며, 공존공영의 원칙 아래 모든 이해관계자의 신뢰와 사랑을 받는 기업이 되겠습니다.
						</p>

						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_ethics_pc.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_ethics_mo.png" alt="" class="mo-display">
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
							<!-- 2022-11-02 수정 -->
						<p class="text-type v2" data-delighter>
							Having set ethical management as the basis of corporate management,<br>
							Taihan dedicates the utmost effort to fulfilling not only legal liabilities, but also ethical responsibilities.<br>
							Taihan is committed to not exercising unfair influence under any circumstances,<br>
							and will strive to become a company that is trusted and loved by all stakeholders under the principle of prosperous coexistence.
						</p>
						<!-- //2022-11-02 수정 -->

						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_ethics_pc_en.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_ethics_mo_en.png" alt="" class="mo-display">
							<div class="hidden">
								<strong>Compliance Management</strong>
								<strong>Ethical Management</strong>
								<ul>
									<li>
										<strong>Economic Responsibility</strong>
										<p>Maintain corporate persistence through profit generation</p>
									</li>
									<li>
										<strong>Legal Liability</strong>
										<p>Perform corporate management activities by following the rules set out by the
											society through law</p>
									</li>
									<li>
										<strong>Ethical Responsibility </strong>
										<p>Perform physical management activities that are not forced by law, but
											required by social norm</p>
									</li>
									<li>
										<strong>Philanthropic Responsibility</strong>
										<p>Perform cultural, donation, and volunteer activities, etc. that are not
											directly related to corporate management</p>
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
							<h3 class="title-type">윤리헌장</h3>
							<p>
								대한전선은 ‘사람 중심의 문화, 고객가치, 미래지향’의 핵심가치를 바탕으로 고객, 주주, 국가사회에 공헌하는 존경받는 기업을 지향한다.<br>
								이를 위하여 전 임직원이 정도 경영을 실천하고 지속적인 성장과 발전을 바탕으로 ‘더 나은 미래로’ 나아갈 것을 도모한다.<br>
								이에 우리가 지켜야 할 올바른 윤리적 판단과 행동의 기준으로 다음과 같이 윤리헌장을 제정하고 윤리경영의 실천을 다짐한다.
							</p>
						</div>

						<ul class="list-detail3" data-delighter>
							<li>
								<strong>첫째,</strong>
								<p>우리는 고객만족을 최우선의 가치로 삼고, 고객의 요구와 기대에 부응하여 고객의 가치 창출을 위해 힘쓰며,<br>
									효율적 경영을 통하여 주주의 수익이 극대화될 수 있도록 노력한다.</p>
							</li>
							<li>
								<strong>둘째,</strong>
								<p>우리는 모든 협력회사에 공정한 기회를 부여하고 투명한 거래풍토를 조성하여 상호 대등한 입장에서<br>
									상생의 관계를 유지할 수 있도록 노력한다.</p>
							</li>
							<li>
								<strong>셋째,</strong>
								<p>우리는 국가와 사회의 가치관을 존중하고 제반 법규를 준수하며 건전한 기업활동을 통해국가발전에 기여할 수 있도록 노력한다.</p>
							</li>
							<li>
								<strong>넷째,</strong>
								<p>우리는 올바른 윤리적 가치관을 바탕으로 회사의 규정을 준수하고 공정한 자세로 업무에 임하여 건전한 조직 문화를 조성하기위해 노력한다.</p>
							</li>
						</ul>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">추진현황</h3>
						</div>
						<div class="history-wrap v2" data-delighter>
							<ul class="list-history">
								<li>
									<div class="icon-box"><i class="ico-ethics01"></i></div>
									<span class="date">2011.03</span>
									<strong class="desc">윤리헌장 제정 및 선포</strong>
								</li>
								<li>
									<div class="icon-box"><i class="ico-ethics02"></i></div>
									<span class="date">2013.08</span>
									<strong class="desc">윤리규정 제정</strong>
								</li>
								<li>
									<div class="icon-box"><i class="ico-ethics03"></i></div>
									<span class="date">2014.02</span>
									<strong class="desc">윤리경영 온라인 제보 개설</strong>
								</li>
								<li>
									<div class="icon-box"><i class="ico-ethics04"></i></div>
									<span class="date">2017.04</span>
									<strong class="desc">新 윤리헌장 선포식 진행<br>
										윤리경영 가이드 리플렛 배포
									</strong>
								</li>
							</ul>

						</div>

					</div>
				</div>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Ethics Charter</h3>
							<p>
								Taihan aims to become a respected company that contributes to customers, shareholders,
								the society, and the nation based on the core values to promote “people-centric culture,
								customer value, and future-oriented management.” Thereupon, all employees of Taihan will
								practice Jeong-Do (righteousness) management, and promote advancement “to a better
								future” based on sustainable growth and development. To this end, the Ethics Charter is
								established as of the following as a yardstick for ethical judgment and behaviors, and a
								basis for the employees’ pledge for ethical management:
							</p>
						</div>

						<ul class="list-detail3" data-delighter>
							<li>
								<strong>First,</strong>
								<p>Taihan will place the highest priority on achieving customer satisfaction, strive to
									create customer value by meeting customers’ requirements and expectations, and
									dedicate effort to maximizing shareholders’ yield through efficient management.
								</p>
							</li>
							<li>
								<strong>Second,</strong>
								<p>Taihan will strive to maintain a relationship of shared growth with all suppliers on
									an equal footing by providing them with fair opportunities, and creating a culture
									of transparent transaction.</p>
							</li>
							<li>
								<strong>Third,</strong>
								<p>Taihan will respect the values of the country and society, comply with various laws
									and regulations, and strive to contribute to national development through sound
									corporate activities.</p>
							</li>
							<!-- 2022-10-20 문구 수정 -->
							<li>
								<strong>Fourth,</strong>
								<p>Taihan will comply with the company’s rules based on ethical values, perform our
									duties in a fair attitude, and strive to create a sound organizational culture.</p>
							</li>
							<!-- //2022-10-20 문구 수정 -->
						</ul>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Ethical Management</h3>
						</div>
						<div class="history-wrap v2" data-delighter>
							<ul class="list-history">
								<li>
									<div class="icon-box"><i class="ico-ethics01"></i></div>
									<span class="date">Mar. 2011</span>
									<!-- 2022-11-02 수정 -->
									<strong class="desc">Established and declared <br>Ethics Charter</strong>
									<!-- //2022-11-02 수정 -->
								</li>
								<li>
									<div class="icon-box"><i class="ico-ethics02"></i></div>
									<span class="date">Aug. 2013</span>
									<strong class="desc">Established Ethical Guidelines</strong>
								</li>
								<li>
									<div class="icon-box"><i class="ico-ethics03"></i></div>
									<span class="date">Feb. 2014</span>
									<strong class="desc">Opened online ethical management report center</strong>
								</li>
								<li>
									<div class="icon-box"><i class="ico-ethics04"></i></div>
									<span class="date">Apr. 2017</span>
									<!-- 2022-10-24 텍스트 수정 -->
									<strong class="desc">Held the new Ethics Charter declaration ceremony<br>
										Distributed the leaflet of ethical management guidelines
									</strong>
									<!-- //2022-10-24 텍스트 수정 -->
								</li>
							</ul>

						</div>

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
					<a href="/resources/files/Code_of_Ethics_ko_2024.pdf" target="_blank" class="btn-type btn-m w-type">윤리규정 바로보기<i class="ico-arr v2"></i></a>
					<a href="/resources/files/Ethics Pledge_ko_2024.pdf" target="_blank" class="btn-type btn-m w-type">윤리서약서 바로보기<i class="ico-arr v2"></i></a>
				</div>
			</div>
			</c:if>
				<c:if test="${LANG eq 'en' }">
			<div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/info_esg_05.jpg)">
				<div class="info-title">
					<!-- 2022-11-02 수정 -->
					<span>Please check out the Taihan’s Ethical Guidelines serving as the criteria <br>
						for the company’s
						management activities and employees’ performance.
					</span>
					<!-- //2022-11-02 수정 -->
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/Code_of_Ethics_en_2024.pdf" target="_blank" class="btn-type btn-m w-type" >View Code of Ethics<i class="ico-arr v2"></i></a>
					<a href="/resources/files/Ethics Pledge_en_2024.pdf" target="_blank" class="btn-type btn-m w-type" >View Ethics Pledge<i class="ico-arr v2"></i></a>
				</div>
			</div>
			</c:if>

		</section>
		<!--//content-->	    

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '030501');
        },100);
    })
</script>





