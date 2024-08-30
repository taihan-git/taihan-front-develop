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
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_asia.svg?v1"></object>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<!-- 2022-10-26 지도 영문 -->
				<object class="map-object" type="image/svg+xml" data="${CON_STATIC_URL}/asset/images/business/business_map_asia_en.svg?v1"></object>
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
						<li class="active"><a href="/business/globalNetwork/asia#map-box"><span>아시아<em class="count">(4)</em></span></a></li>
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
									<strong class="title">Taihan VINA</strong>
								</div>
								<ul class="list-info">
									<li>
										<dl>
											<dt><i class="ico-location"></i>주소</dt>
											<dd>오피스: 1st floor, Somerset Chancellor Court, 21-23 Nguyen Thi Minh Khai		Str., Ben Nghe ward, District 1, HCMC<br>
												공장: Long Thanh IZ, Dong Nai Province, Vietnam
												<a href="https://goo.gl/maps/86h2cvDGUyfznarp9" target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a>
											</dd>
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
											<dd><a href="www.taihancable.com.vn"
													target="_blank">www.taihancable.com.vn</a></dd>
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
												Singapore<a href="https://goo.gl/maps/DEgdNdSLCicqi3MU9" target="_blank" class="btn-map"><i class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
											<dd>Graha Surveyor Indonesia, 19th Floor Suite 1903 Jl.Gatot Subroto Kav. 56 Jakarta Selatan 12950, Indonesia<a href="https://goo.gl/maps/RFFJUpPSB4727XDB9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">주소보기</span></i></a></dd>
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
												Lumpur, Malaysia<a href="https://goo.gl/maps/4qKBwQ3dLmE1FbjB6" target="_blank" class="btn-map"><i
														class="ico-outer"><span
															class="hidden">주소보기</span></i></a></dd>
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
								<li><a href="/en/business/globalNetwork/europe#map-box"><span>Europe<em class="count">(5)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/middle#map-box"><span>Middle East<em class="count">(8)</em></span></a></li>
								<li><a href="/en/business/globalNetwork/oceania#map-box"><span>Oceania<em class="count">(2)</em></span></a></li>
								<li class="active"><a href="/en/business/globalNetwork/asia#map-box"><span>Asia<em class="count">(4)</em></span></a></li>
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
											<span class="label v4">Production Subsidiary</span>
											<strong class="title">Taihan VINA</strong>
										</div>
										<ul class="list-info">
											<li>
												<dl>
													<dt><i class="ico-location"></i>Address</dt>
													<!-- 2022-10-24 텍스트 수정 -->
													<dd>Office : 1st floor, Somerset Chancellor Court, 21-23 Nguyen Thi		Minh Khai Str., Ben Nghe ward, District 1, HCMC<br>
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
													<dd>Graha Surveyor Indonesia, 19th Floor Suite 1903 Jl.Gatot Subroto Kav. 56 Jakarta Selatan 12950, Indonesia<a href="https://goo.gl/maps/RFFJUpPSB4727XDB9" target="_blank" class="btn-map"><i class="ico-outer"><span class="hidden">VIEW MAP</span></i></a></dd>
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