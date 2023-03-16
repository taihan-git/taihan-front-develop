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
				<object class="map-object" type="image/svg+xml"
					data="${CON_STATIC_URL}/asset/images/business/business_map_local.svg?v4"></object>
			</div>
		</c:if>
		<c:if test="${LANG eq 'en' }">
				<!-- 2022-10-26 지도 영문 -->
				<object class="map-object" type="image/svg+xml"
					 data="${CON_STATIC_URL}/asset/images/business/business_map_local_en.svg?v4"></object>
				<!-- //2022-10-26 지도 영문 -->
			</div>
		</c:if>
		</div>
		<c:if test="${LANG eq 'ko' }">
		<div class="content-box">
			<div class="inner-box">

				<!-- tab -->
				<div class="tab-wrap">
					<ul class="tab-type">
						<li class="active"><a href="/business/globalNetwork/korea#map-box"><span>국내<em class="count">(6)</em></span></a></li>
						<li><a href="/business/globalNetwork/america#map-box"><span>아메리카<em class="count">(3)</em></span></a></li>
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
									<span class="label v2">공장</span>
									<strong class="title">당진 공장</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>충청남도 당진시 고대면 대호만로 870<a href="https://goo.gl/maps/Gjh9JLY2hHRMF9VK9" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
									<strong class="title">당진 전력기기공장</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>충남 당진시 고대면 보덕포로 542<a href="https://goo.gl/maps/FFAAcJghmdqwkWzC8" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
											<dd>서울특별시 서초구 양재대로2길 18 호반파크 2관<a href="https://goo.gl/maps/BifMieBV2o4VtBtJA" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
											<dd>경기도 안양시 동안구 시민대로 317 대한스마트타워<a href="https://goo.gl/maps/67VPivZTVpCLAoUx8" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
											<dd>광주광역시 광산구 무진대로 282 광주무역회관 4층<a href="https://goo.gl/maps/s8YouWEz6nK2BDRP7" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
											<dd>부산광역시 연제구 법원로 12 로윈타워 1303호<a href="https://goo.gl/maps/sjZ3szm12Q4VFokJA" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
							<li class="active"><a href="/en/business/globalNetwork/korea#map-box"><span>KOREA<em class="count">(6)</em></span></a></li>
							<li><a href="/en/business/globalNetwork/america#map-box"><span>America<em class="count">(3)</em></span></a></li>
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
											<span class="label v2">Plant</span>
											<strong class="title">Dangjin Plant</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<dd>870, Daehoman-ro, Godae-myeon, Dangjin-si, Chungcheongnam-do, Korea<a href="https://goo.gl/maps/Gjh9JLY2hHRMF9VK9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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
													<dd>542, Bodeokpo-ro, Godae-myeon, Dangjin-si, Chungcheongnam-do, Korea<a href="https://goo.gl/maps/FFAAcJghmdqwkWzC8" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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
													<dd>18, Yangjae-daero 2-gil, Seocho-gu, Seoul, Korea<a href="https://goo.gl/maps/BifMieBV2o4VtBtJA" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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
													<dd>Taihan Smart Tower, 317 Simin-daero, Dongan-gu, Anyang-si, Gyeonggi-do, Korea<a href="href="https://goo.gl/maps/67VPivZTVpCLAoUx8" target="_blank"" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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
													<dd>282, Mujin-daero, Gwangsan-gu, Gwangju, Korea<a href="href="https://goo.gl/maps/s8YouWEz6nK2BDRP7" target="_blank"" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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
													<dd>12 Beobwon-ro, Yeonje-gu, Busan, Korea<a href="href="https://goo.gl/maps/sjZ3szm12Q4VFokJA" target="_blank"" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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