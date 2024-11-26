<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>


<!--content-->
<section id="content" class="sub-wrap esg-newspaper">

	<c:if test="${LANG eq 'ko'}">
		<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_07.jpg?v4)">
			<div class="sub-title">
				<h2 class="title-type">사이버 신문고</h2>
			</div>
			<div class="btn-box pc-display">
					<a href="/esg/inquireCheck" class="btn-type btn-s">제보확인<i class="ico-arr v2"></i></a>
			</div>
		</div>
	</c:if>

	<c:if test="${LANG eq 'en'}">
		<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_07.jpg?v4)">
			<div class="sub-title">
				<h2 class="title-type">Compliance Reporting Channel</h2>
			</div>
			<div class="btn-box pc-display">
					<a href="/en/esg/inquireCheck" class="btn-type btn-s">Check status of your report<i class="ico-arr v2"></i></a>
			</div>
		</div>
	</c:if>


    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

	<c:if test="${LANG eq 'ko'}">
		<div id="container" class="content-wrap is-last-bg">
			<div class="content-box">
				<div class="inner-box">
					<!-- 2022-10-21 텍스트 수정 -->
						<div class="title-wrap v2" data-delighter>
							<strong class="title-type">
								모든 이해관계자가 <br class="mo-br">신뢰할 수 있는 <br class="mo-br">제보 시스템을 제공합니다.
							</strong>

							<p>제보 내용은 책임 부서의 관리 하에 독립적으로 처리되며,<br>
								제보자 신분 등은 철저히 비밀로 보장됩니다.</p>
							<div class="side-box btn-box mo-display"><a href="/esg/inquireCheck" class="btn-type btn-s v3">제보확인<i class="ico-arr v2"></i></a></div>
					</div>
				</div>

						<!-- 2022-10-24 텍스트 수정 -->
					<div class="content-box">
						<div class="inner-box">
							<div class="title-wrap4" data-delighter>
								<h4 class="title-type">제보하기</h4>
								<p>각 유형에 따른 여러분의 소중한 제보를 기다립니다.</p>
							</div>

							<ul class="list-category" data-delighter>
								<li>
									<a href="/esg/inquireRegForm?gubun=em">
										<strong class="title">윤리경영</strong>
										<ul class="list-type v2">
											<li>금품, 접대, 편의 수수행위</li>
											<li>이해관계자와의 부당한 금전거래</li>
											<li>회사 자산의 부당 사용</li>
											<li>임직원의 부당한 업무처리</li>
											<li>내부회계관리 제도 위반</li>
											<li>건전한 기업문화 저해 행위</li>
											<li>불합리한 관행 개선 제안</li>
											<li>기타 윤리경영에 위배되는 사항</li>
										</ul>
										<div class="btn-wrap t-c">
												<a href="/esg/inquireRegForm?gubun=em" class="btn-type btn-m">제보하기<i class="ico-arr"></i></a>
										</div>
									</a>
								</li>
								<li>
									<a href="/esg/inquireRegForm?gubun=cp">
										<!-- 2022-10-25 텍스트 수정 -->
										<strong class="title">공정거래</strong>
										<!-- //2022-10-25 텍스트 수정 -->
										<ul class="list-type v2">
											<li>불공정 거래 행위</li>
											<li>부당한 공동 행위(담합)</li>
											<li>경영 간섭 행위, 불이익 제공 행위</li>
											<li>하도급법상 법정기한 미준수</li>
											<li>협력사 서면 미교부</li>
											<li>부당한 하도급 대금 결정</li>
											<li>물품 강매, 부당한 위탁 취소</li>
											<li>기타 공정거래 관련법 위반 등</li>
										</ul>
										<div class="btn-wrap t-c">
											<a href="/esg/inquireRegForm?gubun=cp" class="btn-type btn-m">제보하기<i class="ico-arr"></i></a>
										</div>
									</a>
								</li>
							</ul>

						</div>
					</div>
				<!-- //2022-10-24 텍스트 수정 -->

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h4 class="title-type">운영 방침</h4>
						</div>

						<ul class="list-detail">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">비밀보장</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>제보자의 신분 및 제보 내용을 비밀로 유지합니다.</li>
										<li>제출한 입증 자료에 대해서는 철저하게 보안을 준수합니다.</li>
										<li>제보자의 신분을 알기 위한 탐문 행위 등을 실시하지 않습니다.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">제보자 불이익 금지</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>제보자는 정당한 제보와 관련하여 어떠한 차별 및 불이익을 받지 않습니다.</li>
										<li>제보와 관련하여 불이익을 받았을 경우 이에 대한 원상회복 등의 조치를 요구할 수 있습니다.</li>
										<li>사실 확인 과정에서 진술, 자료제공 등의 방법으로 협조한 자에 대해서도 동등하게 보호합니다.</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>


				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h4 class="title-type">처리절차</h4>
						</div>

						<ul class="list-detail v3">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">제보접수</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>제보자는 6하 원칙에 의거하여 제보 내용에 대한 사실관계 및 증거를 접수합니다.</li>
										<li>실명 또는 익명 제보가 가능하며, 실명으로 접수하였더라도 연락처가 허위일 경우 익명으로 간주합니다.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">접수검토</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>제보 내용의 전담부서를 확인하고 검토를 진행합니다.</li>
										<li>조사 대상이 아닌 경우, 조사에서 제외하거나 관련 부서로 이관할 수 있습니다.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">조사진행</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>제보 내용에 따라 조사를 착수합니다.</li>
										<li>접수 순서에 따라 순차적으로 진행하며 대상 및 범위에 따라 최소 7일~10일 이상 소요될 수 있습니다.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">종료</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>제보 내용의 사실 관계 확인에 따라 조사를 종료합니다.</li>
										<li>결과는 홈페이지에서 제보 당시 부여된 접수번호로 조회 가능하며, 실명 접수 시에는 이메일을 통해서도 별도 회신 드립니다.</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h4 class="title-type">기타 제보방법</h4>
						</div>

						<ul class="list-detail v2" data-delighter>
								<li data-delighter>
									<div class="title-box">
										<strong class="title">윤리경영</strong>
									</div>
									<div class="desc-box">
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-mail"></i>이메일</dt>
													<dd><a href="mailto:ethics@taihan.com">ethics@taihan.com</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>연락처</dt>
													<dd><a href="tel:02-316-9469">02-316-9488</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-post"></i>우편</dt>
													<!-- 2022-10-24 텍스트 수정 -->
													<dd>서울특별시 서초구 양재대로2길 18 호반파크 2관 대한전선 경영개선팀</dd>
													<!-- //2022-10-24 텍스트 수정 -->
												</dl>
											</li>

										</ul>
									</div>
								</li>
								<li data-delighter>
									<div class="title-box">
										<strong class="title">컴플라이언스</strong>
									</div>
									<div class="desc-box">
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-mail"></i>이메일</dt>
													<dd><a href="mailto:compliance@taihan.com">compliance@taihan.com</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>연락처</dt>
													<dd><a href="tel:02-316-9196">02-316-9469</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-post"></i>우편</dt>
													<dd>서울특별시 서초구 양재대로2길 18 호반파크 2관 대한전선 준법지원팀</dd>
												</dl>
											</li>

										</ul>
									</div>
								</li>
							</ul>
					</div>
				</div>
			</div>
		</div>
	</c:if>

	<c:if test="${LANG eq 'en'}">
		<div id="container" class="content-wrap is-last-bg">
			<div class="content-box">
				<div class="inner-box">
					<!-- 2022-10-21 텍스트 수정 -->
					<div class="title-wrap v2" data-delighter>
						<strong class="title-type">
							Our reporting system is trustworthy for every stakeholder.
						</strong>
						<p>Reports are independently managed and handled by a dedicated division, <br>
							and they are all kept confidential and anonymous</p>
						<div class="side-box btn-box mo-display"><a href="/en/esg/inquireCheck" class="btn-type btn-s v3">Check status of your report<i class="ico-arr v2"></i></a></div>
					</div>
				</div>

				<!-- 2022-10-24 텍스트 수정 -->
				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h4 class="title-type">Report Now</h4>
							<p>We appreciate your valuable report on the following types of practices</p>
						</div>

						<ul class="list-category" data-delighter>
							<li>
								<a href="/en/esg/inquireRegForm?gubun=em">
									<strong class="title">Ethical Management</strong>
									<ul class="list-type v2">
										<li>Receiving any type of reward such as money, entertainment or convenience</li>
										<li>Illegal financial transactions with stakeholders</li>
										<li>Inappropriate use of company assets</li>
										<li>Unfair handling of work by employees</li>
										<li>Violation of Internal Accounting Control System</li>
										<li>Disruption of sound corporate culture</li>
										<li>Proposal for improving unreasonable practices</li>
										<li>Other infringements of ethical management</li>
									</ul>
									<div class="btn-wrap t-c"><a href="/en/esg/inquireRegForm?gubun=em" class="btn-type btn-m">Report Now<i class="ico-arr"></i></a></div>
								</a>
							</li>
							<li class="removePadding">
								<a href="/en/esg/inquireRegForm?gubun=cp">
									<!-- 2022-10-25 텍스트 수정 -->
									<strong class="title">Fair Trade</strong>
									<!-- //2022-10-25 텍스트 수정 -->
									<ul class="list-type v2">
										<li>Unfair transaction</li>
										<li>Unfair collective action (collusion)</li>
										<li>Intervention in management, <br>
											imposition of unfair trading conditions</li>
										<li>Non-compliance with the statutory period set by <br>
											Fair Transactions in Subcontracting Act</li>
										<li>Failure to issue a subcontract agreement to the subcontractor</li>
										<li>Decision of unfair subcontract prices</li>
										<li>Coercing customers to make purchases, <br>
											unfair cancellation of entrustment contracts</li>
										<li>Other infringements of fair-trade laws</li>
									</ul>
									<div class="btn-wrap t-c">
										<a href="/en/esg/inquireRegForm?gubun=cp" class="btn-type btn-m">Report Now<i class="ico-arr"></i></a>
									</div>
								</a>
							</li>
						</ul>

					</div>
				</div>
				<!-- //2022-10-24 텍스트 수정 -->

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h4 class="title-type">Operation Policy</h4>
						</div>

						<ul class="list-detail">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Confidentiality</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>All reports are kept confidential and anonymous.</li>
										<li>Evidential documents submitted are completely kept secure.</li>
										<li>We do not investigate or take other action to identify the informant.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Prohibition of<br> disadvantages against informants</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>Informants are not subject to discrimination or disadvantage in relation to their report.</li>
										<li>Anyone who suffered unfair treatment due to their report can request corrective action to compensate for the disadvantage.</li>
										<li>Those who supported the fact-finding process through statements or documents are equally protected.</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>


				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h4 class="title-type">Process</h4>
						</div>

						<ul class="list-detail v3">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Receive report</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>You may gather information and evidence using the 5W1H principle.</li>
										<li>You can choose to report either in your name or anonymously. A report under a real name is deemed anonymous if the contact information is not true.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Review</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>We identify the responsible division for the report and review the report.</li>
										<li>If the submitted report is deemed not subject to investigation, it may be excluded from the investigation or be referred to another relevant division.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Investigation</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>We initiate the investigation based on the content of the report.</li>
										<li>We process reports in the order they are received. The investigation may take at least seven to ten days or longer depending on the subject and scope of investigation.</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Closure</strong>
								</div>
								<div class="desc-box">
									<ul class="list-type v4">
										<li>The investigation is completed after it is verified that the reported information is true or not.</li>
										<li>You can view the outcome on our website using the report number assigned at the time of report. We’ll send you the outcome by e-mail if the report was submitted in your real name. </li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h4 class="title-type">Other Reporting Channels</h4>
						</div>

						<ul class="list-detail v2" data-delighter>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Ethical Management</strong>
								</div>
								<div class="desc-box">
									<ul class="list-info">
										<li>
											<dl>
												<dt><i class="ico-mail"></i>E-Mail</dt>
												<dd><a href="mailto:ethics@taihan.com">ethics@taihan.com</a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt><i class="ico-tel"></i>Tel</dt>
												<dd><a href="tel:+8223169488">+82 2-316-9488</a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt><i class="ico-post"></i>Address</dt>
												<!-- 2022-10-24 텍스트 수정 -->
												<dd>Taihan Cable & Solution Management Improvement Team 18, Yangjae-daero 2-gil, Seocho-gu, Seoul, South Korea</dd>
												<!-- //2022-10-24 텍스트 수정 -->
											</dl>
										</li>

									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Compliance</strong>
								</div>
								<div class="desc-box">
									<ul class="list-info">
										<li>
											<dl>
												<dt><i class="ico-mail"></i>E-Mail</dt>
												<dd><a href="mailto:compliance@taihan.com">compliance@taihan.com</a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt><i class="ico-tel"></i>Tel</dt>
												<dd><a href="tel:+8223169469">+82 2-316-9469</a></dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt><i class="ico-post"></i>Address</dt>
												<dd>Taihan Cable & Solution Compliance Management Team 18, Yangjae-daero 2-gil, Seocho-gu, Seoul, South Korea</dd>
											</dl>
										</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</c:if>


</section>
<!--//content-->

<script type="application/javascript">
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 2, '0307');
        },100);
        $('.list-category li a').hover(function () {
    		$(this).parents('li').removeClass('unhover').addClass('hover').siblings('li').addClass('unhover').removeClass('hover');
    	});

		$(".list-category > li").css("padding", "90px 50px");
    });







</script>





