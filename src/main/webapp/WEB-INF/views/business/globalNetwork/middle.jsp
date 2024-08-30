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
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_middleEast.svg?v1"></object>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<!-- 2022-10-26 지도 영문 -->
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_middleEast_en.svg?v1"></object>
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
						<li><a href="/business/globalNetwork/korea#map-box"><span>국내<em class="count">(7)</em></span></a></li>
						<li><a href="/business/globalNetwork/america#map-box"><span>아메리카<em class="count">(3)</em></span></a></li>
						<li><a href="/business/globalNetwork/europe#map-box"><span>유럽<em class="count">(5)</em></span></a></li>
						<li class="active"><a href="/business/globalNetwork/middle#map-box"><span>중동<em class="count">(8)</em></span></a></li>
						<li><a href="/business/globalNetwork/oceania#map-box"><span>오세아니아<em class="count">(2)</em></span></a></li>
						<li><a href="/business/globalNetwork/asia#map-box"><span>아시아<em class="count">(4)</em></span></a></li>
						<li><a href="/business/globalNetwork/africa#map-box"><span>아프리카<em class="count">(1)</em></span></a></li>
						<li><a href="/business/globalNetwork/all#map-box"><span>전체<em class="count">(30)</em></span></a></li><!-- 2022-11-11 수정 -->
					</ul>
				</div>
				<!-- //tab -->

				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-store">
							<li>
								<div class="title-box">
									<span class="label v4">생산법인</span>
									<strong class="title">Saudi Taihan</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Exit-12, Al Kharj Road, PO Box 31329, Riyadh 11497, K.S.A<a
													href="https://goo.gl/maps/iCEepVxgKifraXxs9" target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												<!--br>
												<a href="mailto:si.kim@sauditaihan.com">si.kim@sauditaihan.com</a-->
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
<%--									<strong class="title">Saudi Taihan <br />Cable & Solution <br />(설립 추진중)</strong>--%>
<%--								</div>--%>
<%--								<ul class="list-info">--%>
<%--									<li>--%>
<%--										<dl>--%>
<%--											<dt><i class="ico-location"></i>주소</dt>--%>
<%--											<dd>Office No. 18, 3rd Floor, Complex(7) Commercial Center, King Abdul Aziz Road (Near Kingdom Hospital & Kingdom School)--%>
<%--											P.O.Box 300201, Riyadh 11372, KSA<a href="https://goo.gl/maps/Mzt3UecSrksrrmGx5" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>--%>
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
													Taihan Kuwait 쿠웨이트 최초의 광케이블을 생산하는 기업입니다. 수입에 의존하는 쿠웨이트의 광케이블 시장을
													선점하기
													위해, <br>
													2021년에 쿠웨이트의 건설 및 무역회사인 랭크社와 공동투자를 진행하여 설립하였습니다.</p>
									</li>
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>plot no. 123, 125, 127, 129 & 131 in Mina Abdullah Industrial
												Area-sector 21, Kuwait<a href="https://goo.gl/maps/QocHawShPE2DUVMo7" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												Aziz Road P.O.Box300201, Riyadh 11372, K.S.A.<a href="https://goo.gl/maps/VmVrSNtr8aq8qDTH9"
													target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												Al-Salem, State of Kuwait<a href="https://goo.gl/maps/1j59HA5WJTUvxLtW8" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												UAE<a href="https://goo.gl/maps/AWtVvRpKWX1nH7HF6" target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												54562, Abu Dhabi, UAE<a href="https://goo.gl/maps/rWMqUYGCq4YiwjQQ6" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												Muntazah Doha-Qatar<a href="https://www.google.com/maps/search/Office+No.12,+Building+No.340,+zone+24,+street+no.230,+Al+Muntazah,+Doha,+Qatar/@25.2701307,51.5150229,16z?entry=ttu" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
											<dd>
												Office 202, Floor 15th, Platinum Tower, Building 190, Road 2803, Block 428, Al Seef, Kingdom of Bahrain
												<a href="https://maps.app.goo.gl/J3iGXu5JA2fcXHdy9" target="_blank" class="btn-map">
													<i class="ico-outer"><span class="hidden">주소보기</span></i>
												</a>
											</dd>
										</dl>
									</li>
									<!-- <li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd></dd>
										</dl>
									</li>
									<li>
										<dl>
											<dt><i class="ico-fax"></i>팩스</dt>
											<dd></dd>
										</dl>
									</li> -->
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
								<li ><a href="/en/business/globalNetwork/korea#map-box"><span>KOREA<em class="count">(7)</em></span></a></li>
								<li ><a href="/en/business/globalNetwork/america#map-box"><span>America<em class="count">(3)</em></span></a></li>
								<li ><a href="/en/business/globalNetwork/europe#map-box"><span>Europe<em class="count">(5)</em></span></a></li>
								<li class="active"><a href="/en/business/globalNetwork/middle#map-box"><span>Middle East<em class="count">(8)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/oceania#map-box"><span>Oceania<em class="count">(2)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/asia#map-box"><span>Asia<em class="count">(4)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/africa#map-box"><span>Africa<em class="count">(1)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/all#map-box"><span>All<em class="count">(30)</em></span></a></li><!-- 2022-11-11 수정 -->
							</ul>
						</div>
						<!-- //tab -->

						<div class="board-wrap">
							<div class="board-body">
								<ul class="list-store">
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
														<!--a href="mailto:sikim@taihan.com">sikim@taihan.com</a><br-->
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
<%--											<strong class="title">Saudi Taihan Cable & Solution <br />(In the process of establishing)</strong>--%>
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
													<dd>
														Office 202, Floor 15th, Platinum Tower, Building 190, Road 2803, Block 428, Al Seef, Kingdom of Bahrain
														<a href="https://maps.app.goo.gl/J3iGXu5JA2fcXHdy9" target="_blank" class="btn-map">
															<i class="ico-outer"><span class="hidden">Address보기</span></i>
														</a>
													</dd>
												</dl>
											</li>
											<!-- <li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-fax"></i>Fax</dt>
													<dd></dd>
												</dl>
											</li> -->
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
    
})
</script>