<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

		    
	<!--content-->
		<section id="content" class="sub-wrap esg-compliance">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_06.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="cp.title" text="공정거래 자율준수"/></h2>
				</div>
				<c:if test="${LANG eq 'ko' }">
				<div class="btn-box pc-display"><a href="/esg/inquireRegForm?gubun=cp" class="btn-type btn-s">공정거래 제보하기<i class="ico-arr v2"></i></a></div>
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
								경영진의 확고한 준법의지를 토대로,<br>
								임직원 모두가 공정거래 실천에 적극 동참하고 있습니다.
							</c:if>
							<c:if test="${LANG eq 'en' }">
							<!-- 2022-12-26 -->
								Taihan is committed to the Fair Trade Compliance Program<br class="pc-display">
								and all members of Taihan are actively involved.
							</c:if>
							</strong>
							<c:if test="${LANG eq 'ko' }">
							<div class="side-box btn-box mo-display"><a href="/esg/inquireRegForm?gubun=cp" class="btn-type btn-s v3">공정거래 제보하기<i class="ico-arr v2"></i></a></div>
							</c:if>
						</div>
						
						<c:if test="${LANG eq 'ko' }">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li class="active"><a href="/esg/fairTrade"><span>대한전선 CP</span></a></li>
								<li><a href="/esg/operationalStatus"><span>운영 현황</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en' }">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li class="active"><a href="/en/esg/fairTrade"><span>Taihan’s CP</span></a></li>
								<li><a href="/en/esg/operationalStatus"><span>Operational Status</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>

						<c:if test="${LANG eq 'ko' }">
						<div class="cp-wrap" data-delighter>
							<div class="text-box">
								<strong class="title">자율준수 의지선언</strong>
								<p class="text">안녕하십니까.
									대한전선 대표이사 나형균입니다.</p>
								<p class="text2">대한전선은 투명하고 공정한 거래를 위하여
									공정거래 자율준수 프로그램을 도입하고,
									자율준수 문화 정착을 위한
									많은 노력을 기울이고 있습니다.<br>
									저를 포함한 대한전선 전 임직원은
									공정경쟁규약을 준수하고 관련 법규의 준수를
									선택이 아닌 의무로 여기며
									최선의 노력을 다하겠습니다.</p>
								<p class="sign">
									대한전선 대표이사 나형균
									<img class="img" src="${CON_STATIC_URL}/asset/images/esg/img_sign.png" alt="">
								</p>
							</div>
							<!-- <div class="btn-box"><a href="${CON_UPLOAD_URL}pdf/Taihan_CP_Declaration.pdf" target="_blank" class="btn-type btn-m">2022 대표이사 자율준수 의지선언 전문보기<i class="ico-more2"></i></a></div> -->
                            <!-- [D] download="ESG_CP_2023 대표이사 자율준수 의지선언.pdf"  원래 파일명-->
							<div class="btn-box"><a href="${CON_STATIC_URL}/files/Taihan_CP_Declaration_2023.pdf" target="_blank" class="btn-type btn-m">2023 대표이사 자율준수 의지선언 전문보기<i class="ico-more2"></i></a></div>
						</div>
						</c:if>
						<c:if test="${LANG eq 'en' }">
						<div class="cp-wrap" data-delighter>
							<div class="text-box">
								<strong class="title">From the CEO</strong>
								<p class="text">Taihan has introduced the Fair Trade Compliance Program and has been
									putting efforts to build the culture of compliance. We consider Fair Trade is our
									duty to comply but not an option. All executives and employees of Taihan, including
									myself, will do our best to abide by the relevant law and regulation in connection
									to the Fair Trade. </p>
								<p class="sign">
									Na Hyung-gyun, CEO of Taihan.
									<img class="img" src="${CON_STATIC_URL}/asset/images/esg/img_sign.png" alt="">
								</p>
							</div>
							<!-- <div class="btn-box"><a href="/resources/files/Taihan_CP_Declaration_en.pdf" target="_blank" class="btn-type btn-m">View the full text of the CEO's
									declaration of compliance in 2022<i class="ico-more2"></i></a>
							</div> -->
                            <!-- [D] download="ESG_CP_CEO's declaration of compliance in 2023.pdf"  원래 파일명 -->
                            <div class="btn-box"><a href="${CON_STATIC_URL}/files/Taihan_CP_Declaration_2023_en.pdf" target="_blank" class="btn-type btn-m">View the full text of the CEO's
                                declaration of compliance in 2023<i class="ico-more2"></i></a>
                            </div>
						</c:if>
						
					</div>
				</div>


				<div class="content-box">
				<c:if test="${LANG eq 'ko' }">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">CP의 정의</h3>
							<p>
								공정거래 자율준수 프로그램(CP: Compliance Program)은 투명하고 공정한 시장경쟁 질서 확립을 위하여 기업이 자체적으로 운영하는 내부 준법 시스템입니다.<br>
								대한전선은 경영활동 과정에서 발생할 수 있는 위법 가능성을 선제적으로 차단하고 공정거래 법규를 준수하기 위해<br>
								공정거래 자율준수 프로그램을 도입하여 기업의 책임과 역할을 다하고 있습니다.
							</p>
						</div>
					</div>
				</c:if>
				<c:if test="${LANG eq 'en' }">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">CP</h3>
							<p>
								The Compliance Program (CP) is an internal compliance system operated voluntarily by a
								company to establish culture of transparent and fair market competition. In order to
								preemptively and actively comply Fair Trade laws and regulations and monitor any
								potential violation of laws and regulations that may occur during business activities,
								Taihan has introduced CP to fulfill its corporate responsibilities and roles.
							</p>
						</div>
					</div>
				</c:if>
				</div>

				<div class="content-box bg">
					<c:if test="${LANG eq 'ko' }">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">CP 8대 핵심요소</h3>
							<p>
								대한전선은 실효성 있는 CP 운영을 위해 8대 핵심요소를 실천합니다.
							</p>
						</div>

						<ul class="list-detail6" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">CP기준 절차 마련 및 시행</strong>
								</div>
								<div class="desc-box">
									<p>임직원들이 공정거래 관련 법규 준수사항을 명확히 인지하고 실천할 수 있도록 관련 기준과 절차를 마련하여 시행합니다.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">최고경영자의 자율준수 의지 및 지원</strong>
								</div>
								<div class="desc-box">
									<p>공정거래 법규의 자율준수 의지와 방침을 최고경영자가 공개적으로 표명하고 CP 운영을 적극 지원합니다.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">자율준수 관리자 임명</strong>
								</div>
								<div class="desc-box">
									<p>조직 내 자율준수관리자를 임명하고, 효과적인 CP 운영에 대한 책임을 부여합니다.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">자율준수편람 제작 및 활용</strong>
								</div>
								<div class="desc-box">
									<p>자율준수관리자의 책임 하에 공정거래 관련 법규 및 CP 기준과 절차 등이 포함된 자율준수편람을 발행합니다.<br>
										또한, 편람은 전 임직원이 쉽게 접근 및 활용할 수 있도록 전자문서의 형태로 제작합니다.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">자율준수 교육 실시</strong>
								</div>
								<div class="desc-box">
									<p>최고경영자 및 구매, 판매 부서 등 공정거래관련 위반가능성이 높은 분야의 임직원을 대상으로 정기 교육을 실시합니다.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">내부감시체계 구축</strong>
								</div>
								<div class="desc-box">
									<p>위법행위의 예방 및 조기 발견을 위해 감사 시스템을 운용하고, 그 결과를 최고의사결정 기구에 주기적으로(최소 연2회 이상) 보고합니다.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">임직원 제재</strong>
								</div>
								<div class="desc-box">
									<p>공정거래 관련 법규 위반 책임이 있는 임직원에 대하여 그 위반 정도에 상응하는 제재조치를 규정한 사규를 마련 및 운영합니다.<br>
										또한, 법 위반 행위 발견 시 적극 대응하고 재발방지를 위해 노력합니다.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">효과성 평가와 개선조치</strong>
								</div>
								<div class="desc-box">
									<p>CP가 효과적으로 지속 운영될 수 있도록 CP 기준, 절차, 운용 등에 대한 정기 점검 및 평가를 실시하여 그에 따른 개선 조치를 취합니다.</p>
								</div>
							</li>
						</ul>
					</div>
					</c:if>
					<c:if test="${LANG eq 'en' }">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Eight Key Elements of CP</h3>
							<p>
								Taihan implements the following eight key elements to run CP effectively.
							</p>
						</div>

						<ul class="list-detail6" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title"> Implementation of CP Protocols</strong>
								</div>
								<div class="desc-box">
									<p>Adequate standards and protocols shall be established and implemented so that
										members of the Company can clearly understand and practice obligations under
										fair trade-related laws and regulations.
									</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Expression of CEO's own volition and willingness to
										supportCP</strong>
								</div>
								<div class="desc-box">
									<p>The CEO publicly declares his/her intention to implement CP and its policy and
										show willingness to support CP actively</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Appointment of Compliance Manager</strong>
								</div>
								<div class="desc-box">
									<p>Appoint compliance manager and delegate appropriate authority to take control of
										effective CP operation.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Publication of Compliance Manual</strong>
								</div>
								<div class="desc-box">
									<p>A compliance manual shall be issued under the responsibility of the compliance
										manager, which shall include relevant fair trade laws and regulations, CP
										standards and protocols. It shall be published in the form of an electronic
										document to enable members of the Company to access and utilize easily.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Education/training of Compliance Program</strong>
								</div>
								<div class="desc-box">
									<p>Regular education and training shall be provided for the CEO, executives and
										employees in the purchasing and sales departmentswho may be prone to violation
										of Fair Trade laws and regulations.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Setting up internal Monitoring System</strong>
								</div>
								<div class="desc-box">
									<p>Monitoring system, by way of auditing, shall be in place to prevent and detect
										any potential violation of Fair Trade laws and regulations. Monitoring report
										shall be submitted to the Board for review (at least twice a year).</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Employ penalties</strong>
								</div>
								<div class="desc-box">
									<p>Company’s bylaw shall govern penalties for members of the Company including
										executives for violation of relevant Fair Trade laws and regulations. Any degree
										of penalties shall fairly correspond to the severity of violation. Members of
										the Company shall actively report any violation, and respond appropriately as
										part of pre-emptive action.</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Performance evaluation and implementation of Corrective
										Actions</strong>
								</div>
								<div class="desc-box">
									<p>For effective CP performance, periodical review and evaluation about the CP
										performance, standards, protocols, etc. shall be carried out, and appropriate
										corrective actions shall be followed accordingly.</p>
								</div>
							</li>
						</ul>
					</div>
					</c:if>
				</div>

				<div class="content-box">
				<c:if test="${LANG eq 'ko' }">
					<div class="inner-box">
						<div class="title-wrap4">
							<h3 class="title-type">CP 조직 및 역할</h3>
						</div>

						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_compliance_pc.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_compliance_mo.png" alt="" class="mo-display">
							<div class="hidden">

							</div>
						</div>

						<ul class="list-detail4 v2" data-delighter>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">자율준수 관리자</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>CP 운영 총괄</li>
										<li>자율준수협의체 위원장</li>
										<li>CP 운영 사항 이사회 보고</li>
										<li>CP 운영 관련 예방조치 및 개선방안 등 마련</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">자율준수 협의체</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>사내 CP 관련 안건 협의</li>
										<li>공정거래 법령 위반여부 사전 검토</li>
										<li>CP 관련 의사소통 창구역할</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">CP 운영팀</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>CP 운영 전담</li>
										<li>모니터링</li>
										<li>임직원 교육</li>
										<li>자율준수협의체 진행</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">부서별 CP담당자</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>해당 부서별 CP업무 담당</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
					</c:if>
				<c:if test="${LANG eq 'en' }">
					<div class="inner-box">
						<div class="title-wrap4">
							<h3 class="title-type">CP Body and Roles</h3>
						</div>

						<div class="content-img" data-delighter>
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_compliance_pc_en.png" alt="" class="pc-display">
							<img src="${CON_STATIC_URL}/asset/images/esg/img_cont_compliance_mo_en.png" alt="" class="mo-display">
							<div class="hidden">
								<strong>Compliance Council (Advisory Body)</strong>
								<p>Compliance Manager</p>
								<p>Compliance Team</p>
								<p>CP operator (each Team)</p>
							</div>
						</div>

						<ul class="list-detail4 v2" data-delighter>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Compliance Manager</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>The General Manager of CP activities</li>
										<li>The Chairperson of the Compliance Council</li>
										<li>Report to the Board of Directors on CP activities.</li>
										<li>Prepare preventive measures and corrective actions related to CP activities.
										</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Compliance Council</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Discuss internal CP related issues.</li>
										<li>Review in advance whether there are any violations of the Fair Trade laws
											and regulations</li>
										<li>Play a role of CP-related communication channel</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">CP Team</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Responsible for CP activities.</li>
										<li>Monitor CP activities.</li>
										<li>Train employees.</li>
										<li>Support Compliance Council.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">CP Operator (Each team)</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Responsible for CP activities by department</li>
									</ul>
								</div>
							</li>
						</ul>
						</div>
					</div>
					</c:if>
				</div>

			</div>

			<c:if test="${LANG eq 'ko' }">
			<div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/info_esg_06.jpg)">
				<div class="info-title">
					<span>투명하고 공정한 기업 문화 정착을 위한<br></span>
					<span>대한전선 공정거래 자율준수의 편람 및 윤영규정을 소개합니다.</span>
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/CP_Manual.pdf" class="btn-type btn-m w-type"  target="_blank">공정거래 자율준수 편람<i class="ico-arr v2"></i></a>
					<a href="/resources/files/CP_Regulations.pdf" class="btn-type btn-m w-type"  target="_blank">공정거래 자율준수 운영규정<i class="ico-arr v2"></i></a>
					<a href="/resources/files/code_of_conduct.pdf" class="btn-type btn-m w-type" target="_blank">행동강령 및 실천서약서<i class="ico-arr v2"></i></a>
				</div>
			</div>
			</c:if>
			<c:if test="${LANG eq 'en' }">
			</c:if>


		</section>
		<!--//content-->		    

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '030601');
        },100);
    })
</script>





