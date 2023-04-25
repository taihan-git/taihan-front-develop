<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<!--content-->
		<section id="content" class="sub-wrap esg-management">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_01.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="manage.title" text="ESG 경영"/></h2>
				</div>
			</div>

			<%-- GNB(S)--%>
		    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
		    <%-- GNB(E) --%>

			<div id="container" class="content-wrap">
				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap v2" data-delighter>
							<c:if test="${LANG eq 'ko' }">
							<strong class="title-type">
								지속 가능한 <br class="mo-br">미래를 향한 길,<br>
								대한전선이 열어갑니다.
							</strong>
							<p>
								대한전선은 기업의 사회적 가치 추구가<br>
								회사와 우리 사회 전체의 지속 가능한 성장을 위해 필요하다는 것을 명확히 인지하고 있습니다.<br>
								경영 전반에 걸쳐 ESG에 기반한 정책과 전략을 수립 및 운영하고,<br>
								사회적 요구 이상의 철저한 관리와 투명한 정보 공개를 시행함으로써<br class="pc-br">
								건강한 미래 사회 창조에 기여하겠습니다.
							</p>
							</c:if>
							<c:if test="${LANG eq 'en' }">
							<strong class="title-type">
								Taihan is paving the way <br>
								for building a sustainable future.
							</strong>
							<p>
								Taihan clearly understands that a company’s pursuit of social value is essential for
								sustainable growth of not only the company itself, but also the society as a whole.
								In addition, Taihan will contribute to creating a healthy society and future by
								establishing and operating ESG policies and strategies, administering strict management
								that goes beyond the social requirement, and transparently disclosing the related
								information.
							</p>
							</c:if>
						</div>
					</div>
				</div>

				<div class="full-text">
					<strong data-delighter>Together</strong>
					<strong data-delighter>for Tomorrow</strong>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type"><spring:message code="manage.subTitle" text="ESG 경영전략"/></h3>
							<p>
								<c:if test="${LANG eq 'ko' }">
								환경(E), 사회(S), 지배구조(G) 각 영역의 전략 방향과 목표 등을 담은 ESG 경영전략을 수립하고,<br>
								ESG 경영을 회사의 비전 달성을 위한 최우선 과제로 실천하고 있습니다.<br>
								미래 세대를 위해 환경 친화 경영을 고도화하고, 구성원ᆞ고객ᆞ협력사ᆞ지역 사회 등<br>
								모든 이해관계자와 동반성장을 할 수 있도록 사회적 책임을 강화하며,<br>
								공정하고 투명한 경영 환경을 조성함으로써 지속 가능한 성장동력을 확보해 나가겠습니다.<br>
								</c:if>
								<c:if test="${LANG eq 'en' }">
								Having set ESG management as a task of the highest priority for achieving the corporate
								vision, Taihan established the ESG management strategy specifying strategic directions
								and goals, etc. for each of the environmental (E), social (S), and governance (G) areas.
								Taihan will secure a sustainable growth engine by improving eco-friendly management for
								the future generations, strengthening our social responsibilities to achieve shared
								growth with all stakeholders including employees, customers, suppliers, and local
								communities, and creating a fair and transparent management environment.
								</c:if>
								
							</p>
						</div>

						<div class="content-img" data-delighter>
							<c:if test="${LANG eq 'ko' }">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management01_pc.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management01_mo.png" alt="" class="mo-display">
							<div class="hidden">
								<p>더 나은 미래로 We connect
									the future</p>
								<strong>親환경 & 先책임 경영, 투명한 지배구조로
									지속가능한 성장 동력 확보</strong>
								<dl>
									<dt>환경</dt>
									<dd>
										<strong>환경 친화 경영 고도화</strong>
										<ul>
											<li>환경 경영 정책 고도화</li>
											<li>환경 에너지 관리 효율화</li>
											<li>환경 성과 확대</li>
											<li>지역 사회 환경 보호</li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dt>사회적 책임</dt>
									<dd>
										<strong>윤리&공헌 경영 확대</strong>
										<ul>
											<li>인권 · 노동 중시 경영</li>
											<li>안전 보건 철저</li>
											<li>윤리 준법 강화</li>
											<li>사회공헌 활성화</li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dt>지배구조</dt>
									<dd>
										<strong>기업지배구조 투명화</strong>
										<ul>
											<li>기업지배구조 고도화</li>
											<li>주주 권익 확대</li>
											<li>ESG 경영 안착</li>
										</ul>
									</dd>
								</dl>
								<p>급속한 환경 변화에 선제적으로 대응하고 미래 성장을 대비하는 기업경영의 필수 요소</p>
							</c:if>
							<c:if test="${LANG eq 'en' }">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management01_pc_en.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management01_mo_en.png" alt="" class="mo-display">
							<div class="hidden">
								<p>To a Better Future We connect
									the future</p>
								<strong>Secure sustainable growth engine through eco-friendly and responsible
									management, and based on transparent governance</strong>
								<dl>
									<dt>Environment</dt>
									<dd>
										<strong>Upgrade eco-friendly management</strong>
										<ul>
											<li>Upgrade eco-friendly management policy</li>
											<li>Improve efficiency of environment and energy management</li>
											<li>Expand environmental performance</li>
											<li>Protect local environment</li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dt>Social Responsibility
									</dt>
									<dd>
										<strong>Expand ethical and contributory management
										</strong>
										<ul>
											<li>Practice management with respect for human rights and labor</li>
											<li>Practice strict safety and health management</li>
											<li>Strengthen ethical compliance</li>
											<li>Activate social contribution</li>
										</ul>
									</dd>
								</dl>
								<dl>
									<dt>Governance</dt>
									<dd>
										<strong>Ensure transparency in corporate governance
										</strong>
										<ul>
											<li>Upgrade corporate governance</li>
											<li>Expand shareholder rights and interests</li>
											<li>Establish ESG management</li>
										</ul>
									</dd>
								</dl>
								<p>Essential element of corporate management for preemptive response to rapid
									environmental change and preparation for future growth</p>
							</c:if>
							</div>
						</div>

					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type"><spring:message code="manage.subTitle2" text="ESG 거버넌스"/></h3>
							<p>
							<c:if test="${LANG eq 'ko' }">
								대한전선은 ESG 경영을 강화하기 위해 전선업계 최초로 이사회 산하에 ‘ESG 위원회’를 설립했습니다.<br>
								ESG 관련 주요 정책과 전략을 심의하고 결정하는 기구로, 투명성과 전문성을 높이기 위해 사외이사와 사내이사로 구성되어 있습니다.<br>
								이와 함께 ESG 전담 부서 및 10여 개의 유관 부서로 이루어진 협의체를 중심으로<br>
								실무진 간의 면밀한 협의를 통해 체계적이고 실질적인 ESG경영을 실현합니다.
							</c:if>
							<c:if test="${LANG eq 'en' }">
								With a goal to strengthen ESG management, Taihan installed the ESG Committee under the
								Board of Directors (BOD) as the first in cable industry. Deliberating and making
								decisions on key ESG-related policies and strategies, the ESG Committee is organized
								with independent directors and executive directors to enhance transparency and
								expertise. In addition, centering on a consultative body comprising of a division in
								charge of ESG management and around ten related divisions, Taihan practices systematic
								and substantial ESG management through meticulous and detailed consultations of the
								working group.
							</c:if>
							</p>
						</div>
						<c:if test="${LANG eq 'ko' }">
						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management02_pc.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management02_mo.png" alt="" class="mo-display">
							<div class="hidden">
								<ol>
									<li><strong>이사회</strong></li>
									<li>
										<strong>ESG 위원회</strong>
										<p>
											ESG外 안전, 보건,
											중대재해
										</p>
										<p>
											위원회 구성원 : (사외이사 3인, 사내이사 1인)
										</p>
									</li>
									<li>
										<ul>
											<li><strong>경영관리팀</strong>
												<p>ESG外</p>
											</li>
											<li><strong>EHS팀</strong>
												<p>안전, 보건, 중대재해</p>
											</li>
										</ul>
									</li>
								</ol>
							</div>
						</div>
						</c:if>
						<c:if test="${LANG eq 'en' }">
						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management02_pc_en.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_management02_mo_en.png" alt="" class="mo-display">
							<div class="hidden">
								<ol>
									<li><strong>BOD</strong></li>
									<li>
										<strong>ESG Committee</strong>
										<p>
											Safety, health, and serious accidents other than ESG

										</p>
										<p>
											Committee Members
											(3 independent directors,
											1 executive director)
										</p>
									</li>
									<li>
										<ul>
											<li><strong>Business Management Team
												</strong>
												<p>Other than ESG
												</p>
											</li>
											<li><strong>EHS Team
												</strong>
												<p>Safety, health,
													serious
													accidents
												</p>
											</li>
										</ul>
									</li>
								</ol>
							</div>
						</div>
						</c:if>
					</div>
				</div>
				

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type"><spring:message code="manage.subTitle3" text="ESG 평가"/></h3>
							<p>
								<c:if test="${LANG eq 'ko' }">
								<!-- 2022-12-06 -->
								국내 전선업계 최초 2021년 ESG 평가에서 통합 A등급을 획득하고,<br>
								2022년 ESG 평가에서 또한 ‘2년 연속 통합A 등급’을 부여 받으며 ESG 경영의 우수성을 인정받았습니다.
								<!-- //2022-12-06 -->
								</c:if>
								<c:if test="${LANG eq 'en' }">
								Taihan received “Rating A” at the 2021 ESG evaluation for the first time in Korea’s
								electric wire industry, and therefore won recognition of the excellence of ESG
								management. Moving forward, Taihan, as a company leading ESG management, will strive
								further to make our society and environment healthier.
								</c:if>
								
							</p>
						</div>

						<div class="eval-wrap" data-delighter>
							<ul class="list-eval">
							<!-- 2022-12-06 -->
								<li>
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/evaluation01_2022.png" alt=""></div>
									<strong class="title"><spring:message code="manage.evaluation1" text="ESG 통합"/></strong>
								</li>
								<li>
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/evaluation02_2022.png" alt=""></div>
									<strong class="title"><spring:message code="manage.evaluation2" text="환경 부문"/></strong>
								</li>
								<li>
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/evaluation03_2022.png" alt=""></div>
									<strong class="title"><spring:message code="manage.evaluation3" text="사회 부문"/></strong>
								</li>
								<li>
									<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/esg/evaluation04_2022.png" alt=""></div>
									<strong class="title"><spring:message code="manage.evaluation4" text="지배구조 부문"/></strong>
								</li>
							</ul>

							<div class="label-box">
								<dl>
									<dt><spring:message code="manage.institution1" text="평가기관"/></dt>
									<dd><spring:message code="manage.institution2" text="KCGS 한국ESG기준원"/></dd>
								</dl>
							</div>
						</div>
						
						<div class="related-wrap" data-delighter>
							<ul>
							<c:if test="${LANG eq 'ko'}">
								<li>
									<a href="/esg/environment">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/bnr_envi.png" alt=""></div>
										<strong class="title"><spring:message code="manage.btn1" text="환경"/><span>Environment</span><i class="ico-arr"></i></strong>
									</a>
								</li>
								<li>
									<a href="/esg/social">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/bnr_social.png" alt=""></div>
										<strong class="title"><spring:message code="manage.btn2" text="사회"/><span>Social</span><i class="ico-arr"></i></strong>
									</a>
								</li>
								<li>
									<a href="/esg/ownership">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/bnr_gover.png" alt=""></div>
										<strong class="title"><spring:message code="manage.btn3" text="지배구조"/><span>Governance</span><i class="ico-arr"></i></strong>
									</a>
								</li>
							</c:if>
							<c:if test="${LANG eq 'en'}">
								<li>
									<a href="/en/esg/environment">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/bnr_envi.png" alt=""></div>
										<strong class="title"><spring:message code="manage.btn1" text="환경"/><span>Environment</span><i class="ico-arr"></i></strong>
									</a>
								</li>
								<li>
									<a href="/en/esg/social">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/bnr_social.png" alt=""></div>
										<strong class="title"><spring:message code="manage.btn2" text="사회"/><span>Social</span><i class="ico-arr"></i></strong>
									</a>
								</li>
								<li>
									<a href="/en/esg/ownership">
										<div class="img-box"><img src="${CON_STATIC_URL}/asset/images/business/bnr_gover.png" alt=""></div>
										<strong class="title"><spring:message code="manage.btn3" text="지배구조"/><span>Governance</span><i class="ico-arr"></i></strong>
									</a>
								</li>
							</c:if>
							</ul>
						</div>

					</div>
				</div>
			</div>

			<c:if test="${LANG eq 'ko'}">
			<div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/info_esg_01.jpg)">
				<div class="info-title">
					<span>대한전선의 ESG 활동 성과<br></span>
					<span>ESG 보고서를 통해 확인해보세요.</span>
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/2021-22 ESG Report.pdf" class="btn-type btn-m w-type"  target="_blank">ESG 보고서 다운로드<i class="ico-down"></i></a>
				</div>
			</div>
			</c:if>
			<c:if test="${LANG eq 'en'}">
			<div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/info_esg_01.jpg)">
				<div class="info-title">
					<span>Find out about Taihan’s achievements in ESG activities through ESG Report. </span>
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/2021-22 ESG Report.pdf" class="btn-type btn-m w-type"  target="_blank">ESG Report<i class="ico-down"></i></a>
				</div>
			</div>
			</c:if>
		</section>
		<!--//content-->

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 2, '0301');
        },100);
    })
</script>





