<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<section id="content" class="sub-wrap business">
	
	<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/business/visual_business_04.jpg?v4)">
		<div class="sub-title">
			<h2 class="title-type"><spring:message code="globalNetwork.title" text="글로벌 네트워크"></spring:message></h2>
		</div>
	</div>

    <%-- GNB(S)--%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
    <%-- GNB(E) --%>

    <div id="container" class="content-wrap">
		<div class="content-box">
			<div class="inner-box">
				<div class="title-wrap">
					<h3 class="title-type"><spring:message code="globalNetwork.detailtitle" text="네트워크 상세 정보"></spring:message></h3>
					<p><spring:message code="globalNetwork.desc" text="대한전선의 대륙별 네트워크 상세 정보를 확인하세요."></spring:message></p>
				</div>
			</div>
		</div>
		
		<div class="map-wrap">
			<div class="map-box" id="map-box">
				<c:if test="${LANG eq 'ko' }">
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_all.svg?v1"></object>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<!-- 2022-10-26 지도 영문 -->
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_all_en.svg?v1"></object>
				<!-- //2022-10-26 지도 영문 -->
				</c:if>
			</div>
		</div>
		<c:if test="${LANG eq 'ko' }">
		<div class="content-box">
			<div class="inner-box">

				<!-- tab -->
				<div class="tab-wrap">
					<ul class="tab-type">
						<li><a href="/business/globalNetwork/korea#map-box"><span>국내<em class="count">(6)</em></span></a></li>
						<li><a href="/business/globalNetwork/america#map-box"><span>아메리카<em class="count">(3)</em></span></a></li>
						<li><a href="/business/globalNetwork/europe#map-box"><span>유럽<em class="count">(5)</em></span></a></li>
						<li><a href="/business/globalNetwork/middle#map-box"><span>중동<em class="count">(8)</em></span></a></li>
						<li><a href="/business/globalNetwork/oceania#map-box"><span>오세아니아<em class="count">(2)</em></span></a></li>
						<li><a href="/business/globalNetwork/asia#map-box"><span>아시아<em class="count">(4)</em></span></a></li>
						<li><a href="/business/globalNetwork/africa#map-box"><span>아프리카<em class="count">(1)</em></span></a></li>
						<li class="active"><a href="/business/globalNetwork/all#map-box"><span>전체<em class="count">(29)</em></span></a></li><!-- 2022-11-11 수정 -->
					</ul>
				</div>
				<!-- //tab -->

				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-store">
							<!-- 국내 -->
							<li>
								<div class="title-box">
									<span class="label v2">공장</span>
									<strong class="title">당진 공장</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>충청남도 당진시 고대면 대호만로 870<a href="https://goo.gl/maps/Gjh9JLY2hHRMF9VK9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:041-360-9114">041-360-9114</a></dd>
										</dl>
									</li>
								</ul>
								<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjin" class="btn-detail">자세히보기<i class="ico-arr"></i></a>
							</li>
							<li>
								<div class="title-box">
									<span class="label v2">공장</span>
									<strong class="title">당진 전력기기 공장</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>충남 당진시 고대면 보덕포로 542<a href="https://goo.gl/maps/FFAAcJghmdqwkWzC8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:041-359-9114">041-359-9114</a></dd>
										</dl>
									</li>
								</ul>
								<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjinElect" class="btn-detail">자세히보기<i class="ico-arr"></i></a>
							</li>
							<li>
								<div class="title-box">
									<span class="label v2">본사</span>
									<strong class="title">서울 사옥</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>서울특별시 서초구 양재대로2길 18 호반파크 2관<a href="https://goo.gl/maps/BifMieBV2o4VtBtJA" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:02-316-9114">02-316-9114</a></dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v2">본점</span>
									<strong class="title">안양 본점</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>경기도 안양시 동안구 시민대로 317 대한스마트타워<a href="https://goo.gl/maps/67VPivZTVpCLAoUx8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:02-316-9114">02-316-9114</a></dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v2">영업소</span>
									<strong class="title">호남</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>광주광역시 광산구 무진대로 282 광주무역회관 4층<a href="https://goo.gl/maps/s8YouWEz6nK2BDRP7" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:062-528-2055">062-528-2055</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>062-527-8769</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v2">영업소</span>
									<strong class="title">부산</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>부산광역시 연제구 법원로 12 로윈타워 1303호<a href="https://goo.gl/maps/sjZ3szm12Q4VFokJA" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:051-636-5904">051-636-5904~6</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>051-643-4285</dd>
										</dl>
									</li>
								</ul>
							</li>
							<!-- //국내 -->
							<!-- 아메리카 -->
							<li>
								<div class="title-box">
									<span class="label v4">영업법인</span>
									<strong class="title">Taihan USA</strong>
								</div>
								<!-- 2022-10-28 수정 -->
								<ul class="list-info">
									<li>
										<p class="desc">
											Taihan USA는 미국 진출을 본격화하기 위해 2000년에 설립되었습니다. 독보적인 품질과 기술력을 바탕으로<br>
											북미 전역에 초고압과 중저압, 가공선 등 다양한 제품을 제공해오며, 미국 내 주요 공급자로 확고히 자리매김했습니다.
										</p>
									</li>
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>12070 Telegraph Rd., Suite 324, Santa Fe Springs, CA 90670, USA
												<a href="https://maps.app.goo.gl/L4gis1ZoJ3LLWnvo6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+15629468500">+1-562-946-8500</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+1-562-946-0200</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:cwlee@taihanusa.com" target="_blank">cwlee@taihanusa.com</a> 
											</dd>
										</dl>
									</li>
								</ul>
								<!-- //2022-10-28 수정 -->
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">LA</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>12070 Telegraph Rd. Ste 324, Santa Fe Springs CA90670, USA<a href="https://goo.gl/maps/Nkik2uBRpYudbCac8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+15629468500">+1-562-946-8500</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+1-562-946-0200</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd> 
												<a href="mailto:krkycho2@taihanusa.com">krkycho2@taihanusa.com</a><br>
												<a href="mailto:bryce@taihanusa.com">bryce@taihanusa.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">뉴저지</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>560 Sylvan Ave 3rd Floor Englewood Cliffs, NJ 07632, USA<a href="https://goo.gl/maps/wazFu4FwXTCX5mqM8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+12015692493">+1-201-569-2493</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:okkwon@taihanusa.com">okkwon@taihanusa.com</a><br> 
												<a href="mailto:manny@taihanusa.com">manny@taihanusa.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<!-- //아메리카 -->

							<!-- 유럽 -->
							<li>
								<div class="title-box">
									<span class="label v4">영업법인</span>
									<strong class="title">Taihan Netherlands</strong>
								</div>
								<ul class="list-info">
									<!-- 2022-10-25 텍스트 수정 -->
									<li>
										<p class="desc">
											전력산업의 본고장으로 꼽히는 유럽 시장에서의 수주 경쟁력을 강화하기 위해 2019년
											설립되었습니다.<br>
											현지 산업, 경제 등을 고려한 맞춤형 영업 전략을 펼치며, 수주 영토를 확장해 나가고 있습니다.</p>
									</li>
									<!-- //2022-10-25 텍스트 수정 -->
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Stroombaan 4(1181 VX), Amsterveen, Netherlands<a href="https://goo.gl/maps/JTkdjwUVvvjd96FX8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd>
												<a href="tel:+31203583541">+31-20-358-3541</a><br>
												<a href="tel:+31682367152">+31-6-8236-7152</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a><br/>
												<a href="mailto:zadeljd@taihan.com">zadeljd@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">영국</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>9 Teddington Business Park, Station Road, Teddington, Middlesex
												TW11 9BQ, UK<a href="https://goo.gl/maps/US2Vr4gSifH1vHHD9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+442089434901">+44-20-8943-4901</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:dwafe122@taihan.com">dwafe122@taihan.com</a><br>
												<a href="mailto:songyun.seol@taihan.com">songyun.seol@taihan.com</a><br>
												<a href="mailto:info@taihan.co.uk">info@taihan.co.uk</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">덴마크</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Herlev Hovedgade 195, DK-2730 Herlve, Denmark<a href="https://goo.gl/maps/Z2jFu1yjhDBd1yVs6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li> 
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+31203583541">+31-20-358-3541</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">스웨덴</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Drottninggatan 86 111 36 STOCKHOLM<a href="https://goo.gl/maps/YHDfsLYNzLoNay1K9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+31203583541">+31-20-358-3541</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">러시아</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>117335, Moscow, Vavilova street, 69/75, office no. 1133,
												Russia<a href="https://goo.gl/maps/ezY6s8qWuFXbecUAA" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+74952259591">+7-495-225-9591</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:alexlee@taihan.com">alexlee@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<!-- //유럽 -->

							<!-- 중동 -->
							<li>
								<div class="title-box">
									<span class="label v4">생산법인</span>
									<strong class="title">Saudi Taihan</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Exit-12, Al Kharj Road, PO Box 31329, Riyadh 11497, K.S.A<a href="https://goo.gl/maps/iCEepVxgKifraXxs9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+966112142012">+966-11-214-2012</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+966-11-214-2337</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:frkwak@taihan.com">frkwak@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
								<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/saudi" class="btn-detail">자세히보기<i class="ico-arr"></i></a>
							</li>

							<!-- 2022-10-19 추가 -->
<%--							<li>--%>
<%--								<div class="title-box">--%>
<%--									<span class="label v4">생산법인</span>--%>
<%--									<strong class="title">Saudi Taihan <br />Cable & Solution</strong>--%>
<%--								</div>--%>
<%--								<ul class="list-info">--%>
<%--									<li>--%>
<%--										<dl>--%>
<%--											<dt><i class="ico-location"></i>주소</dt>--%>
<%--											<dd>Office No. 18, 3rd Floor, Complex(7) Commercial Center, King Abdul Aziz Road (Near Kingdom Hospital & Kingdom School)--%>
<%--												P.O.Box 300201, Riyadh 11372, KSA<a href="#" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>--%>
<%--										</dl>--%>
<%--									</li>--%>
<%--									<li>--%>
<%--										<dl>--%>
<%--											<dt><i class="ico-tel"></i>연락처</dt>--%>
<%--											<dd><a href="tel:+966112301554">+966-11-230-1554</a></dd>--%>
<%--										</dl>--%>
<%--									</li>--%>
<%--									<li>--%>
<%--										<dl>--%>
<%--											<dt><i class="ico-fax"></i>팩스</dt>--%>
<%--											<dd>+966-11-229-7754</dd>--%>
<%--										</dl>--%>
<%--									</li>--%>
<%--									<li>--%>
<%--										<dl>--%>
<%--											<dt><i class="ico-mail"></i>메일</dt>--%>
<%--											<dd>--%>
<%--												<a href="mailto:frkwak@taihan.com">frkwak@taihan.com</a>--%>
<%--											</dd>--%>
<%--										</dl>--%>
<%--									</li>--%>
<%--								</ul>--%>
<%--							</li>--%>
							<!-- //2022-10-19 추가 -->

							<li>
								<div class="title-box">
									<span class="label v4">생산법인</span>
									<strong class="title">Taihan Kuwait</strong>
								</div>
								<ul class="list-info">
									<li>
										<p class="desc">
											Taihan Kuwait는 쿠웨이트 최초의 광케이블을 생산하는 기업입니다. 수입에 의존하는 쿠웨이트의 광케이블 시장을
											선점하기
											위해, <br>
											2021년에 쿠웨이트의 건설 및 무역회사인 랭크社와 공동투자를 진행하여 설립하였습니다.</p>
									</li>
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>plot no. 123, 125, 127, 129 & 131 in Mina Abdullah Industrial
												Area-sector 21, Kuwait<a href="https://goo.gl/maps/QocHawShPE2DUVMo7" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+96597274637">+965-9727-4637</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+965-2552-8508</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jmcho@taihan.com">jmcho@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">사우디</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Office No.18, 3rd Floor, Complex(7) Commercial Center King Abdul
												Aziz Road P.O.Box300201, Riyadh 11372, K.S.A.<a href="https://goo.gl/maps/VmVrSNtr8aq8qDTH9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+966112301554">+966-11-230-1554</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+966-11-229-7754</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:seanlee@taihan.com">seanlee@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">쿠웨이트</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>House No. 8, Basement, Street No. 26, Block No. 4, Sabah
												Al-Salem, State of Kuwait<a href="https://goo.gl/maps/1j59HA5WJTUvxLtW8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+96525528642">+965-2552-8642</a></dd>
										</dl>
									</li> 
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:janghee@taihan.com">janghee@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">두바이</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Office No.908, Al Shafar Tower 1, Barsha Heights, P.O.Box 117561, Dubai,
												UAE<a href="https://goo.gl/maps/AWtVvRpKWX1nH7HF6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+97143688988">+971-4-368-8988</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+971-4-368-6779</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:seanlee@taihan.com">seanlee@taihan.com</a><br />
												<a href="mailto:info@taihan.ae">info@taihan.ae</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">아부다비</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Office No. 1902, Bin Hamoodah Tower, Khaleej Al Arabi St. PO Box
												54562, Abu Dhabi, UAE<a href="https://goo.gl/maps/rWMqUYGCq4YiwjQQ6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+97126271847">+971-2-627-1847</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+971-2-627-1843</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:seanlee@taihan.com">seanlee@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">카타르</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Office No. 12, Building No. 340, Zone 24, Street No. 230 Al
												Muntazah Doha-Qatar<a href="https://www.google.com/maps/search/Office+No.12,+Building+No.340,+zone+24,+street+no.230,+Al+Muntazah,+Doha,+Qatar/@25.2701307,51.5150229,16z?entry=ttu" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+97444146357">+974-4414-6357</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+974-4415-2243</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:ksan@taihan.com">ksan@taihan.com</a> 
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">바레인</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Office 202, Floor 15th, Platinum Tower, Building 190, Road 2803, Block 428, Al Seef, Kingdom of Bahrain
												<a href="https://maps.app.goo.gl/J3iGXu5JA2fcXHdy9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:yda23@taihan.com">yda23@taihan.com</a> 
											</dd>
										</dl>
									</li>

								</ul>
							</li>
							<!-- //중동 -->

							<!-- 오세아니아 -->
							<li>
								<div class="title-box">
									<span class="label v4">영업법인</span>
									<strong class="title">Taihan Australia</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Suite 704, 815 Pacific Highway, Chatswood, NSW 2067, Australia<a href="https://goo.gl/maps/6KeXD4dT8485Bff49" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+61294117564">+61-2-9411-7564</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+61-2-9411-7579</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-site"></i>웹사이트</dt>
											<dd>
												<a href="https://www.taihan.com.au" target="_blank">www.taihan.com.au</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd> 
												<a href="mailto:jameskim@taihan.com">jameskim@taihan.com.au</a><br>
												<a href="mailto:daniellee@taihan.com.au">daniellee@taihan.com.au</a> 
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v4">영업법인</span>
									<strong class="title">Taihan New Zealand</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>7/325 Ti Rakau Drive, Burswood, Auckland 2013, New Zealand<a href="https://goo.gl/maps/bJ4hDrT5hK2sx6JC7" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+6499735062">+64-9-973-5062 </a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jameskim@taihan.com.au">jameskim@taihan.com.au</a><br>
												<a href="mailto:c.kim@taihan.co.nz">c.kim@taihan.co.nz</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<!-- //오세아니아 -->


							<!-- 2022-11-15 수정 -->
							<!-- 아시아 -->
							<li>
								<div class="title-box">
									<span class="label v4">생산법인</span>
									<strong class="title">Taihan VINA</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<!-- 2022-10-24 텍스트 수정 -->
											<dd>오피스: 1st floor, Somerset Chancellor Court, 21-23 Nguyen Thi Minh	Khai Str., Ben Nghe ward, District 1, HCMC<br>
												공장 : Long Thanh IZ, Dong Nai Province, Vietnam
												<a href="https://goo.gl/maps/rqS27QK6Ff97jaY66" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a>
											</dd>
											<!-- //2022-10-24 텍스트 수정 -->
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+842835180786">+84-28-3518-0786</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-site"></i>웹사이트</dt>
											<dd><a href="https://www.taihancable.com.vn" target="_blank">www.taihancable.com.vn</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:taihan@taihancable.com">taihan@taihancable.com</a>
											</dd>
										</dl>
									</li>
								</ul>
								<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/vina" class="btn-detail">자세히보기<i class="ico-arr"></i></a>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">싱가포르</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>150 Kampong Ampat #07-04 KA CENTRE Singapore 368324,Republic of
												Singapore<a href="https://goo.gl/maps/DEgdNdSLCicqi3MU9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+6568425069">+65-6842-5069</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+65-6842-5076</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jshuh@taihan.com">jshuh@taihan.com</a><br>
												<a href="mailto:bheeyup@taihan.com">bheeyup@taihan.com</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">인도네시아</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Graha Surveyor Indonesia, 19th Floor Suite 1903 Jl.Gatot Subroto Kav. 56 Jakarta Selatan 12950, Indonesia<a href="https://goo.gl/maps/tDdBUTzUorVUjCqz9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jshuh@taihan.com">jshuh@taihan.com</a><br>
												<a href="mailto:veiky.taufik@taihan.co.id">veiky.taufik@taihan.co.id</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<li>
								<div class="title-box">
									<span class="label v5">지사</span>
									<strong class="title">말레이시아</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>NO. 2-09, Jalan Pandan Prima1, Dataran Pandan Prima, 55100 Kuala
												Lumpur, Malaysia<a href="https://goo.gl/maps/4qKBwQ3dLmE1FbjB6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+6568425069">+60-3-9285-8017</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>+60-3-9200-1136</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:jshuh@taihan.com">jshuh@taihan.com</a><br>
												<a href="mailto:nor@taihan.com.my">nor@taihan.com.my</a>
											</dd>
										</dl>
									</li>
								</ul>
							</li>
							<!-- //아시아 -->

							<!-- 아프리카 -->
							<li>
								<div class="title-box">
									<span class="label v4">생산법인</span>
									<strong class="title">M-TEC</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>1 Steel Road, Peacehaven, Vereeniging 1939, Gauteng, South
												Africa<a href="https://goo.gl/maps/WYZHpaVeNAQhGFk19" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+27164508220">+27-16-450-8220</a></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd>02-562-8754</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-site"></i>웹사이트</dt>
											<dd>
												<a href="https://www.m-tec.co.za" target="_blank">www.m-tec.co.za</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-mail"></i>메일</dt>
											<dd>
												<a href="mailto:info@m-tec.co.za">info@m-tec.co.za</a>
											</dd>
										</dl>
									</li>
								</ul>
								<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/mtec" class="btn-detail">자세히보기<i class="ico-arr"></i></a>
							</li>
							<!-- //아프리카 -->
							<!-- 2022-11-15 수정 -->
						</ul>
					</div>
				</div>
				<div class="btn-wrap t-c">
					<a href="/business/globalNetwork" class="btn-type">전체 사업장 보러가기<i class="ico-arr"></i></a>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test="${LANG eq 'en' }">
		<div class="content-box">
					<div class="inner-box">

						<!-- tab -->
						<div class="tab-wrap">
							<ul class="tab-type">
								<li ><a href="/en/business/globalNetwork/korea#map-box"><span>KOREA<em class="count">(6)</em></span></a></li>
								<li ><a href="/en/business/globalNetwork/america#map-box"><span>America<em class="count">(3)</em></span></a></li>
								<li ><a href="/en/business/globalNetwork/europe#map-box"><span>Europe<em class="count">(5)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/middle#map-box"><span>Middle East<em class="count">(8)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/oceania#map-box"><span>Oceania<em class="count">(2)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/asia#map-box"><span>Asia<em class="count">(4)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/africa#map-box"><span>Africa<em class="count">(1)</em></span></a></li>
								<li class="active"><a href="/en/business/globalNetwork/all#map-box"><span>All<em class="count">(29)</em></span></a></li><!-- 2022-11-11 수정 -->
							</ul>
						</div>
						<!-- //tab -->

						<div class="board-wrap">
							<div class="board-body">
								<ul class="list-store">
									<!-- 국내 -->
									<li>
										<div class="title-box">
											<span class="label v2">Plant</span>
											<strong class="title">Dangjin Plant</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>870, Daehoman-ro, Godae-myeon, Dangjin-si, Chungcheongnam-do, Korea<a href="#" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+82413609114">+82 41-360-9114</a></dd>
												</dl>
											</li>
										</ul>
										<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjin" class="btn-detail">Read more<i class="ico-arr"></i></a>
									</li>

									<li>
										<div class="title-box">
											<span class="label v2">Plant</span>
											<strong class="title">Dangjin Cable Accessory Plant</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>542, Bodeokpo-ro, Godae-myeon, Dangjin-si, Chungcheongnam-do, Korea<a href="#" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+82413599114">+82 41-359-9114</a></dd>
												</dl>
											</li>
										</ul>
										<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/dangjinElect" class="btn-detail">Read more<i class="ico-arr"></i></a>
									</li>

									<li>
										<div class="title-box">
											<span class="label v2">Office</span>
											<strong class="title">Seoul</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>18, Yangjae-daero 2-gil, Seocho-gu, Seoul, Korea<a href="#" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+8223169114">+82 2-316-9114</a></dd>
												</dl>
											</li>
										</ul>
									</li>

									<li>
										<div class="title-box">
											<span class="label v2">Main Office</span>
											<strong class="title">Anyang</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Taihan Smart Tower, 317 Simin-daero, Dongan-gu, Anyang-si, Gyeonggi-do, Korea<a href="#" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+8223169114">+82 2-316-9114</a></dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v2">Sales Office</span>
											<strong class="title">Honam</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>282, Mujin-daero, Gwangsan-gu, Gwangju, Korea<a href="#" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+82625282055">+82 62-528-2055</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+82 62-527-8769</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v2">Sales Office</span>
											<strong class="title">Busan</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>12 Beobwon-ro, Yeonje-gu, Busan, Korea<a href="#" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+82 51-636-5904">+82 51-636-5904~6</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+82 51-643-4285</dd>
												</dl>
											</li>
										</ul>
									</li>
									<!-- //국내 -->

									<!-- 아메라카 -->
									<li>
										<div class="title-box">
											<span class="label v4">Sales Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">Taihan USA</strong>
										</div>
										<!-- 2022-10-28 수정 -->
										<ul class="list-info">
											<li>
												<!-- 2022-10-26 텍스트 수정 -->
												<p class="desc">
													Taihan USA was founded in 2000 to drive entry into the US market. Since its establishment, it has grown into a major supplier in the US by providing a variety of products such as EHV, MV/LW, processing lines throughout North America based on the top quality and technology differentiated from other competitors.
												</p>
												<!-- //2022-10-26 텍스트 수정 -->
											</li>
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>12070 Telegraph Rd., Suite 324, Santa Fe Springs, CA 90670, USA
														<a href="https://maps.app.goo.gl/L4gis1ZoJ3LLWnvo6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+15629468500">+1-562-946-8500</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+1-562-946-0200</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:cwlee@taihanusa.com" target="_blank">cwlee@taihanusa.com</a> 
													</dd>
												</dl>
											</li>
										</ul>
										<!-- //2022-10-28 수정 -->
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">LA</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>12070 Telegraph Rd. Ste 324, Santa Fe Springs CA90670, USA<a href="https://goo.gl/maps/Nkik2uBRpYudbCac8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+15629468500">+1-562-946-8500</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+1-562-946-0200</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd> 
														<a href="mailto:krkycho2@taihanusa.com">krkycho2@taihanusa.com</a><br>
														<a href="mailto:bryce@taihanusa.com">bryce@taihanusa.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">New Jersey</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>560 Sylvan Ave 3rd Floor Englewood Cliffs, NJ 07632, USA<a href="https://goo.gl/maps/wazFu4FwXTCX5mqM8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+12015692493">+1-201-569-2493</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:okkwon@taihanusa.com">okkwon@taihanusa.com</a><br> 
														<a href="mailto:manny@taihanusa.com">manny@taihanusa.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<!-- //아메라카 -->

									<!-- 유럽 -->
									<li>
										<div class="title-box">
											<span class="label v4">Sales Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">Taihan Netherlands</strong>
										</div>
										<ul class="list-info">
											<li>
												<!-- 2022-10-26 텍스트 수정 -->
												<p class="desc">
													Taihan established Taihan Netherlands B.V. in September 2019 to enhance its competitive position ensuring it wins contracts in the European market considered to be the birthplace of the electric power industry. Furthermore, Taihan Netherlands B.V. is expanding its territory in the Europe as it obtains more orders by devising sales strategies considering the local industries, economies, etc.
												</p>
												<!-- //2022-10-26 텍스트 수정 -->
											</li>
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Stroombaan 4(1181 VX), Amsterveen, Netherlands<a href="https://goo.gl/maps/JTkdjwUVvvjd96FX8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd>
														<a href="tel:+31203583541">+31-20-358-3541</a><br>
														<a href="tel:+31682367152">+31-6-8236-7152</a>
													</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a><br/>
														<a href="mailto:zadeljd@taihan.com">zadeljd@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">UK</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>9 Teddington Business Park, Station Road, Teddington, Middlesex
														TW11 9BQ, UK<a href="https://goo.gl/maps/US2Vr4gSifH1vHHD9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+442089434901">+44-20-8943-4901</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:dwafe122@taihan.com">dwafe122@taihan.com</a><br>
														<a href="mailto:songyun.seol@taihan.com">songyun.seol@taihan.com</a><br>
														<a href="mailto:info@taihan.co.uk">info@taihan.co.uk</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Denmark</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Herlev Hovedgade 195, DK-2730 Herlve, Denmark<a href="https://goo.gl/maps/Z2jFu1yjhDBd1yVs6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li> 
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+31203583541">+31-20-358-3541</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Sweden</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Drottninggatan 86 111 36 STOCKHOLM<a href="https://goo.gl/maps/YHDfsLYNzLoNay1K9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+31203583541">+31-20-358-3541</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Russia</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>117335, Moscow, Vavilova street, 69/75, office no. 1133,
														Russia<a href="https://goo.gl/maps/ezY6s8qWuFXbecUAA" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+74952259591">+7-495-225-9591</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:alexlee@taihan.com">alexlee@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<!-- //유럽 -->

									<!-- 중동 -->
									<li>
										<div class="title-box">
											<span class="label v4">Production Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">Saudi Taihan</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Exit-12, Al Kharj Road, PO Box 31329, Riyadh 11497, K.S.A<a href="https://goo.gl/maps/iCEepVxgKifraXxs9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+966112142012">+966-11-214-2012</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+966-11-214-2337</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:frkwak@taihan.com">frkwak@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
										<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/saudi" class="btn-detail">Read more<i class="ico-arr"></i></a>
									</li>

									<!-- 2022-10-19 추가 -->
<%--									<li>--%>
<%--										<div class="title-box">--%>
<%--											<span class="label v4">Production Subsidiary</span><!-- 2022-11-11 수정 -->--%>
<%--											<strong class="title">Saudi Taihan <br />Cable & Solution</strong>--%>
<%--										</div>--%>
<%--										<ul class="list-info">--%>
<%--											<li>--%>
<%--												<dl>--%>
<%--													<dt><i class="ico-location"></i>Address</dt>--%>
<%--													<dd>Office No. 18, 3rd Floor, Complex(7) Commercial Center, King Abdul Aziz Road (Near Kingdom Hospital & Kingdom School)--%>
<%--														P.O.Box 300201, Riyadh 11372, KSA<a href="#" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>--%>
<%--												</dl>--%>
<%--											</li>--%>
<%--											<li>--%>
<%--												<dl>--%>
<%--													<dt><i class="ico-tel"></i>Tel</dt>--%>
<%--													<dd><a href="tel:+966112301554">+966-11-230-1554</a></dd>--%>
<%--												</dl>--%>
<%--											</li>--%>
<%--											<li>--%>
<%--												<dl>--%>
<%--													<dt><i class="ico-fax"></i>Fax</dt>--%>
<%--													<dd>+966-11-229-7754</dd>--%>
<%--												</dl>--%>
<%--											</li>--%>
<%--											<li>--%>
<%--												<dl>--%>
<%--													<dt><i class="ico-mail"></i>E-Mail</dt>--%>
<%--													<dd>--%>
<%--														<a href="mailto:frkwak@taihan.com">frkwak@taihan.com</a>--%>
<%--													</dd>--%>
<%--												</dl>--%>
<%--											</li>--%>
<%--										</ul>--%>
<%--									</li>--%>
									<!-- //2022-10-19 추가 -->

									<li>
										<div class="title-box">
											<span class="label v4">Production Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">Taihan Kuwait</strong>
										</div>
										<ul class="list-info">
											<li>
												<!-- 2022-10-26 텍스트 수정 -->
												<p class="desc">
													Taihan Kuwait is the first optical cable production corporation in Kuwait established in 2021 through a joint investment with Rank, a Kuwait construction and trading company with a plan to dominate the import-dependent optic cable market in Kuwait in advance.
												</p>
												<!-- //2022-10-26 텍스트 수정 -->
											</li>
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>plot no. 123, 125, 127, 129 & 131 in Mina Abdullah Industrial
														Area-sector 21, Kuwait<a href="https://goo.gl/maps/QocHawShPE2DUVMo7" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+96597274637">+965-9727-4637</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+965-2552-8508</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jmcho@taihan.com">jmcho@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Saudi</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Office No.18, 3rd Floor, Complex(7) Commercial Center King Abdul
														Aziz Road P.O.Box300201, Riyadh 11372, K.S.A.<a href="https://goo.gl/maps/VmVrSNtr8aq8qDTH9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+966112301554">+966-11-230-1554</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+966-11-229-7754</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:seanlee@taihan.com">seanlee@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Kuwait</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>House No. 8, Basement, Street No. 26, Block No. 4, Sabah
														Al-Salem, State of Kuwait<a href="https://goo.gl/maps/1j59HA5WJTUvxLtW8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+96525528642">+965-2552-8642</a></dd>
												</dl>
											</li> 
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:janghee@taihan.com">janghee@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Dubai</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Office No.908, Al Shafar Tower 1, Barsha Heights, P.O.Box 117561, Dubai,
														UAE<a href="https://goo.gl/maps/AWtVvRpKWX1nH7HF6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+97143688988">+971-4-368-8988</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+971-4-368-6779</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:seanlee@taihan.com">seanlee@taihan.com</a><br />
														<a href="mailto:info@taihan.ae">info@taihan.ae</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Abu Dhabi</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Office No. 1902, Bin Hamoodah Tower, Khaleej Al Arabi St. PO Box
														54562, Abu Dhabi, UAE<a href="https://goo.gl/maps/rWMqUYGCq4YiwjQQ6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+97126271847">+971-2-627-1847</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+971-2-627-1843</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:seanlee@taihan.com">seanlee@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Qatar</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Office No. 12, Building No. 340, Zone 24, Street No. 230 Al
														Muntazah Doha-Qatar<a href="https://www.google.com/maps/search/Office+No.12,+Building+No.340,+zone+24,+street+no.230,+Al+Muntazah,+Doha,+Qatar/@25.2701307,51.5150229,16z?entry=ttu" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">Address보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+97444146357">+974-4414-6357</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+974-4415-2243</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:ksan@taihan.com">ksan@taihan.com</a> 
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span>
											<strong class="title">Bahrain</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Office 202, Floor 15th, Platinum Tower, Building 190, Road 2803, Block 428, Al Seef, Kingdom of Bahrain
														<a href="https://maps.app.goo.gl/J3iGXu5JA2fcXHdy9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:yda23@taihan.com">yda23@taihan.com</a> 
													</dd>
												</dl>
											</li>

										</ul>
									</li>
									<!-- //중동 -->

									<!-- 오세아니아 -->
									<li>
										<div class="title-box">
											<span class="label v4">Sales Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">Taihan Australia</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Suite 704, 815 Pacific Highway, Chatswood, NSW 2067, Australia<a href="https://goo.gl/maps/6KeXD4dT8485Bff49" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+61294117564">+61-2-9411-7564</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+61-2-9411-7579</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-site"></i>Site</dt>
													<dd>
														<a href="https://www.taihan.com.au" target="_blank">www.taihan.com.au</a>
													</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jameskim@taihan.com">jameskim@taihan.com.au</a><br>
														<a href="mailto:daniellee@taihan.com.au">daniellee@taihan.com.au</a> 
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v4">Sales Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">Taihan New Zealand</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>7/325 Ti Rakau Drive, Burswood, Auckland 2013, New Zealand<a href="https://goo.gl/maps/bJ4hDrT5hK2sx6JC7" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+6499735062">+64-9-973-5062 </a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jameskim@taihan.com.au">jameskim@taihan.com.au</a><br>
														<a href="mailto:c.kim@taihan.co.nz">c.kim@taihan.co.nz</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<!-- //오세아니아 -->

									<!-- 2022-11-15 수정 -->
									<!-- 아시아 -->
									<li>
										<div class="title-box">
											<span class="label v4">Production Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">Taihan VINA</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<!-- 2022-10-24 텍스트 수정 -->
													<dd>Office : 1st floor, Somerset Chancellor Court, 21-23 Nguyen		Thi Minh Khai Str., Ben Nghe ward, District 1, HCMC<br>
														Factory : Long Thanh IZ, Dong Nai Province, Vietnam
														<a href="https://goo.gl/maps/rqS27QK6Ff97jaY66" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a>
													</dd>
													<!-- //2022-10-24 텍스트 수정 -->
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+842835180786">+84-28-3518-0786</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-site"></i>Site</dt>
													<dd><a href="https://www.taihancable.com.vn" target="_blank">www.taihancable.com.vn</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:taihan@taihancable.com">taihan@taihancable.com</a>
													</dd>
												</dl>
											</li>
										</ul>
										<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/vina" class="btn-detail">Read more<i class="ico-arr"></i></a>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Singapore</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>150 Kampong Ampat #07-04 KA CENTRE Singapore 368324,Republic of
														Singapore<a href="https://goo.gl/maps/DEgdNdSLCicqi3MU9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+6568425069">+65-6842-5069</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+65-6842-5076</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jshuh@taihan.com">jshuh@taihan.com</a><br>
														<a href="mailto:bheeyup@taihan.com">bheeyup@taihan.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Indonesia</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>Graha Surveyor Indonesia, 19th Floor Suite 1903 Jl.Gatot Subroto Kav. 56 Jakarta Selatan 12950, Indonesia<a href="https://goo.gl/maps/tDdBUTzUorVUjCqz9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jshuh@taihan.com">jshuh@taihan.com</a><br>
														<a href="mailto:veiky.taufik@taihan.co.id">veiky.taufik@taihan.co.id</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span><!-- 2022-11-11 수정 -->
											<strong class="title">Malaysia</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>NO. 2-09, Jalan Pandan Prima1, Dataran Pandan Prima, 55100 Kuala
														Lumpur, Malaysia<a href="https://goo.gl/maps/4qKBwQ3dLmE1FbjB6" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+6568425069">+60-3-9285-8017</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>+60-3-9200-1136</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:jshuh@taihan.com">jshuh@taihan.com</a><br>
														<a href="mailto:nor@taihan.com.my">nor@taihan.com.my</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<!-- //아시아 -->
									
									<!-- 아프리카 -->
									<li>
										<div class="title-box">
											<span class="label v4">Production Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">M-TEC</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>1 Steel Road, Peacehaven, Vereeniging 1939, Gauteng, South
														Africa<a href="https://goo.gl/maps/WYZHpaVeNAQhGFk19" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+27164508220">+27-16-450-8220</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd>02-562-8754</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-site"></i>Site</dt>
													<dd>
														<a href="https://www.m-tec.co.za" target="_blank">www.m-tec.co.za</a>
													</dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd>
														<a href="mailto:info@m-tec.co.za">info@m-tec.co.za</a>
													</dd>
												</dl>
											</li>
										</ul>
										<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork/mtec" class="btn-detail">Read more<i class="ico-arr"></i></a>
									</li>
									<!-- //아프리카 -->
									<!-- //2022-11-15 수정 -->
								</ul>
							</div>
						</div>


						<div class="btn-wrap t-c">
							<a href="/en/business/globalNetwork" class="btn-type">View all business sites<i class="ico-arr"></i></a>
						</div>
					</div>
				</div>
		</c:if>
	</div>
</section>
<!--//content-->

<script>
$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 2, '0204')
    },100);
    
});
</script>