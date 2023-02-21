<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
		    
<!--content-->
		<section id="content" class="sub-wrap esg-environment">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_02.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="environment.title" text="환경"/></h2>
				</div>
			</div>

			<%-- GNB(S)--%>
		    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
		    <%-- GNB(E) --%>


			<div id="container" class="content-wrap">
				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap v2" data-delighter>
							<strong class="title-type">
								<spring:message code="environment.subtitle1" text='자연과 인간을 위한 <br class="mo-br">친환경 경영을 실천합니다.'/>
							</strong>
						</div>
						<c:if test="${LANG eq 'ko'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/esg/environment"><span><spring:message code="environment.topBtn1" text="환경경영"/></span></a></li>
								<li class="active"><a href="/esg/pollution"><span><spring:message code="environment.topBtn2" text="오염물질 관리"/></span></a></li>
								<li><a href="/esg/ecoFriendly"><span><spring:message code="environment.topBtn3" text="친환경 기술 및 정책"/></span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<!-- tab -->
						<div class="tab-wrap" data-delighter>
							<ul class="tab-type">
								<li ><a href="/en/esg/environment"><span><spring:message code="environment.topBtn1" text="환경경영"/></span></a></li>
								<li class="active"><a href="/en/esg/pollution"><span><spring:message code="environment.topBtn2" text="오염물질 관리"/></span></a></li>
								<li><a href="/en/esg/ecoFriendly"><span><spring:message code="environment.topBtn3" text="친환경 기술 및 정책"/></span></a></li>
							</ul>
						</div>
						<!-- //tab -->
						</c:if>
						
						<c:if test="${LANG eq 'ko'}">
						<p class="text-type" data-delighter>
							대기, 수질 등의 오염을 최소화하고 폐기물, 화학 물질, 온실가스 등을<br>
							법규보다 강화된 자체 기준으로 감축하여 건강한 지구 만들기에 앞장서겠습니다.
						</p>
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<p class="text-type" data-delighter>
							Taihan will take the lead in making the earth healthier by minimizing pollution of air,
							contamination of water, etc. and reducing the amounts of waste generation, chemicals, and
							greenhouse gas (GHG) emissions, etc. according to the internal standards, which are stricter
							than the law.
						</p>
						</c:if>

						<c:if test="${LANG eq 'ko'}">
						<ul class="list-detail2 v2">
							<li data-delighter>
								<div class="icon-box"><i class="ico-air"></i><strong>대기∙수질</strong></div>
								<div class="title-box">
									<strong class="title">오염 물질 배출 허용 농도를 기준치 미만으로 엄격하게 관리합니다.</strong>
									<p>NOx(질소산화물), SOx(황산화물), 먼지 등의 대기 오염 물질과 BOD(생물학적 산소요구량), SS(부유 물질량), 오수량 등의<br>
									수질 오염 물질을 정기 모니터링하고 배출량 개선을 위해 설비 운영 방법을 지속 개선하며 사전 점검을 통해 만일의 사고를 예방합니다.</p>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>특수 정화시설 마련</li>
										<li>청정원료(LNG) 사용</li>
										<li>대기오염물질 자발적 감축 협약 체결</li>
										<li>고효율 오수 및 폐수 처리 시스템 운영</li>
										<li>폐수 100% 재이용</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="icon-box"><i class="ico-energy"></i><strong>온실가스∙에너지</strong></div>
								<div class="title-box">
									<strong class="title">온실가스 및 에너지의 배출 총량 관리와 원 단위 감축을 위한 목표를 수립하고, 관련 투자를 확대합니다.</strong>
									<p>에너지 사용량과 CO2(이산화탄소), CH4(메탄), N2O(이산화질소) 등의 배출량을 정량화 하는 동시에<br>
									제3자 검증을 진행하여 신뢰성을 확보하고 있습니다.</p>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>CDP(탄소 정보 공개 프로젝트) 참여</li>
										<li>온실가스 배출권 거래 제도 참여</li>
										<li>IFS를 이용한 중앙전력제어시스템</li>
										<li>온실가스 인벤토리 관리</li>
										<li>고효율 설비 및 LED전등 도입</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="icon-box"><i class="ico-waste"></i><strong>폐기물·화학물(질)</strong></div>
								<div class="title-box">
									<strong class="title">폐기물 관리 기준을 수립하고 적법한 처리를 통해 환경 오염을 방지합니다.</strong>
									<p>자체 화학 물질 관리 프로그램의 개발으로 체계적인 관리 시스템 하에 배출량, 유해 화학 물질 취급 등의 모니터링을 실시합니다.
									환경부의 ‘플라스틱 폐기물 회수 재활용 자발적 협약’ 체결, 자원 순환 성과 관리 제도를 통한
									순환 이용률 달성, 화학 사고 예방 계획의 수립을 기반으로 한 지역사회 안정성 보장 등 다양한 활동을 실시합니다.</p>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>자체 화학물질 관리 프로그램 개발</li>
										<li>환경부 ‘플라스틱 폐기물 회수 재활용 협약’ 체결</li>
										<li>자원 순환 성과 관리제도 시행</li>
										<li>장외영향 평가</li>
									</ul>
								</div>
							</li>
						</ul>
						</c:if>
						<c:if test="${LANG eq 'en'}">
						<ul class="list-detail2 v2">
							<li data-delighter>
								<div class="icon-box"><i class="ico-air"></i><strong>Air and Water Quality
									</strong></div>
								<div class="title-box">
									<!-- <strong class="title"></strong> -->
									<p>Taihan strictly controls the concentrations of pollutants below the permissible
										emission levels by complying with the related regulations. Taihan regularly
										monitor air pollutants, such as NOx (nitrogen oxides), SOx (sulfur oxides), and
										dust, and water pollutants, such as BOD (biological oxygen demand), SS
										(suspended solids), and amount of wastewater generation, continuously improve
										facility operation method to reduce the amount of pollutant discharge, and
										prevent unforeseen accidents by conducting pre-inspections.</p>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Install special purification facilities</li>
										<li>Use clean material (LNG)</li>
										<li>Enter into voluntary air pollutant reduction agreement</li>
										<li>Operate high-efficiency wastewater treatment system</li>
										<li>Reuse wastewater by 100%</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="icon-box"><i class="ico-energy"></i><strong>GHG and Energy</strong></div>
								<div class="title-box">
									<!-- <strong class="title"></strong> -->
									<p>Taihan establishes the goals for greenhouse gas (GHG) and energy emission
										management and intensity reduction, and expands the related investments. In
										addition, while quantifying the emissions of CO2 (carbon dioxide), CH4
										(methane), and N2O (nitrogen dioxide) as well as energy consumption, Taihan is
										securing reliability of the data by conducting a third party verification.
									</p>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Participate in CDP (carbon disclosure project)</li>
										<li>Participate in GHG emissions trading scheme</li>
										<li>Operate central power control system using IFS</li>
										<li>Manage GHG inventory</li>
										<li>Introduce high-efficiency facilities and LED lighting</li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="icon-box"><i class="ico-waste"></i><strong>Wastes and Chemicals
									</strong></div>
								<div class="title-box">
									<!-- <strong class="title"></strong> -->
									<p>Taihan is preventing environmental pollution by establishing waste management
										standards and through legal treatment of wastes. In addition, Taihan is
										monitoring the amount of discharge and handling of hazardous chemicals, etc.
										through systematic management by developing an internal chemical management
										program. The range of activities Taihan performs also include entering into the
										“Voluntary Agreement on Plastic Waste Recovery and Recycling” of the Ministry of
										Environment, achieving recycling rate through resource circulation performance
										management system, and guaranteeing stability of local communities by
										establishing chemical accident prevention plans.</p>
								</div>
								<div class="desc-box">
									<ul class="list-type v2">
										<li>Developed in-house chemical management program.</li>
										<li>Signed "Agreement on the voluntary recovery and recycling of plastic waste
											products" with the Ministry of Environment.</li>
										<li>Implements resource circulation management system.</li>
										<li>Established chemical accident prevention plan.</li>
									</ul>
								</div>
							</li>
						</ul>
						</c:if>


					</div>
				</div>
			</div>


		</section>
		<!--//content-->		    

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '030202');
        },100);
    })
</script>





