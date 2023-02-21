<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<section id="content" class="sub-wrap ir">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_ir_01.jpg?v4)">
        <div class="sub-title">
            <h2 class="title-type">IR</h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />

    <div id="container" class="content-wrap">

        <div class="title-wrap">
            <h3 class="title-type"><spring:message code="stock.title" text="주식정보" /></h3>
            <p><spring:message code="stock.subdesc" text="대한전선의 주식정보를 제공합니다." /></p>
        </div>

        <div class="content-box">
            <div class="inner-box">

                <div class="title-wrap2">
                    <h4 class="title-type"><spring:message code="stock.subTitle1" text="발행 주식수" /></h4>
                    <div class="side-box"><spring:message code="stock.date" text="*2021.12.31 기준" /></div>
                </div>

                <div class="box-wrap">
                    <ul class="list-box">
                        <li>
                            <dl>
                                <dt><spring:message code="stock.text1" text="발행할 주식의 총수" /></dt>
                                <dd>2,000,000,000</dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt><spring:message code="stock.text2" text="발행한 주식의 총수" /></dt>
                                <dd>1,197,064,180</dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt><spring:message code="stock.text3" text="감소한 주식의 총수" /></dt>
                                <dd>340,591,171</dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt><spring:message code="stock.text4" text="자기 주식의 수" /></dt>
                                <dd>6,877,479</dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt><spring:message code="stock.text5" text="유통 주식수" /></dt>
                                <dd>849,595,530</dd>
                            </dl>
                        </li>
                    </ul>
                </div>


                <div class="table-wrap">
                    <div class="title-wrap2">
                        <h4 class="title-type"><spring:message code="stock.subTitle2" text="주주구성" /></h4>
                        <div class="side-box"><spring:message code="stock.date" text="*2021.12.31 기준" /></div>
                    </div>
                    <div class="chart-box">
                    	<c:if test="${LANG eq 'ko' }">
                        <img src="${CON_STATIC_URL}/asset/images/news/chart_ir_01.png?v4" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
                    	</c:if>
                    	<c:if test="${LANG eq 'en' }">
                        <img src="${CON_STATIC_URL}/asset/images/news/chart_ir_01_en.png?v2" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
                    	</c:if>
                    </div>
                    <table class="table-type">
                        <colgroup>
                            <col style="width:34%;">
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th scope="col"><spring:message code="stock.1text" text="구분" /></th>
                            <th scope="col"><spring:message code="stock.1table6" text="주식수" /></th>
                            <th scope="col"><spring:message code="stock.1table7" text="지분율(%)" /></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row" class="t-l"><i class="ico-circle"></i><spring:message code="stock.1table1" text="(주)호반산업" /></th>
                            <td class="t-r">342,589,205</td>
                            <td class="t-r">40.0</td>
                        </tr>
                        <tr>
                            <th scope="row" class="t-l"><i class="ico-circle v2"></i><spring:message code="stock.1table2" text="금융기관" /></th>
                            <td class="t-r">55,007,785</td>
                            <td class="t-r">6.3</td>
                        </tr>
                        <tr>
                            <th scope="row" class="t-l"><i class="ico-circle v3"></i><spring:message code="stock.1table3" text="기관 투자자" /></th>
                            <td class="t-r">33,922,812</td>
                            <td class="t-r">4.0</td>
                        </tr>
                        <tr>
                            <th scope="row" class="t-l"><i class="ico-circle v4"></i><spring:message code="stock.1table4" text="개인 투자자" /></th>
                            <td class="t-r">424,953,207</td>
                            <td class="t-r">49.6</td>
                        </tr>
                        <tr class="division">
                            <th scope="row" class="bg"><spring:message code="stock.1table5" text="계" /></th>
                            <td class="bg t-r">856,473,009</td>
                            <td class="bg t-r">100</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table-wrap">
                    <div class="title-wrap2">
                        <h4 class="title-type"><spring:message code="stock.subTitle3" text="의결권 현황" /></h4>
                        <div class="side-box"><spring:message code="stock.date" text="*2021.12.31 기준" /></div>
                    </div>
                    <table class="table-type">
                        <colgroup>
                            <col style="width:34%;">
                            <col>
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th scope="col"><spring:message code="stock.gubun" text="구분" /></th>
                            <th scope="col"><spring:message code="stock.1table6" text="주식수" /></th>
                            <th scope="col"><spring:message code="stock.bigo" text="비고" /></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row"><spring:message code="stock.2table1" text="발행주식총수" /></th>
                            <td class="t-r">856,473,009</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="stock.2table2" text="의결권 없는 주식수" /></th>
                            <!-- 2022-10-24 텍스트 수정 -->
							<td class="t-r">6,877,479</td>
							<!-- //2022-10-24 텍스트 수정 -->
                            <td><spring:message code="stock.2table4" text="자기주식" /></td>
                        </tr>
                        <tr>
                            <th scope="row"><spring:message code="stock.2table3" text="의결권 있는 주식수" /></th>
                            <td class="t-r">849,595,530</td>
                            <td></td>
                        </tr>

                        </tbody>
                    </table>
                </div>

                <div class="table-wrap">
                    <div class="title-wrap2">
                        <h4 class="title-type"><spring:message code="stock.subTitle4" text="일별 주가정보" /></h4>
                    </div>
                    <div class="scroll-wrap">
                        <table class="table-type">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col>
                                <col>
                                <col>
                                <col>
                            </colgroup>
                            <thead>
                            <tr>
                                <c:if test="${LANG eq 'ko'}">
                                <th scope="col"><spring:message code="stock.3table1" text="날짜" /></th>
                                <th scope="col"><spring:message code="stock.3table2" text="종가 (원)" /></th>
                                <th scope="col"><spring:message code="stock.3table3" text="전일비 (원)" /></th>
                                <th scope="col"><spring:message code="stock.3table4" text="시가 (원)" /></th>
                                <th scope="col"><spring:message code="stock.3table5" text="고가 (원)" /></th>
                                <th scope="col"><spring:message code="stock.3table6" text="저가 (원)" /></th>
                                <th scope="col"><spring:message code="stock.3table7" text="거래량 (주)" /></th>
                                </c:if>
                                <c:if test="${LANG eq 'en'}">
                                    <th scope="col">Date</th>
                                    <th scope="col">Close(￦)</th>
                                    <th scope="col">Change(￦)</th>
                                    <th scope="col">Open(￦)</th>
                                    <th scope="col">High(￦)</th>
                                    <th scope="col">Low(￦)</th>
                                    <th scope="col">Volume</th>
                                </c:if>
                            </tr>
                            </thead>
                            <tbody id="stockBody">
                                <%-- JS RENDER STCOK INFO--%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//content-->

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '040102')
        },100);

        //주식정보
        getStockInfo();

    })

    function getStockInfo(){
        var url = lang == 'ko' ?  "/news/ir/stockInfo" : "/en/news/ir/stockInfo";
        var option = {type: "GET", url : url};

        ajaxRestCall(option).then(function(res) {
            if(res.code == '00'){
                let data = res.data;
                let stockInfoTml = $.templates('#stockInfoTml');
                $('#stockBody').html(stockInfoTml.render(data));
            }
        })
    }
</script>


<%-- 주식 정보(일별)--%>
<script id="stockInfoTml" type="text/x-jsrender">
{{for}}
    <tr>
        <td>{{:~format(basdt,"dateDot")}}</td>
        <td class="t-r">{{:~format(clpr,'number')}}</td>
        <td class="t-r">
        {{if vs > 0 }}
            <span class="stock-up"><i class="ico-stock"></i>{{:~format(vs,"abs")}}</span>
        {{else vs < 0 }}
            <span class="stock-down"><i class="ico-stock down"></i>{{:~format(vs,"abs")}}</span>
        {{else vs == 0 }}
            <span class="">{{:~format(vs,"abs")}}</span>
        {{/if}}
        </td>
        <td class="t-r">{{:~format(mkp,"number")}}</td>
        <td class="t-r">{{:~format(hipr,"number")}}</td>
        <td class="t-r">{{:~format(lopr,"number")}}</td>
        <td class="t-r">{{:~format(trqu,"number")}}</td>
    </tr>
{{/for}}
</script>
