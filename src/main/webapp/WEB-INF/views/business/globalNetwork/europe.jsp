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
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_europe.svg?v1"></object>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<!-- 2022-10-26 지도 영문 -->
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_europe_en.svg?v1"></object>
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
						<li class="active"><a href="/business/globalNetwork/europe#map-box"><span>유럽<em class="count">(5)</em></span></a></li>
						<li><a href="/business/globalNetwork/middle#map-box"><span>중동<em class="count">(8)</em></span></a></li>
						<li><a href="/business/globalNetwork/oceania#map-box"><span>오세아니아<em class="count">(2)</em></span></a></li>
						<li><a href="/business/globalNetwork/asia#map-box"><span>아시아<em class="count">(4)</em></span></a></li>
						<li><a href="/business/globalNetwork/africa#map-box"><span>아프리카<em class="count">(1)</em></span></a></li>
						<li><a href="/business/globalNetwork/all#map-box"><span>전체<em class="count">(29)</em></span></a></li><!-- 2022-11-11 수정 -->
					</ul>
				</div>
				<!-- //tab -->

				<div class="board-wrap">
					<div class="board-body">
						<ul class="list-store">
							<li>
								<div class="title-box">
									<span class="label v4">영업법인</span>
									<strong class="title">taihan Netherlands</strong>
								</div>
								<ul class="list-info">
									<li>
										<p class="desc">
										전력산업의 본고장으로 꼽히는 유럽 시장에서의 수주 경쟁력을 강화하기 위해 2019년
										설립되었습니다.<br>
										현지 산업, 경제 등을 고려한 맞춤형 영업 전략을 펼치며, 수주 영토를 확장해 나가고 있습니다.</p>
									</li>
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>Stroombaan 4(1181 VX), Amsterveen, Netherlands<a href="https://goo.gl/maps/JTkdjwUVvvjd96FX8"
													target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
											<dd><a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a></dd>
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
												TW11 9BQ, UK<a href="https://goo.gl/maps/US2Vr4gSifH1vHHD9" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												<a href="mailto:songyun.seol@taihan.com">songyun.seol@taihan.com</a><br />
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
											<dd>Herlev Hovedgade 195, DK-2730 Herlve, Denmark<a href="https://goo.gl/maps/Z2jFu1yjhDBd1yVs6"
													target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
										</dl>
									</li>
									<!--li>
										<dl>
											<dt><i class="ico-tel"></i>연락처</dt>
											<dd><a href="tel:+442088767078">+44-20-8876-7078</a></dd>
										</dl>
									</li-->
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
											<dd>Drottninggatan 86 111 36 STOCKHOLM<a href="https://goo.gl/maps/YHDfsLYNzLoNay1K9" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
												Russia<a href="https://goo.gl/maps/ezY6s8qWuFXbecUAA" target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
								<li class="active"><a href="/en/business/globalNetwork/europe#map-box"><span>Europe<em class="count">(5)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/middle#map-box"><span>Middle East Asia<em class="count">(8)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/oceania#map-box"><span>Oceania<em class="count">(2)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/asia#map-box"><span>Asia<em class="count">(4)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/africa#map-box"><span>Africa<em class="count">(1)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/all#map-box"><span>All<em class="count">(29)</em></span></a></li><!-- 2022-11-11 수정 -->
							</ul>
						</div>
						<!-- //tab -->

						<div class="board-wrap">
							<div class="board-body">
								<ul class="list-store">
									<li>
										<div class="title-box">
											<span class="label v4">Sales Subsidiary</span><!-- 2022-11-11 수정 -->
											<strong class="title">taihan Netherlands</strong>
										</div>
										<ul class="list-info">
											<li>
												<!-- 2022-10-26 텍스트 수정 -->
												<p class="desc">
													Taihan established taihan Netherlands B.V. in September 2019 to enhance its competitive position ensuring it wins contracts in the European market considered to be the birthplace of the electric power industry. Furthermore, taihan Netherlands B.V. is expanding its territory in the Europe as it obtains more orders by devising sales strategies considering the local industries, economies, etc.
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
													<dd><a href="tel:+31203583541">+31-20-358-3541</a></dd>
												</dl>
											</li>
											<li>
												<dl>
													<dt><i class="ico-mail"></i>E-Mail</dt>
													<dd><a href="mailto:jhhan@taihan.com">jhhan@taihan.com</a></dd>
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
														<a href="mailto:songyun.seol@taihan.com">songyun.seol@taihan.com</a><br />
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
											<!--li>
												<dl>
													<dt><i class="ico-tel"></i>Tel</dt>
													<dd><a href="tel:+442088767078">+44-20-8876-7078</a></dd>
												</dl>
											</li-->
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