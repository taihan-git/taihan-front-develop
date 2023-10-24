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
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_america.svg?v1"></object>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<!-- 2022-10-26 지도 영문 -->
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_america_en.svg?v1"></object>
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
						<li class="active"><a href="/business/globalNetwork/america#map-box"><span>아메리카<em class="count">(3)</em></span></a></li>
						<li><a href="/business/globalNetwork/europe#map-box"><span>유럽<em class="count">(5)</em></span></a></li>
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
									<strong class="title">Taihan USA</strong>
								</div>
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
											<dd>99 Tulip Ave, Floral Park, New York 11001, US
											<a href="https://goo.gl/maps/tu5YMkERVV9XQ9ax9" target="_blank" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a>
											</dd>
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
												<!--a href="mailto:krkycho2@taihanusa.com">krkycho2@taihanusa.com</a><br>
												<a href="mailto:bryce@taihanusa.com">bryce@taihanusa.com</a><br-->
												<a href="mailto:cwlee@taihanusa.com">cwlee@taihanusa.com</a>
											</dd>
										</dl>
									</li>
								</ul>
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
											<dd>12070 Telegraph Rd. Ste 324, Santa Fe Springs CA90670, USA
											<a href="https://goo.gl/maps/Nkik2uBRpYudbCac8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a>
											</dd>
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
												<!--a href="mailto:cwlee@taihanusa.com">cwlee@taihanusa.com</a><br-->
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
											<dd>560 Sylvan Ave 3rd Floor Englewood Cliffs, NJ 07632, USA
											<a href="https://goo.gl/maps/wazFu4FwXTCX5mqM8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a>
											</dd>
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
												<!--a href="mailto:sky@taihanusa.com">sky@taihanusa.com</a><br-->
												<a href="mailto:manny@taihanusa.com">manny@taihanusa.com</a>
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
								<li class="active"><a href="/en/business/globalNetwork/america#map-box"><span>America<em class="count">(3)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/europe#map-box"><span>Europe<em class="count">(5)</em></span></a></li>
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
											<span class="label v4">Sales Subsidiary</span>
											<strong class="title">Taihan USA</strong>
										</div>
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
													<dd>99 Tulip Ave, Floral Park, New York 11001, US<a href="https://goo.gl/maps/LJYvJNFAkM6tiETr9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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
														<!--a href="mailto:krkycho2@taihanusa.com">krkycho2@taihanusa.com</a><br>
														<a href="mailto:bryce@taihanusa.com">bryce@taihanusa.com</a><br-->
														<a href="mailto:cwlee@taihanusa.com">cwlee@taihanusa.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span>
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
														<!--a href="mailto:cwlee@taihanusa.com">cwlee@taihanusa.com</a><br-->
														<a href="mailto:krkycho2@taihanusa.com">krkycho2@taihanusa.com</a><br>
														<a href="mailto:bryce@taihanusa.com">bryce@taihanusa.com</a>
													</dd>
												</dl>
											</li>
										</ul>
									</li>
									<li>
										<div class="title-box">
											<span class="label v5">Branch Office</span>
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
														<!--a href="mailto:sky@taihanusa.com">sky@taihanusa.com</a><br-->
														<a href="mailto:manny@taihanusa.com">manny@taihanusa.com</a>
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