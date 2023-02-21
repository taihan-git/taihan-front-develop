<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<!--content-->
		<section id="content" class="sub-wrap esg-governance">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_04.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="esg.ownershipTitle" text="지배구조"/></h2>
				</div>
			</div>
			
			<%-- GNB(S)--%>
		    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
		    <%-- GNB(E) --%>

			<!-- 2022-10-18 전체적으로 업데이트 -->
			<div id="container" class="content-wrap is-last-bg">
				<c:if test="${LANG eq 'ko' }">
				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">이사회 구성</h3>
							<p>대한전선의 이사회는 사외이사 3인, 기타비상무이사 1인, 사내이사 3인, 총 7인의 이사로 구성되어 있습니다.</p>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="scroll-wrap">
								<table class="table-type v2">
									<colgroup>
										<col style="width: 15%">
										<col style="width: 15%">
										<col>
										<col style="width: 15%">
										<col style="width: 15%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="bg">직명</th>
											<th scope="col" class="bg">성명</th>
											<th scope="col" class="bg">경력</th>
											<th scope="col" class="bg">선임</th>
											<th scope="col" class="bg">임기</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td rowspan="3">사외이사</td>
											<td>박경서</td>
											<td class="t-l">現) 유엔한국협회 고문<br>
											前) 제29대 대한적십자사 총재, 대법원 대법관 추천위 위원장,
											초대 경찰개혁위원회 위원장, 서울대/동국대 교수</td>
											<td>2021-05-18</td>
											<td>2년</td>
										</tr>
										<tr>
											<td>이병국</td>
											<td class="t-l">現) 이촌세무법인 회장<br>
											前) 서울지방국세청장, 서울지방국세청 납세지원국장, 서울지방국세청 세원관리국장</td>
											<td>2021-05-18</td>
											<td>2년</td>
										</tr>
										<tr>
											<td>이창재</td>
											<td class="t-l">現) 김앤장 법률사무소 변호사<br>
											前) 법무법인 아미쿠스 대표변호사, 제59대 법무부 차관, 서울북부지방검찰청 검사장</td>
											<td>2021-05-18</td>
											<td>2년</td>
										</tr>
										<tr>
											<td>기타<br>비상무이사</td>
											<td>김준석</td>
											<td class="t-l">現) 호반자산개발 대표이사<br>
												前) 호반건설 전략기획팀장, 한국수력원자력</td>
											<td>2021-05-18</td>
											<td>2년</td>
										</tr>
										<tr>
											<td rowspan="3">사내이사</td>
											<td>나형균</td>
											<td class="t-l">現) 대한전선㈜ 대표이사<br>
											前) 대한전선㈜ 대표집행임원, 안셀코리아㈜ 대표이사, ㈜마이다스 대표이사</td>
											<td>2021-05-18</td>
											<td>2년</td>
										</tr>
										<tr>
											<td>김윤수</td>
											<td class="t-l">現) 대한전선㈜ 부사장, 생산기술총괄(COO)<br>
											前) 대한전선㈜ 집행임원 / 초고압사업부장, 대한전선㈜ Quality Center 센터장</td>
											<td>2021-05-18</td>
											<td>2년</td>
										</tr>
										<tr>
											<td>이기원</td>
											<td class="t-l">現) 대한전선㈜ 전무이사, 재무기획총괄(CFO)<br>
											前) 대한전선㈜ 집행임원 / 재무기획실장, ㈜효성 중공업PG 전략본부 상무이사</td>
											<td>2021-05-18</td>
											<td>2년</td>
										</tr>
									</tbody>
								</table>
							</div>
							
						</div>

					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
				
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">이사회 내 위원회 현황</h3>
						</div>
				
						<div class="table-wrap" data-delighter>
							<div class="scroll-wrap">
								<table class="table-type v2">
									<colgroup>
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="bg">위원회명</th>
											<th scope="col" class="bg">위원</th>
											<th scope="col" class="bg">역할</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>사외이사<br>후보추천위원회</td>
											<td>박경서<br>김준석</td>
											<td class="t-l">사외이사후보 추천</td>
										</tr>
										<tr>
											<td>감사위원회</td>
											<td>이병국<br>
											박경서<br>
											이창재</td>
											<td class="t-l">회계 및 업무 감사</td>
										</tr>
										<tr>
											<td>ESG위원회</td>
											<td>이창재<br>
											박경서<br>
											이병국<br>
											이기원</td>
											<td class="t-l">내부거래 투명성 심의,<br>
												ESG 전략 방향성 및 실행과제 도출/점검</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
				
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
				
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">주주 구성 현황</h3>
						</div>
				
						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<div class="side-box">(단위 : 주, %)</div>
							</div>
							<table class="table-type v2">
								<colgroup>
									<col>
									<col>
									<col>
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="bg">주주명</th>
										<th scope="col" class="bg">지분율</th>
										<th scope="col" class="bg">주식수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>주식회사 호반산업</td>
										<td>40%</td>
										<td class="t-r">342,589,205</td>
									</tr>
									<tr>
										<td>금융기관</td>
										<td>6%</td>
										<td class="t-r">55,007,785</td>
									</tr>
									<tr>
										<td>소액주주 外</td>
										<td>54%</td>
										<td class="t-r">458,876,019</td>
									</tr>
									<tr>
										<td>계</td>
										<td>100%</td>
										<td class="t-r">856,473,009</td>
									</tr>
			
								</tbody>
							</table>
							<ul class="list-type v3">
								<li>2021년 사업보고서 기준</li>
							</ul>
						</div>
				
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
				
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">주주총회</h3>
							<p>
								대한전선은 현재 주주총회 소집 통지는 4주전, 소집 공지는 2주전에 시행하고 있습니다.<br>
								2021년 4월부 주주의 효율적인 투표와 편의성 개선을 위한 의결권 행사 방법으로, 전자투표제를 도입하였습니다.
							</p>
						</div>
				
						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">제 67기 정기 주주총회</h4>
							</div>
							<table class="table-type v2">
								<colgroup>
									<col class="col-type"><!-- 2022-10-26 -->
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="bg">개최일시</th>
										<td class="t-l">2022년 3월 30일</td>
									</tr>
									<tr>
										<th scope="row" class="bg">장소</th>
										<td class="t-l">충청남도 당진시 고대면 대호만로 870 대한전선㈜ 당진공장 대강당</td>
									</tr>
								</tbody>
							</table>
							<ul class="list-type v3">
								<li>총 참석 주식수 : 406,191,315 주<br>
								최대주주 및 특수관계인을 제외한 참석률 12.5% (63,600,928 주 / 507,005,143 주)</li>
							</ul>
						</div>
				
						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">보고</h4>
							</div>
							<table class="table-type v2">
								<colgroup>
									<col class="col-type"><!-- 2022-10-26 -->
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="bg">안건</th>
										<td class="t-l">1) 영업보고<br>2)감사보고<br>3) 내부회계관리제도의 운영실태보고</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">결의</h4>
							</div>
							<div class="scroll-wrap">
								<table class="table-type v2">
									<colgroup>
										<col class="col-type"><!-- 2022-10-26 -->
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="bg">안건번호</th>
											<th scope="col" class="bg">안건</th>
											<th scope="col" class="bg">*찬성 주식수(비율)</th>
											<th scope="col" class="bg">가결여부</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>제 1호 의안</td>
											<td>제 67기(2021.01.01~2021.12.31) 재무제표 승인의 건</td>
											<td>99.62%</td>
											<td>가결</td>
										</tr>
										<tr>
											<td>제 2호 의안</td>
											<td>이사 보수한도 승인의 건</td>
											<td>99.89%</td>
											<td>가결</td>
										</tr>
									</tbody>
								</table>
							</div>
							<ul class="list-type v3">
								<li>찬성 주식수(비율) : 찬성 주식수/출석 주식수</li>
							</ul>
						</div>
					</div>
				</div>
				</c:if>
				<c:if test="${LANG eq 'en' }">
					<div class="content-box">
					<div class="inner-box">

						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Board of Directors</h3>
							<p>The board of directors of Taihan Cable & Solution composed total of 7 directors,<br>
							including 3 outside directors, 1 other non-executive director, and 3 inside directors.
							</p>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="scroll-wrap">
								<table class="table-type v2">
									<colgroup>
										<col style="width: 15%">
										<col style="width: 15%">
										<col>
										<col style="width: 15%">
										<col style="width: 15%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="bg">Role</th>
											<th scope="col" class="bg">Name</th>
											<th scope="col" class="bg">Profile</th>
											<th scope="col" class="bg">Date of appointment</th>
											<th scope="col" class="bg">Term</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td rowspan="3">Outside Director
											</td>
											<td>Park Kyung Seo
											</td>
											<td class="t-l">UN Association of the ROK Adviser<br>
												Former) 29th President of the Korean Red Cross</td>
											<td>May 18, 2021</td>
											<td>2 years</td>
										</tr>
										<tr>
											<td>Lee Byung Kook</td>
											<td class="t-l">e-Chon Tax Accounting Corp. President
												<br>
												Former) The head of the NTS Seoul Regional Office
											</td>
											<td>May 18, 2021</td>
											<td>2 years</td>
										</tr>
										<tr>
											<td>Lee Chang Jae</td>
											<td class="t-l">Kim & Chang Law Firm Lawyer<br>
												Former) The 59th Vice-Minister of Justice</td>
											<td>May 18, 2021</td>
											<td>2 years</td>
										</tr>
										<tr>
											<td>Other<br>Non-Executive Director</td>
											<td>Kim Joon Seok</td>
											<td class="t-l">Hoban Asset Development CEO
											</td>
											<td>May 18, 2021</td>
											<td>2 years</td>
										</tr>
										<tr>
											<td rowspan="3">Inside Director</td>
											<td>Na Hyoung Kyun</td>
											<td class="t-l">Taihan Cable&Solution Co., Ltd. CEO</td>
											<td>May 18, 2021</td>
											<td>2 years</td>
										</tr>
										<tr>
											<td>Kim Youn Soo</td>
											<td class="t-l">Taihan Cable&Solution Co., Ltd. Vice president, COO/CSO</td>
											<td>May 18, 2021</td>
											<td>2 years</td>
										</tr>
										<tr>
											<td>Lee Ki Won</td>
											<td class="t-l">Taihan Cable&Solution Co., Ltd. Executive director, CFO</td>
											<td>May 18, 2021</td>
											<td>2 years</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>


					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">

						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Sub-Committees in BOD</h3>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="scroll-wrap">
								<table class="table-type v2">
									<colgroup>
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="bg">Committees</th>
											<th scope="col" class="bg">Name</th>
											<th scope="col" class="bg">Part</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Outside Director<br>Recommendation Committee</td>
											<td>Park Kyung Seo<br>
												Kim Joon Seok</td>
											<td class="t-l">Recommendation of candidates for outside directors</td>
										</tr>
										<tr>
											<td>Audit Committee</td>
											<td>Lee Byung Kook<br>
												Park Kyung Seo<br>
												Lee Chang Jae</td>
											<td class="t-l">Audit of accounting and business</td>
										</tr>
										<tr>
											<td>ESG Committee</td>
											<td>Lee Chang Jae<br>
												Park Kyung Seo<br>
												Lee Byung Kook<br>
												Lee Ki Won</td>
											<td class="t-l">Deliberation on internal transaction transparency<br>
												ESG strategy direction and implementation task deduction/review</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">

						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">Shareholder composition</h3>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<div class="side-box">(Unit: share, %)</div>
							</div>
							<table class="table-type v2">
								<colgroup>
									<col>
									<col>
									<col>
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="bg">Shareholder</th>
										<th scope="col" class="bg">Ratio</th>
										<th scope="col" class="bg">Number of shares</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Hoban E&C Co., Ltd</td>
										<td>40%</td>
										<td class="t-r">342,589,205</td>
									</tr>
									<tr>
										<td>Financial Institution</td>
										<td>6%</td>
										<td class="t-r">55,007,785</td>
									</tr>
									<tr>
										<td>Minority Shareholders, Etc</td>
										<td>54%</td>
										<td class="t-r">458,876,019</td>
									</tr>
									<tr>
										<td>Total</td>
										<td>100%</td>
										<td class="t-r">856,473,009</td>
									</tr>

								</tbody>
							</table>
							<ul class="list-type v3">
								<li> Based on 2021 Audit report</li>
							</ul>
						</div>

					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">

						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">General Shareholders’ Meeting
							</h3>
							<p>
								Taihan notifies and announces the general shareholders’ meeting convocation four weeks
								and two weeks prior to the meeting respectively. In April 2021, Taihan introduced the
								electronic voting system to ensure efficient voting and shareholders’ convenience in
								exercising their voting rights.
							</p>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">The 67th Regular Shareholders' Meeting</h4>
							</div>
							<table class="table-type v2">
								<colgroup>
									<col class="col-type"><!-- 2022-10-28 수정 -->
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="bg">Date</th>
										<td class="t-l">March 30, 2022</td>
									</tr>
									<tr>
										<th scope="row" class="bg">Location</th>
										<td class="t-l">870, Daehoman-ro, Godae-myeon, Dangjin-si, Chungcheongnam-do,
											Republic of Korea</td>
									</tr>
								</tbody>
							</table>
							<ul class="list-type v3">
								<li>Total number of shares attended : 406,191,315 shares<br>
									Attendance rate excluding largest shareholders and related parties 12.5% (63,600,928
									shares / 507,005,143 shares)
								</li>
							</ul>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">Report</h4>
							</div>
							<table class="table-type v2">
								<colgroup>
									<col class="col-type"><!-- 2022-10-28 수정 -->
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="bg">Agenda</th>
										<td class="t-l">1) Business report<br>2) Audit report<br>3) Report on the
											Operation of the Internal Accounting Management System
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="table-wrap" data-delighter>
							<div class="title-wrap3">
								<h4 class="title-type">Resolution</h4>
							</div>
							<div class="scroll-wrap">
								<table class="table-type v2">
									<colgroup>
										<col class="col-type"><!-- 2022-10-28 수정 -->
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col" class="bg">No.
											</th>
											<th scope="col" class="bg">Agenda</th>
											<th scope="col" class="bg">*Number of shares in favor (Ratio)
											</th>
											<th scope="col" class="bg">Status</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>No. 1</td>
											<td>Approval of the 67th Fiscal Year(2021.1.1 ~ 2021.12.31)
												Financial Statements
											</td>
											<td>99.62%</td>
											<td>Approval</td>
										</tr>
										<tr>
											<td>No. 2</td>
											<td>Approval of Ceiling for Total Directors’ Compesation</td>
											<td>99.89%</td>
											<td>Approval</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 2022-10-24 텍스트 수정 -->
							<ul class="list-type v3">
								<li>Number of shares in favor(Ratio) : Number of shares in favor / Number of shares
									present
								</li>
							</ul>
							<!-- //2022-10-24 텍스트 수정 -->
						</div>
					</div>
				</div>
				</c:if>

			</div>
			<!-- 2022-10-18 전체적으로 업데이트 -->


			<div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/info_esg_04.jpg)">
			<c:if test="${LANG eq 'ko' }">
				<div class="info-title">
					<span>투명하고 공정한 경영 준수를 위한<br></span>
					<span>대한전선의 기업지배구조 헌장을 확인해보세요.</span>
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/taihan_CorporateGovernanceCharter.pdf" class="btn-type btn-m w-type"  target="_blank">기업지배구조 헌장 다운로드<i class="ico-down"></i></a>
				</div>
			</c:if>
			<c:if test="${LANG eq 'en' }">
				<div class="info-title">
					<span>Let us introduce Taihan’s the Corporate Governance Charter<br></span>
					<span>aimed at establishing transparent and fair corporate culture.</span>
				</div>
				<div class="btn-wrap">
					<a href="/resources/files/Corporate Governace Charter of Taihan Cable & Solution Co., Ltd.pdf" class="btn-type btn-m w-type"  target="_blank">Download the Corporate Governance Charter<i class="ico-down"></i></a>
				</div>
			</c:if>
			</div>
		</section>
		<!--//content-->

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 2, '0304');
        },100);
    })
</script>





