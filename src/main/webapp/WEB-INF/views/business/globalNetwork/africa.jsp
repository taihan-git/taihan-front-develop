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
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_africa.svg?v1"></object>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<!-- 2022-10-26 지도 영문 -->
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_africa_en.svg?v1"></object>
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
						<li><a href="/business/globalNetwork/middle#map-box"><span>중동<em class="count">(8)</em></span></a></li>
						<li><a href="/business/globalNetwork/oceania#map-box"><span>오세아니아<em class="count">(2)</em></span></a></li>
						<li><a href="/business/globalNetwork/asia#map-box"><span>아시아<em class="count">(4)</em></span></a></li>
						<li class="active"><a href="/business/globalNetwork/africa#map-box"><span>아프리카<em class="count">(1)</em></span></a></li>
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
									<strong class="title">M-TEC</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>1 Steel Road, Peacehaven, Vereeniging 1939, Gauteng, South
												Africa<a href="https://goo.gl/maps/WYZHpaVeNAQhGFk19" target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
								<li><a href="/en/business/globalNetwork/middle#map-box"><span>Middle East<em class="count">(8)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/oceania#map-box"><span>Oceania<em class="count">(2)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/asia#map-box"><span>Asia<em class="count">(4)</em></span></a></li>
								<li class="active"><a href="/en/business/globalNetwork/africa#map-box"><span>Africa<em class="count">(1)</em></span></a></li>
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