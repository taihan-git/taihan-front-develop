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
								Taihan is committed to the Fair Trade Compliance Program and all
								members of Taihan are actively involved.
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
								<li ><a href="/esg/fairTrade"><span>대한전선 CP</span></a></li>
								<li class="active"><a href="/esg/operationalStatus"><span>운영 현황</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en' }">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/en/esg/fairTrade"><span>Taihan’s CP</span></a></li>
								<li class="active"><a href="/en/esg/operationalStatus"><span>Operational Status</span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>

						<c:if test="${LANG eq 'ko' }">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">준법교육 실시</h3>
							<p>
								대한전선은 공정거래 자율준수 활동의 일환으로, 공정거래 실천의 중요성을 알리기 위한 교육을 적극 실시하고 있습니다.<br> 공정거래 법규와 관련한 내부 임직원 대상 정기 및 수시 교육을 통해 불공정 거래를 사전에 예방합니다.
							</p>
						</div>

						<ul class="list-detail7" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">정기교육</strong>
								</div>
								<div class="desc-box">
									<p>
									<!-- 2022-11-25 수정 -->
									전 임직원 대상 공정거래<br>
									법규 관련 교육 실시<br>
									(분기별 1회)<br>
									<!-- //2022-11-25 수정 -->
									</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">수시교육</strong>
								</div>
								<div class="desc-box">
									<p>위반행위 발견 시 또는 위반<br>
									가능성 높은 부서 등에 실시</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">신규 입사자 교육</strong>
								</div>
								<div class="desc-box">
									<p>신규 임직원 채용 시<br>
									기본교육 실시</p>
								</div>
							</li>
						</ul>
						</c:if>
						<c:if test="${LANG eq 'en' }">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Compliance Training</h3>
							<p>
								Taihan regularly and occasionally implements a law-abiding education related to fair
								trade as a part of Compliance Program(CP).
							</p>
						</div>

						<ul class="list-detail7" data-delighter>
							<li>
								<div class="title-box">
									<strong class="title">Regular training</strong>
								</div>
								<div class="desc-box">
									<p>All employees are subject to training on fair trade laws (once a quarter)</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">Occasional training</strong>
								</div>
								<div class="desc-box">
									<p>It is conducted when a violation is detected, or in a department with a high
										probability of violation</p>
								</div>
							</li>
							<li>
								<div class="title-box">
									<strong class="title">New employee training</strong>
								</div>
								<div class="desc-box">
									<p>It is a basic training for new employees</p>
								</div>
							</li>
						</ul>
						</c:if>
					</div>
				</div>

				<div class="content-box bg">
				<c:if test="${LANG eq 'ko' }">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">상시 모니터링</h3>
						</div>

						<div class="board-wrap" data-delighter>
							<div class="board-body">
								<ul class="list-board2">
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring01.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">내부 모니터링</strong>
												<p class="desc">
													경쟁사, 거래처 등과의 정보교환, 미팅 등 직간접적인 접촉 내용 모니터링 및 사전∙사후 보고서 작성
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring02.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">외부 모니터링</strong>
												<p class="desc">
													협력업체, 거래처 등과의 불공정 거래행위 및 법 위반 여부 모니터링
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring03.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">제보시스템 운영</strong>
												<p class="desc">
													그룹웨어 및 홈페이지 내 제보 시스템 운영
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring04.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">계약서 등의 검토</strong>
												<p class="desc">
													사전 계약내용 검토 및 사후 계약내용 이행여부 확인
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring05.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">기타</strong>
												<p class="desc">
													그 외 관련 법규 및 규정 또는 자율준수관리자에 의해 필요하다고 판단되는 사항에 대한 상시 모니터링
												</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>

					</div>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Always-on Monitoring</h3>
						</div>

						<div class="board-wrap" data-delighter>
							<div class="board-body">
								<ul class="list-board2">
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring01.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">Internal monitoring</strong>
												<p class="desc">
													It refers to monitoring of direct and indirect activities with
													competitors or business partners, such as information exchange or
													meetings. It includes preparation of pre- and post-reporting.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring02.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">External monitoring</strong>
												<p class="desc">
													It refers to monitoring for unfair trade practices and violations of
													laws with suppliers and business partners.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring03.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">Reporting system</strong>
												<p class="desc">
													The groupware and homepage welcome your report.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring04.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">Contract review</strong>
												<p class="desc">
													It is a procedure to review the contract details in advance and
													confirm whether they are fulfilled afterward.
												</p>
											</div>
										</div>
									</li>
									<li>
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_monitoring05.jpg" alt="">
											</div>
											<div class="title-box">
												<strong class="title">Others</strong>
												<p class="desc">
													Other relevant laws and regulations or matters deemed necessary by
													the compliance manager are monitored at all times.
												</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</c:if>
				</div>

				<div class="content-box">
				<c:if test="${LANG eq 'ko' }">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">상벌제도 운영</h3>
							<p>공정거래 및 CP 운영에 그 공로가 인정된 임직원 또는 부서에 인센티브 제공 혹은 위반 시 제재</p>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">위반 시 제재</h4>
							</div>
							<table class="table-type">
								<colgroup>
									<col style="width:25%;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="bg">경미한 경우</th><!-- 10-17 수정 -->
										<td class="t-l">
											<ul class="list-type v2">
												<li>임직원들이 공정거래 관련 법규 준수사항을 명확히 인지하고 실천할 수 있도록 관련 기준과 절차를 마련하여 시행합니다.</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" class="bg">중대한 경우</th>
										<td class="t-l">
											<ul class="list-type v2">
												<li>
													사내 상벌 규정에 따른 인사위원회 처분
													<ul class="list-type v4">
														<li>회사가 관련기관 등으로부터 과징금, 벌금, 손해배상책임 등의 금전적 손실을 부담하는 경우</li>
														<li>회사가 관련기관 등으로부터 입찰참가자격 제한조치를 받은 경우</li>
														<li>경미한 경우에 해당하나 최근 3년 이내 2회 이상 경고 또는 시정을 받은 경우</li>
														<li>고소∙고발∙소송 등 법적 분쟁이 발생한 사항 중 자율준수 관리자가 중대하다 판단할 경우</li>
														<li>기타 자율준수 관리자가 필요하다고 판단할 경우 등.</li>
													</ul>
												</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</c:if>
				<c:if test="${LANG eq 'en' }">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Reward and Punishment</h3>
							<p>Incentives are provided to employees or departments recognized for their contribution to
								fair trade and CP activities.</p>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">Sanctions for violations</h4>
							</div>
							<table class="table-type">
								<colgroup>
									<col style="width:25%;">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="bg">In mind cases</th><!-- 수정 -->
										<td class="t-l">
											<ul class="list-type v2">
												<li>Relevant standards and protocols shall be established and
													implemented so that employees can clearly recognize and practice
													fair trade-related laws and regulations.</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" class="bg">In serious cases</th>
										<td class="t-l">
											<ul class="list-type v2">
												<li>
													The HR committee issues a disposition in accordance with the
													company's reward/punishment regulations in the following cases
													<ul class="list-type v4">
														<li>In case the company bears monetary losses, such as penalty,
															fine, or liability for damages, from related organizations
														</li>
														<li>In case the company receives restrictions on bidding
															qualification from the relevant organization</li>
														<li>In case a warning or corrective action request has been
															issued twice or more within the last three years for the
															same minor case</li>
														<li>In case there are matters determined by the compliance
															manager to be significant among legal disputes such as
															complaints, accusations, and lawsuits</li>
														<li>Other cases deemed necessary by the Compliance Manager</li>
													</ul>
												</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</c:if>
				</div>
			
				<c:if test="${LANG eq 'ko' }">
				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">규정준수 모니터링 결과</h3>
						</div>
						<div class="table-wrap" data-delighter>
							<table class="table-type v2">
								<colgroup>
									<col>
									<col style="width:33%;">
									<col style="width:33%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="bg">구분</th>
										 <!-- 2022-12-26 -->
                                        <th scope="col" class="bg">2022</th>
                                        <th scope="col" class="bg">2021 하반기(CP도입)</th>
                                        <!-- // 2022-12-26 -->
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>공정거래 관련 법령 위반</td>
										<td>없음</td>
										<td>없음</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">공정거래 교육</h3>
						</div>

						<div class="board-wrap" data-delighter>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_edu01.jpg" alt="">
											</div>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_edu02.jpg" alt="">
											</div>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_edu03.jpg" alt="">
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

						<div class="table-wrap" data-delighter>
							 <!-- 2022-12-26 -->
                                    <table class="table-type v2">
                                        <colgroup>
                                            <col />
                                            <col style="width: 28%" />
                                            <col style="width: 28%" />
                                            <col style="width: 28%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col" class="bg">구분</th>
                                                <th scope="col" class="bg" colspan="2">2022</th>
                                                <th scope="col" class="bg">2021년 하반기</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>교육</td>
                                                <td>정기교육</td>
                                                <td>외부강사 초빙교육</td>
                                                <td>정기교육</td>
                                            </tr>
                                            <tr>
                                                <!-- 2022-12-27 -->
                                                <td rowspan="2">주요 내용</td>
                                                <!-- // 2022-12-27 -->
                                                <td class="t-l">
                                                    <ul class="list-type v2">
                                                        <li>하도급법 및 대리점법의 이해</li>
                                                        <li>하도급거래 관련 판단기준 및 유의점</li>
                                                        <li>부당공동행위(담합) 관련 주요 금지사항 및 사례 해설</li>
                                                    </ul>
                                                </td>
                                                <td class="t-l">
                                                    <ul class="list-type v2">
                                                        <li>공정거래법의 소개 및 이해</li>
                                                        <li>공정거래 관련 직급별 필수 인지 사항</li>
                                                        <li>하도급거래시 유의 사항</li>
                                                    </ul>
                                                </td>
                                                <td class="t-l">
                                                    <ul class="list-type v2">
                                                        <li>부당공동행위(담합)의 이해 및 유형</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">신규 입사자 교육은 회사 CP제도 및 적용 법령 등의 안내로 구성</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- // 2022-12-26 -->
							</div>
						</div>
					</div>
				</div>
				</c:if>
				
				<c:if test="${LANG eq 'en' }">
				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Compliance Monitoring report</h3>
						</div>
						<div class="table-wrap" data-delighter>
							<table class="table-type v2">
								<colgroup>
									<col>
									<col style="width:33%;">
									<col style="width:33%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="bg">Type</th>
										<!-- 2022-12-26 -->
                                        <th scope="col" class="bg">2022</th>
                                        <!-- // 2022-12-26 -->
                                        <th scope="col" class="bg">H2 of 2021</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Violation of relevant fair trade laws and regulations</td>
										<td>None</td>
										<td>None</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							 <!-- 2022-12-26 -->
                            <h3 class="title-type">CP training · education report</h3>
						</div>

						<div class="board-wrap" data-delighter>
							<div class="board-body gallery-swiper">
								<ul class="list-gallery swiper-wrapper">
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_edu01.jpg" alt="">
											</div>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_edu02.jpg" alt="">
											</div>
										</div>
									</li>
									<li class="swiper-slide">
										<div class="list-item">
											<div class="img-flex">
												<img src="${CON_STATIC_URL}/asset/images/esg/img_edu03.jpg" alt="">
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

						<!-- 2022-11-03 수정 -->
						<div class="table-wrap" data-delighter>
							<div class="scroll-wrap">
								<!-- 2022-12-26 -->
                                    <table class="table-type v2">
                                        <colgroup>
                                            <col />
                                            <col style="width: 28%" />
                                            <col style="width: 28%" />
                                            <col style="width: 28%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col" class="bg">Type</th>
                                                <th scope="col" class="bg" colspan="2">2022</th>
                                                <th scope="col" class="bg">Second half of 2021</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Session</td>
                                                <td>Regular Training</td>
                                                <td>External instructors invited for training by department and position.</td>
                                                <td>Regular Training</td>
                                            </tr>
                                            <tr>
                                                <td rowspan="2">Subject</td>
                                                <td class="t-l">
                                                    <ul class="list-type v2">
                                                        <li>
                                                            Understanding Subcontract Act and Fair<br />
                                                            Agency Transactions Act
                                                        </li>
                                                        <li>
                                                            Judgment Factors and Remarks<br />
                                                            regarding Subcontract Transactions
                                                        </li>
                                                        <li>
                                                            Prohibited Behaviors and related Cases<br />
                                                            regarding Unfair Common Actions<br />
                                                            (Cartel)
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td class="t-l">
                                                    <ul class="list-type v2">
                                                        <li>Introduction to Fair Trade Act</li>
                                                        <li>
                                                            Essential Remarks on Fair Trade to<br />
                                                            Executives and Staffs
                                                        </li>
                                                        <li>Remarks on Subcontract Transactions</li>
                                                    </ul>
                                                </td>
                                                <td class="t-l">
                                                    <ul class="list-type v2">
                                                        <li>
                                                            Understanding Unfair Common Actions<br />
                                                            (Cartel) and exemplary behaviors
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">Instruction for new entrant(s) is comprised of introduction of Compliance Program and its Applicable Regulations.</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- // 2022-12-26 -->
							</div>
						</div>
						<!-- //2022-11-03 수정 -->

					</div>
				</div>
				</c:if>
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
            setmenu( 3, '030602');
        },100);


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
	
    })
</script>





