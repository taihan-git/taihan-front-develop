<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<section id="content" class="sub-wrap ir">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_ir_01.jpg?v4)">
        <div class="sub-title">
            <h2 class="title-type">IR</h2>
        </div>
    </div>

    <%-- GNB(S)--%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">

        <div class="title-wrap">
            <h3 class="title-type"><spring:message code="finance.title" text="재무정보" /></h3>
            <p><spring:message code="finance.subdesc" text="대한전선의 경영 실적을 확인할 수 있습니다." /></p>
        </div>

        <div class="content-box bg">
            <div class="inner-box">

                <div class="pdf-wrap">
                    <div class="title-wrap2">
                        <h4 class="title-type"><spring:message code="finance.reportTitle" text="최신보고서" /></h4>
                    </div>
                    <ul class="list-pdf">
                        <li>
                            <a href="/resources/files/Taihan_2021AR.pdf"  target="_blank" class="img-box"><img src="${CON_STATIC_URL}/asset/images/news/report_cover_2021.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></a>
                            <div class="title-box"><strong><spring:message code="finance.2021report1" text="2021 애뉴얼리포트" /></strong></div>
                            <div class="btn-wrap">
                                <a href="/resources/files/Taihan_2021AR.pdf"  target="_blank" class="btn-type download-type">
                                <span><spring:message code="finance.download" text="다운로드" /></span><i class="ico-down"></i></a>
                            </div>
                        </li>
                        <li>
                            <a href="/resources/files/${LANG eq 'ko' ?  '2021_report.zip' : '2021_report_en.pdf'}" class="img-box"><img src="${CON_STATIC_URL}/asset/images/news/report_cover.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></a>
                            <div class="title-box"><strong><spring:message code="finance.2021report2" text="2021 감사보고서" /></strong></div>
                            <div class="btn-wrap">
                                <a href="/resources/files/${LANG eq 'ko' ?  '2021_report.zip' : '2021_report_en.pdf'}" class="btn-type download-type"><span><spring:message code="finance.download" text="다운로드" /></span><i class="ico-down"></i></a>
                            </div>
                        </li>
                        <c:if test="${LANG eq 'ko'}">
                        <li>
                            <a href="/resources/files/2022_03_business.pdf"  target="_blank" class="img-box"><img src="${CON_STATIC_URL}/asset/images/news/report_business_cover.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></a>
                            <div class="title-box"><strong><spring:message code="finance.2021report3" text="2022년 3분기 사업보고서" /></strong></div>
                            <div class="btn-wrap">
                                <a href="/resources/files/2022_03_business.pdf" class="btn-type download-type"  target="_blank"><span><spring:message code="finance.download" text="다운로드" /></span><i class="ico-down"></i></a>
                            </div>
                        </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
		<c:if test="${LANG eq 'ko'}">
		
        <div class="content-box">
            <div class="inner-box">
                <div class="title-wrap2">
                    <h4 class="title-type"><spring:message code="finance.statements" text="재무제표" /></h4>
                </div>

                <div class="table-wrap type2">
                    <div class="title-wrap3">
                        <h5 class="title-type"><spring:message code="finance.tableTitle1" text="연결 재무상태표" /></h5>
                        <div class="side-box"><spring:message code="finance.unit" text="(단위 : 백만원)" /></div>
                    </div>
                    <div class="scroll-wrap">
	                    <table class="table-type">
	                        <colgroup>
	                            <col style="width:25%;">
	                            <col>
	                            <col>
	                            <col>
	                        </colgroup>
	                        <thead>
	                        <tr>
	                            <th scope="col"><spring:message code="finance.1table1" text="구분" /></th>
	                            <th scope="col">2021</th>
	                            <th scope="col">2020</th>
	                            <th scope="col">2019</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table2" text="유동자산" /></th>
	                            <td class="t-r">939,159</td>
	                            <td class="t-r">721,463</td>
	                            <td class="t-r">718,606</td>
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table3" text="비유동자산" /></th>
	                            <td class="t-r">481,712</td>
	                            <td class="t-r">478,000</td>
	                            <td class="t-r">516,470</td>
	                        </tr>
	                        <tr class="division">
	                            <th scope="row" class="bg"><spring:message code="finance.1table4" text="자산총계" /></th>
	                            <td class="t-r">1,420,871</td>
	                            <td class="t-r">1,199,463</td>
	                            <td class="t-r">1,235,076</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table5" text="유동부채" /></th>
	                            <td class="t-r">757,750</td>
	                            <td class="t-r">800,880</td>
	                            <td class="t-r">882,166</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table6" text="비유동부채" /></th>
	                            <td class="t-r">275,360</td>
	                            <td class="t-r">38,949</td>
	                            <td class="t-r">40,263</td>
	
	                        </tr>
	                        <tr class="division">
	                            <th scope="row" class="bg"><spring:message code="finance.1table7" text="부채총계" /></th>
	                            <td class="t-r">1,033,110</td>
	                            <td class="t-r">839,829</td>
	                            <td class="t-r">922,429</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table8" text="지배기업소유주지분" /></th>
	                            <td class="t-r">373,300</td>
	                            <td class="t-r">344,439</td>
	                            <td class="t-r">295,743</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table9" text="비지배지분" /></th>
	                            <td class="t-r">14,461</td>
	                            <td class="t-r">15,196</td>
	                            <td class="t-r">16,904</td>
	
	                        </tr>
	                        <tr class="division">
	                            <th scope="row" class="bg"><spring:message code="finance.1table10" text="자본총계" /></th>
	                            <td class="t-r">387,761</td>
	                            <td class="t-r">359,635</td>
	                            <td class="t-r">312,647</td>
	
	                        </tr>
	                        </tbody>
	                    </table>
                    </div>
                </div>

                <div class="table-wrap type2">
                    <div class="title-wrap3">
                        <h5 class="title-type"><spring:message code="finance.tableTitle2" text="별도 재무상태표" /></h5>
                        <div class="side-box"><spring:message code="finance.unit" text="(단위 : 백만원)" /></div>
                    </div>
                    <div class="scroll-wrap">
	                    <table class="table-type">
	                        <colgroup>
	                            <col style="width:25%;">
	                            <col>
	                            <col>
	                            <col>
	                        </colgroup>
	                        <thead>
	                        <tr>
	                            <th scope="col"><spring:message code="finance.2table1" text="구분" /></th>
	                            <th scope="col">2021</th>
	                            <th scope="col">2020</th>
	                            <th scope="col">2019</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table2" text="유동자산" /></th>
	                            <td class="t-r">837,386</td>
	                            <td class="t-r">632,444</td>
	                            <td class="t-r">623,040</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table3" text="비유동자산" /></th>
	                            <td class="t-r">530,238</td>
	                            <td class="t-r">533,327</td>
	                            <td class="t-r">570,470</td>
	
	                        </tr>
	                        <tr class="division">
	                            <th scope="row" class="bg"><spring:message code="finance.1table4" text="자산총계" /></th>
	                            <td class="t-r">1,367,624</td>
	                            <td class="t-r">1,165,771</td>
	                            <td class="t-r">1,193,510</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table5" text="유동부채" /></th>
	                            <td class="t-r">704,804</td>
	                            <td class="t-r">753,972</td>
	                            <td class="t-r">824,417</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.1table6" text="비유동부채" /></th>
	                            <td class="t-r">271,007</td>
	                            <td class="t-r">38,149</td>
	                            <td class="t-r">38,775</td>
	
	                        </tr>
	                        <tr class="division">
	                            <th scope="row" class="bg"><spring:message code="finance.1table7" text="부채총계" /></th>
	                            <td class="t-r">975,811</td>
	                            <td class="t-r">792,121</td>
	                            <td class="t-r">863,192</td>
	
	                        </tr>
	                        <tr class="division">
	                            <th scope="row" class="bg"><spring:message code="finance.1table10" text="자본총계" /></th>
	                            <td class="t-r">391,813</td>
	                            <td class="t-r">373,650</td>
	                            <td class="t-r">330,318</td>
	
	                        </tr>
	                        </tbody>
	                    </table>
                    </div>
                </div>

                <div class="table-wrap type2">
                    <div class="title-wrap3">
                        <h5 class="title-type"><spring:message code="finance.tableTitle3" text="연결 손익계산서" /></h5>
                        <div class="side-box"><spring:message code="finance.unit" text="(단위 : 백만원)" /></div>
                    </div>
                    <div class="scroll-wrap">
	                    <table class="table-type">
	                        <colgroup>
	                            <col style="width:25%;">
	                            <col>
	                            <col>
	                            <col>
	                        </colgroup>
	                        <thead>
	                        <tr>
	                            <th scope="col"><spring:message code="finance.2table1" text="구분" /></th>
	                            <th scope="col">2021</th>
	                            <th scope="col">2020</th>
	                            <th scope="col">2019</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table1" text="매출액" /></th>
	                            <td class="t-r">1,997,710</td>
	                            <td class="t-r">1,596,842</td>
	                            <td class="t-r">1,554,740</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table2" text="매출총이익" /></th>
	                            <td class="t-r">124,777</td>
	                            <td class="t-r">129,407</td>
	                            <td class="t-r">99,087</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table3" text="영업이익" /></th>
	                            <td class="t-r">39,462</td>
	                            <td class="t-r">56,645</td>
	                            <td class="t-r">33,222</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table4" text="영업외손익" /></th>
	                            <td class="t-r">-16,860</td>
	                            <td class="t-r">-61,631</td>
	                            <td class="t-r">-26,951</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table5" text="법인세차감전순이익" /></th>
	                            <td class="t-r">22,602</td>
	                            <td class="t-r">-4,986</td>
	                            <td class="t-r">6,271</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table6" text="당기순이익" /></th>
	                            <td class="t-r">28,937</td>
	                            <td class="t-r">2,684</td>
	                            <td class="t-r">-12,628</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table7" text="기타포괄손익" /></th>
	                            <td class="t-r">1,762</td>
	                            <td class="t-r">45,594</td>
	                            <td class="t-r">3,792</td>
	
	                        </tr>
	                        </tbody>
	                    </table>
                   </div>
                </div>

                <div class="table-wrap type2">
                    <div class="title-wrap3">
                        <h5 class="title-type"><spring:message code="finance.tableTitle4" text="별도 손익계산서" /></h5>
                        <div class="side-box"><spring:message code="finance.unit" text="(단위 : 백만원)" /></div>
                    </div>
                    <div class="scroll-wrap">
	                    <table class="table-type">
	                        <colgroup>
	                            <col style="width:25%;">
	                            <col>
	                            <col>
	                            <col>
	                        </colgroup>
	                        <thead>
	                        <tr>
	                            <th scope="col"><spring:message code="finance.2table1" text="구분" /></th>
	                            <th scope="col">2021</th>
	                            <th scope="col">2020</th>
	                            <th scope="col">2019</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table1" text="매출액" /></th>
	                            <td class="t-r">1,861,165</td>
	                            <td class="t-r">1,448,316</td>
	                            <td class="t-r">1,394,968</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table2" text="매출총이익" /></th>
	                            <td class="t-r">101,816</td>
	                            <td class="t-r">103,699</td>
	                            <td class="t-r">75,261</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table3" text="영업이익" /></th>
	                            <td class="t-r">34,097</td>
	                            <td class="t-r">51,439</td>
	                            <td class="t-r">25,864</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table4" text="영업외손익" /></th>
	                            <td class="t-r">-15,515</td>
	                            <td class="t-r">-35,557</td>
	                            <td class="t-r">-37,899</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table5" text="법인세차감전순이익" /></th>
	                            <td class="t-r">18,582</td>
	                            <td class="t-r">15,882</td>
	                            <td class="t-r">-12,034</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table6" text="당기순이익" /></th>
	                            <td class="t-r">21,489</td>
	                            <td class="t-r">24,385</td>
	                            <td class="t-r">-28,422</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.3table7" text="기타포괄손익" /></th>
	                            <td class="t-r">-2,572</td>
	                            <td class="t-r">20,238</td>
	                            <td class="t-r">1,039</td>
	
	                        </tr>
	                        </tbody>
	                    </table>
                    </div>
                </div>

                <div class="table-wrap type2">
                    <div class="title-wrap3">
                        <h5 class="title-type"><spring:message code="finance.tableTitle5" text="현금 흐름표" /></h5>
                        <div class="side-box"><spring:message code="finance.unit" text="(단위 : 백만원)" /></div>
                    </div>
                    <div class="scroll-wrap">
	                    <table class="table-type">
	                        <colgroup>
	                            <col style="width:30%;">
	                            <col>
	                            <col>
	                            <col>
	                        </colgroup>
	                        <thead>
	                        <tr>
	                            <th scope="col"><spring:message code="finance.2table1" text="구분" /></th>
	                            <th scope="col">2021</th>
	                            <th scope="col">2020</th>
	                            <th scope="col">2019</th>
	                        </tr>
	                        </thead>
	                        <tbody>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.5table1" text="I. 영업활동으로 인한 현금흐름" /></th>
	                            <td class="t-r">-19,314</td>
	                            <td class="t-r">16,662</td>
	                            <td class="t-r">79,182</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.5table2" text="II. 투자활동으로 인한 현금흐름" /></th>
	                            <td class="t-r">26,010</td>
	                            <td class="t-r">-12,511</td>
	                            <td class="t-r">-12,146</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.5table3" text="III. 재무활동으로 인한 현금흐름" /></th>
	                            <td class="t-r">5,685</td>
	                            <td class="t-r">-69,870</td>
	                            <td class="t-r">16,745</td>
	
	                        </tr>
	                        <tr class="division">
	                            <th scope="row" class="bg"><spring:message code="finance.5table4" text="현금 및 현금성자산의 증감(I+II+III)" /></th>
	                            <td class="t-r">12,381</td>
	                            <td class="t-r">-65,719</td>
	                            <td class="t-r">83,781</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.5table5" text="기초의 현금 및 현금성자산" /></th>
	                            <td class="t-r">130,557</td>
	                            <td class="t-r">198,785</td>
	                            <td class="t-r">113,220</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.5table6" text="현금 및 현금성자산의 환율변동" /></th>
	                            <td class="t-r">4,206</td>
	                            <td class="t-r">-1,838</td>
	                            <td class="t-r">1,342</td>
	
	                        </tr>
	                        <tr>
	                            <th scope="row" class="bg"><spring:message code="finance.5table7" text="기말의 현금 및 현금성자산" /></th>
	                            <td class="t-r">147,921</td>
	                            <td class="t-r">130,557</td>
	                            <td class="t-r">198,785</td>
	                        </tr>
	                        </tbody>
	                    </table>
	                </div>
                </div>

            </div>
        </div>
    </c:if>
    <c:if test="${LANG eq 'en'}">
    <div class="content-box">
					<div class="inner-box">
						<div class="title-wrap2">
							<h4 class="title-type">Financial Statements</h4>
						</div>

						<div class="table-wrap type2">
							<div class="title-wrap3">
								<h5 class="title-type">Consolidated Financial<br>Statements</h5>
								<div class="side-box">(Unit : Hundred Million Won)</div>
							</div>
							<div class="scroll-wrap">
								<table class="table-type">
									<colgroup>
										<col style="width:25%;">
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Category</th>
											<th scope="col">2021</th>
											<th scope="col">2020</th>
											<th scope="col">2019</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="bg">Current Assets
											</th>
											<td class="t-r">939,159</td>
											<td class="t-r">721,463</td>
											<td class="t-r">718,606</td>
										</tr>
										<tr>
											<th scope="row" class="bg">Non Current Assets
											</th>
											<td class="t-r">481,712</td>
											<td class="t-r">478,000</td>
											<td class="t-r">516,470</td>
										</tr>
										<tr class="division">
											<th scope="row" class="bg">Asset Total
											</th>
											<td class="t-r">1,420,871</td>
											<td class="t-r">1,199,463</td>
											<td class="t-r">1,235,076</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Current Liabilities
											</th>
											<td class="t-r">757,750</td>
											<td class="t-r">800,880</td>
											<td class="t-r">882,166</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Non-Current Liabilities
											</th>
											<td class="t-r">275,360</td>
											<td class="t-r">38,949</td>
											<td class="t-r">40,263</td>
	
										</tr>
										<tr class="division">
											<th scope="row" class="bg">Liabilities Total
											</th>
											<td class="t-r">1,033,110</td>
											<td class="t-r">839,829</td>
											<td class="t-r">922,429</td>
	
										</tr>
										<tr>
											<!-- 2022-11-25 수정 -->
											<th scope="row" class="bg">Equity attributable<br>to owners
												of the parent
											</th>
											<!-- //2022-11-25 수정 -->
											<td class="t-r">373,300</td>
											<td class="t-r">344,439</td>
											<td class="t-r">295,743</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Non-controlling intrests
											</th>
											<td class="t-r">14,461</td>
											<td class="t-r">15,196</td>
											<td class="t-r">16,904</td>
	
										</tr>
										<tr class="division">
											<th scope="row" class="bg">Total Equities
											</th>
											<td class="t-r">387,761</td>
											<td class="t-r">359,635</td>
											<td class="t-r">312,647</td>
	
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="table-wrap type2">
							<!-- 수정 -->
							<div class="title-wrap3">
								<h5 class="title-type">Separate Financial Statements
								</h5>
								<div class="side-box">(Unit : Hundred Million Won)
								</div>
							</div>
							<div class="scroll-wrap">
								<table class="table-type">
									<colgroup>
										<col style="width:25%;">
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Category
											</th>
											<th scope="col">2021</th>
											<th scope="col">2020</th>
											<th scope="col">2019</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="bg">Current Assets
											</th>
											<td class="t-r">837,386</td>
											<td class="t-r">632,444</td>
											<td class="t-r">623,040</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Non Current Assets
											</th>
											<td class="t-r">530,238</td>
											<td class="t-r">533,327</td>
											<td class="t-r">570,470</td>
	
										</tr>
										<tr class="division">
											<th scope="row" class="bg">Asset Total
											</th>
											<td class="t-r">1,367,624</td>
											<td class="t-r">1,165,771</td>
											<td class="t-r">1,193,510</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Current Liabilities
											</th>
											<td class="t-r">704,804</td>
											<td class="t-r">753,972</td>
											<td class="t-r">824,417</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Non-Current Liabilities
											</th>
											<td class="t-r">271,007</td>
											<td class="t-r">38,149</td>
											<td class="t-r">38,775</td>
	
										</tr>
										<tr class="division">
											<th scope="row" class="bg">Liabilities Total
											</th>
											<td class="t-r">975,811</td>
											<td class="t-r">792,121</td>
											<td class="t-r">863,192</td>
	
										</tr>
										<tr class="division">
											<th scope="row" class="bg">Total Equities
											</th>
											<td class="t-r">391,813</td>
											<td class="t-r">373,650</td>
											<td class="t-r">330,318</td>
	
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="table-wrap type2">
							<!-- 수정 -->
							<div class="title-wrap3">
								<h5 class="title-type">Consolidated Statement of <br>profit and loss
								</h5>
								<div class="side-box">(Unit : Hundred Million Won)
								</div>
							</div>
							<div class="scroll-wrap">
								<table class="table-type">
									<colgroup>
										<col style="width:25%;">
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Category</th>
											<th scope="col">2021</th>
											<th scope="col">2020</th>
											<th scope="col">2019</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="bg">Revenue</th>
											<td class="t-r">1,997,710</td>
											<td class="t-r">1,596,842</td>
											<td class="t-r">1,554,740</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Gross Profit
											</th>
											<td class="t-r">124,777</td>
											<td class="t-r">129,407</td>
											<td class="t-r">99,087</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Operating profit
											</th>
											<td class="t-r">39,462</td>
											<td class="t-r">56,645</td>
											<td class="t-r">33,222</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Non Operating Profit & Loss
											</th>
											<td class="t-r">-16,860</td>
											<td class="t-r">-61,631</td>
											<td class="t-r">-26,951</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Income before income Taxes
											(or Loss before Income Taxes)</th>
											<td class="t-r">22,602</td>
											<td class="t-r">-4,986</td>
											<td class="t-r">6,271</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Net Income
											</th>
											<td class="t-r">28,937</td>
											<td class="t-r">2,684</td>
											<td class="t-r">-12,628</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Other Comprehensive <br>income
											</th>
											<td class="t-r">1,762</td>
											<td class="t-r">45,594</td>
											<td class="t-r">3,792</td>
	
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="table-wrap type2">
							<!-- 수정 -->
							<div class="title-wrap3">
								<h5 class="title-type">Separate Statement of profit and loss
								</h5>
								<div class="side-box">(Unit : Hundred Million Won)
								</div>
							</div>
							<div class="scroll-wrap">
								<table class="table-type">
									<colgroup>
										<col style="width:25%;">
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Category</th>
											<th scope="col">2021</th>
											<th scope="col">2020</th>
											<th scope="col">2019</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="bg">Revenue</th>
											<td class="t-r">1,861,165</td>
											<td class="t-r">1,448,316</td>
											<td class="t-r">1,394,968</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Gross Profit
											</th>
											<td class="t-r">101,816</td>
											<td class="t-r">103,699</td>
											<td class="t-r">75,261</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Operating profit
											</th>
											<td class="t-r">34,097</td>
											<td class="t-r">51,439</td>
											<td class="t-r">25,864</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Non Operating Profit & Loss
											</th>
											<td class="t-r">-15,515</td>
											<td class="t-r">-35,557</td>
											<td class="t-r">-37,899</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Income before income Taxes
											(or Loss before Income Taxes)
											</th>
											<td class="t-r">18,582</td>
											<td class="t-r">15,882</td>
											<td class="t-r">-12,034</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Net Income
											</th>
											<td class="t-r">21,489</td>
											<td class="t-r">24,385</td>
											<td class="t-r">-28,422</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">Other Comprehensive income
											</th>
											<td class="t-r">-2,572</td>
											<td class="t-r">20,238</td>
											<td class="t-r">1,039</td>
	
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div class="table-wrap type2">
							<!-- 수정 -->
							<div class="title-wrap3">
								<h5 class="title-type">Statement of cash flow
								</h5>
								<div class="side-box">(Unit : Hundred Million Won)
								</div>
							</div>
							<div class="scroll-wrap">
								<table class="table-type">
									<colgroup>
										<col style="width:30%;">
										<col>
										<col>
										<col>
									</colgroup>
									<thead>
										<tr>
											<th scope="col">Category</th>
											<th scope="col">2021</th>
											<th scope="col">2020</th>
											<th scope="col">2019</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row" class="bg">I. Cash Flow from Operations
											</th>
											<td class="t-r">-19,314</td>
											<td class="t-r">16,662</td>
											<td class="t-r">79,182</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">II. Cash Flows from Investing Activites
											</th>
											<td class="t-r">26,010</td>
											<td class="t-r">-12,511</td>
											<td class="t-r">-12,146</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">III. Cash Flows from financing Activites
											</th>
											<td class="t-r">5,685</td>
											<td class="t-r">-69,870</td>
											<td class="t-r">16,745</td>
	
										</tr>
										<tr class="division">
											<th scope="row" class="bg">IV. Increase (Decrease) in Cash (I+II+III)
											</th>
											<td class="t-r">12,381</td>
											<td class="t-r">-65,719</td>
											<td class="t-r">83,781</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">V. Cash at the beginning of the year
											</th>
											<td class="t-r">130,557</td>
											<td class="t-r">198,785</td>
											<td class="t-r">113,220</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">VI. Efect of Exchange Rate on Cash & Cash Equivalents
											</th>
											<td class="t-r">4,206</td>
											<td class="t-r">-1,838</td>
											<td class="t-r">1,342</td>
	
										</tr>
										<tr>
											<th scope="row" class="bg">VII. Cash & Cash Equivalents, End of the Year
											</th>
											<td class="t-r">147,921</td>
											<td class="t-r">130,557</td>
											<td class="t-r">198,785</td>
	
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
			<!-- //2022-10-26 텍스트 수정 -->
    </c:if>
    </div>

    <div class="info-wrap" style="background-image: url(${CON_STATIC_URL}/asset/images/news/info_ir_01.jpg)">
        <div class="info-title">
       		<c:if test="${LANG eq 'ko'}" >
            <span>더 많은 자료는</span><span>IR 자료실에서 확인하실 수 있습니다.</span>
       		</c:if>
       		<c:if test="${LANG eq 'en'}" >
            <span>For more information, please go to the IR Archive.</span>
       		</c:if>
        </div>
        <div class="btn-wrap">
            <a href="${LANG eq 'ko' ? '/customer/irRelation' : '/en/customer/irRelation'}" class="btn-type btn-m w-type"><spring:message code="finance.IrRsroom" text="IR 자료실로 이동" /><i class="ico-arr rgt"></i></a>
        </div>
    </div>
</section>
<!--//content-->

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '040101')
        },100);
    })
</script>