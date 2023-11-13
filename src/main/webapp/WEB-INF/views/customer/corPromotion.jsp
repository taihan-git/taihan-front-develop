 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>


<!--content-->
<section id="content" class="sub-wrap customer">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/customer/visual_customer_03.jpg)">
        <div class="sub-title">
            <h2 class="title-type"><spring:message code="customer.rsroomTitle" text="자료실"/></h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

    <div id="container" class="content-wrap">
        <div class="content-box">
            <div class="inner-box">

                <%-- Tab --%>
                    <jsp:include page="inc/incTab.jsp"/>
                <%-- Tab --%>

                <div class="board-wrap tab">
                    <div class="side-tab">
                        <ul>
                            <c:if test="${LANG eq 'ko'}">
															<li class="active"><a href="#list1"><spring:message code="rsroom.side1" text="기업 홍보 자료"/></a></li>
														</c:if>
                            <c:if test="${LANG eq 'en'}">
															<li class="active"><a href="#list1">Corporate Profile</a></li>
														</c:if>
                            <li><a href="#list2"><spring:message code="rsroom.side2" text="기업 홍보 영상"/></a></li>
                            <li><a href="#list3"><spring:message code="rsroom.side5" text="제품 홍보 영상"/></a>
								<ul>
									<li><a href="#list3"><spring:message code="rsroom.side3" text="해저케이블"/></a></li>
									<li><a href="#list4"><spring:message code="rsroom.side4" text="ACCC"/></a></li>
								</ul>
							</li>
                        </ul>
                    </div>

                    <div class="link-wrap fixed">
                        <div class="link-select">
                            <a href="#" class="current"><spring:message code="rsroom.side1" text="기업 홍보 자료"/></a>
                            <ul class="list-select">
																<c:if test="${LANG eq 'ko'}">
																	<li class="active"><a href="#list1"><spring:message code="rsroom.side1" text="기업 홍보 자료"/></a></li>
																</c:if>
																<c:if test="${LANG eq 'en'}">
																	<li class="active"><a href="#list1">Corporate Profile</a></li>
																</c:if>
                                <li><a href="#list2"><spring:message code="rsroom.side2" text="기업 홍보 영상"/></a></li>
                                <li><a href="#list3"><spring:message code="rsroom.side3" text="해저케이블"/></a></li>
                                <li><a href="#list4"><spring:message code="rsroom.side4" text="ACCC"/></a></li>
                            </ul>
                        </div>
                    </div>

                    <div id="list1" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="rsroom.side1" text="기업 홍보 자료"/></h3>
                        </div>
                        <div class="brochure-wrap">
                            <div class="img-box">
                                <img src="${CON_STATIC_URL}/asset/images/customer/Corporate_profile.jpg" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt="">
                            </div>
														<c:if test="${LANG eq 'ko'}">
														<a href="/resources/files/2023_taihan_Corporate profile_KOR.pdf" target="_blank" class="btn-type btn-m">
															<span><spring:message code="rsroom.btnDownload" text="회사 소개 자료 다운로드"/></span>
															<i class="ico-down"></i>
														</a>
														</c:if>
														<c:if test="${LANG eq 'en'}">
														<a href="/resources/files/2023_taihan_Corporate profile_ENG.pdf" target="_blank" class="btn-type btn-m">
															<span>Corporate Profile Download</span>
															<i class="ico-down"></i>
														</a>
														</c:if>
                        </div>
                    </div>

                    <div id="list2" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="rsroom.side2" text="기업 홍보 영상"/></h3>
                        </div>
                        <div class="promotion-wrap">
                            <div class="img-flex">
                            <c:if test="${LANG eq 'ko'}">
                                <iframe type="text/html" src="https://www.youtube.com/embed/VykcwlHohz0?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
                            </c:if>
                            <c:if test="${LANG eq 'en'}">
                               <iframe type="text/html" src="https://www.youtube.com/embed/ei_mAu4-_hU?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
                            </c:if>
                            </div>
                            <div class="narration-box">
                                <a href="#" class="btn-narration"><spring:message code="rsroom.narration" text="내레이션 보기"/><i class="ico-more2"></i></a>
                               <div class="text-box">
 									<c:if test="${LANG eq 'ko'}">
											어둠이 걷히고, 언제나 빛이 머무는 세상. 당신을 그 세상에 연결하고 더 나은 내일로 나아가게 하는 길. 그 길을 대한전선이 만들어 갑니다. 미래를 밝히는 힘. 가능성을 현실로 바꾸는 의지. We Connect the Future. 대한전선. <br />
											최초라는 이름을 넘어, 최고의 자리를 향해 대한전선은 쉼 없이 나아갑니다.<br />
											대한민국 최초의 전선회사로 출발한 대한전선은 끝없는 도전과 혁신으로, ‘국내 최초, 세계 최초’의 타이틀을 수없이 거머쥐며 전력 및 통신 케이블과 소재 분야를 개척해왔습니다.<br />
											70년 성장의 역사를 일구어 온 대한전선. 아시아와 중동, 오세아니아를 넘어 유럽과 미주, 아프리카까지, 주요 시장에 생산 기지와 지사를 구축하고 전 세계가 신뢰하는 기술과 품질을 선보이며 글로벌 기업으로서의 위상을 높여가고 있습니다.<br />
											그리고 이제 대한전선은 호반그룹에서 새로운 100년을 시작하며, 고객 가치 창출에 기여한다는 사명감, 더욱 강력해진 기술력과 네트워크, 완전히 새로워진 모습으로 케이블 & 솔루션 산업의 미래를 열어갑니다. <br />
											당진공장을 중심으로 전 세계의 생산 거점에서, 대한전선은 완벽한 품질을 실현합니다.<br />
											대한전선 기술의 중심이자 핵심 동력인 당진공장. 단일 전선공장으로 세계 최대 규모를 자랑하는 당진공장은 최첨단 생산라인과 친환경 시스템을 갖춘 스마트 & 그린 팩토리 입니다. 초고압, 산업전선, 통신, 소재 등의 단위 공장과 세계 최고 수준의VCV타워에서, 도체 생산부터 완제품 시험까지 모든 공정을 원-스톱으로 수행하며 완벽한 제품을 생산합니다.<br />
											또한, 고도화된 설비의 전력기기 공장을 갖추고 케이블 접속재를 공급하고 있습니다. <br />
											세계 시장의 전략적 요충지에 생산 거점을 확보하기 위한 노력도 지속하고 있습니다. <br />
											해상풍력 사업을 위한 해저케이블 임해공장, 글로벌 경쟁력을 갖춘 대한비나, 사우디 초고압 케이블 공장과 전력기기 공장, 쿠웨이트 최초의 광케이블 생산 법인과 아프리카 진출의 교두보인 남아공 엠텍까지 대한전선은 글로벌 현지화를 통해 전 세계 모든 고객의 요구와 시장의 변화에 신속하고 유연하게 대응합니다.<br />
											어둠을 밝히는 전등불부터 공장을 움직이는 동력까지, 대한전선은 세상 모든 곳에 에너지와 정보를 전합니다.<br />
											1976년 154kV OF케이블을 개발하며 대한민국 초고압 시대의 문을 연 대한전선은 북미 상용화의 첫 기록을 세운 500kV XLPE 케이블, 장거리 대용량 송전이 가능한 HVDC와 해저케이블, 2km에 달하는 장조장 XLPE 케이블까지<br />
											초고압케이블 분야의 개척자로서 차별화된 가치를 만듭니다. 대용량 송전이 가능한 가공선과 중저압 케이블, 내화 및 난연케이블, 부스덕트와 전차선 등 고객의 다양한 요구에 최적화된 제품을 제공합니다.<br />
											아울러, 전력망의 안정성과 신뢰성 확보를 위해, 고도의 기술력과 노하우를 바탕으로 케이블 접속재를 생산하고 있으며, 시스템 디자인부터, 생산, 시험, 접속과 시공, 진단과 유지보수에 이르기까지, 완벽한 토탈 솔루션으로 어떤 환경에서도 안정적인 전력망을 구축합니다.<br />
											대한전선은 에너지 전환과 탄소 중립 기조에 발 맞춰 해상풍력, 태양광 등 신재생에너지 발전에 특화된 제품을 개발하고, 생산합니다.<br />
											또한 국내외 주요 시장의 네트워크 구축에 핵심적인 역할을 수행하고 있습니다. 5G에 발맞춰 대용량의 데이터를 안전하고 빠르게 주고받을 수 있도록 동축케이블부터, 데이터케이블, 광케이블까지, 모든 네트워크 영역에서 정교한 기술을 제공합니다.<br />
											전기, 전자 등의 기초 소재로 사용되는 소재. 대한전선은 지속적인 기술개발과 풍부한 설비 운영 경험을 바탕으로 초정밀 구리 소재를 공급하며 관련 산업 전반의 경쟁력 향상에 기여하고 있습니다. <br />
											대한전선은 기술연구소를 중심으로 한발 앞선 기술을 선보이며 케이블 산업을 선도합니다. 차세대 제품과 소재를 개발하고 창의적인 솔루션을 제공하며 케이블 산업의 로드맵을 제시하겠습니다. 아울러, 기술훈련센터를 통해
											세계 각국의 고객사와 협력사에 전문 교육을 제공하며, 엔지니어 양성과 전선 기술 고도화에 기여하겠습니다. <br />
											지속 가능한 미래로 나아가는 길, 대한전선 안에서 시작됩니다.<br />
											미래 세대를 위해 환경을 먼저 생각하고 건강한 나눔으로 소외 없는 세상을 만들며, 투명하고 공정한 기업 문화를 통해 더 나은 내일을 실현합니다. <br />
											고객에게 받은 사랑을 더 큰 사랑으로 키우는 바른 기업으로 성장해 나가겠습니다.<br />
											최고의 기술과 품질의 실현으로, 멈추지 않는 도전과 혁신으로, 우리가 맞을 내일, 우리가 꿈꾸는 희망, 우리가 기대하는 미래를 향해 새 길을 열어 가겠습니다. 대한전선.<br /> 
									</c:if>
 									<c:if test="${LANG eq 'en'}">
										The world where darkness is gone and light always stays. The way to connect you to the world and lead you to a better tomorrow.Taihan makes that way.The power to light up the future. The willingness to make the possibility real.We Connect the Future.Taihan.
										Beyond the first, towards the top. Taihan keeps moving forward.
										Starting as the first cable company in Korea,Taihan has pioneered in the fields of power and communicationcable and base metalby constantly challenging and innovating, holding the titles of‘the first in Korea and the first in theworld' repeatedly.
										A history of growth spanning 70 years.Taihan has established subsidiaries and branch offices in majorMarketsacrossAsia, the Middle East and Oceania, Europe, the Americas, and Africa.Taihan is raising its position as a global leading companyby demonstrating world-class technology and quality.
										And now Taihan begins a new century in Hoban Group, and strives to pave the way for creating a better future of the cable & solution industry, completely renewing its image by focusing on commitment for contribution to customer value, and developing stronger technology and network.
										Taihan realizes perfect quality starting from Dangjin plantto production bases all over the world.
										Dangjin Plant, the center of Taihan's technology and the key engine of our competitiveness, is the world’s singlelargest cable manufacturing plant and a smart and green factory with state-of-the-art production lines and eco-friendly systems.
										At its unit factories of EHV cable, industrial cable, communication cable, base metal, etc.and at VCV tower with the world's most advanced technology.Dangjin Plant performs all the processes from conductorproduction to finished-product testing at one-stop andproduces perfect products.
										In addition, we are making the world's best cable accessoriesat Dangjin Cable Accessory Plant with advanced facilities.
										Furthermore, Taihan continuously strives to secure production bases in strategic areas of the global market.Submarine cable plant for the offshore wind power industry,'Taihan VINA' with a competitive global edge,Extra high voltage cable and Cable accessory plant in Saudi Arabia,First optical cable production company in Kuwait,'M-TEC', a bridgehead for African market entry in South Africa.
										Through global localization, Taihan quickly and flexibly adapts to market changes and the needs of customers all around the world.
										From light bulbs which light up the darkness to power which drives the factory, Taihan delivers energy and information all over the world. Taihan, which developed the 154kV OF cable in 1976 
										and opened the door to the extra-high voltage era of Korea, is a pioneer in the extra-high voltage industry, including 500kV XLPE cable, for which we are holding the record for the first commercialization in North America, HVDC and submarine cable, which are capable of long-distance high-capacity transmission, and optimized long length extruded cable, and create differentiated values.
										In addition, such as overhead conductor for high-capacity transmission and medium and low-voltage cable, refractory and flame retardant cable, busduct and trolley wire, Taihan provides optimized products to meet customer’s various needs.
										Furthermore, in order to secure the stability and reliability of the power grid, we are producing cable accessories based on our advanced technology and know-how.
										From system design, production, test, connection and construction to diagnosis and maintenance, Taihan has the perfect total solution to build a stable power network in any environment.
										Taihan specializes in the development and manufacturing of products for renewable energy generation, such as offshore wind and solar power, in line with current energy transition and carbon neutrality strategies.
										In addition, Taihan plays a key role to build network in major local & global markets. Taihan provides sophisticated technology in all network areas such as coaxial cable, data cable, optical cable, etc. to securely and quickly send and receive large amounts of data keeping steps with 5G.
										Base metals used as basic materials for electricity, electronics, etc. Based on continuous technology developments and abundant facility operation experiences, Taihan supplies ultra-precision copper rods and contributes to improving the competitiveness of the related industries.
										Taihan has been leading the cable industry by introducing advanced technology under the leadership of its Technology Research Center. We will continue to develop next-generation products and materials,
										provide creative solutions, and present a road map for the cable industry.
										In addition, we will train engineers and contribute to the advancement of cable technology by providing professional education to our customers and partners around the world through the Technology Training Center.
										The road to a sustainable future starts with Taihan.
										Taihan puts the environment first for the sake of future generations, fosters cooperation to create a healthier world, and envisions a better tomorrow with a transparent and fair corporate culture. 
										We will grow into a reputable company that achieves greater success thanks to its customer’s support.
										With the realization of the best technology and quality, with continuous challenges and innovations,
										Toward tomorrow that we will meet, hope that we dream, the future that we expect We will open up a new path. Taihan.


									</c:if>
								</div>
                            </div>
                        </div>
                    </div>

                    <div id="list3" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="rsroom.side3" text="해저케이블 영상"/></h3>
                        </div>
                        <div class="promotion-wrap">
                            <div class="img-flex">
                            <c:if test="${LANG eq 'ko'}">
                                <iframe type="text/html" src="https://www.youtube.com/embed/tm9h92Z-a70?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
                            </c:if>
                            <c:if test="${LANG eq 'en'}">
                                <iframe type="text/html" src="https://www.youtube.com/embed/RKy4DQ17Izo?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
                            </c:if>
                            </div>
                            <div class="narration-box">
                                <a href="#" class="btn-narration"><spring:message code="rsroom.narration" text="내레이션 보기"/><i class="ico-more2"></i></a>
                              <div class="text-box">
 									<c:if test="${LANG eq 'ko'}">
											어둠이 걷히고 언제나 빛이 머무는 세상<br>
											당신을 그 세상에 연결하고 더 나은 내일로 나아가게 하는 길<br>
											그 길을 대한전선이 만들어 갑니다.<br>
											탄탄한 기술력과 지속적인 연구개발을 바탕으로<br>
											친환경, 고효율 케이블 개발을 추진하고 있는 대한전선은<br>
											다양한 신재생 에너지 산업 정착에 기여하고 있습니다.<br>
											국내 여수 장군도를 시작으로 전남 장죽수도, 부산 영도대교, 울산 신항 및<br>
											군산항과 아프리카 세이셀 공화국 등에서의 해저케이블 납품 실적을 바탕으로<br>
											국내 최대 규모의 서남해 2.5GW 해상풍력개발사업의<br>
											실증단지 연구개발 사업을 수주하여 납품 및 설치한 데 이어<br>
											내부망 구축 프로젝트를 연이어 수주하였습니다.<br>
											친환경, 스마트 팩토리 당진공장은<br>
											세계 최고 높이인 160.5m의 VCV 타워와<br>
											최고 품질의 해저케이블 생산을 위한 전용라인을 보유하여<br>
											최대직경 175mm, 최대길이 10km의 해저케이블을 생산할 수 있습니다.<br>
											대한전선은 자체 시험설비를 통해 모든 시험이 가능하며<br>
											2016년, 22.9kV 해저케이블 전 규격에 대한 인증과 한전 납품자격을 취득하였고,<br>
											국내 최초로 J-tube Pull-in-Test 시연을 통해 제품의 신뢰성을 검증 받았습니다.<br>
											케이블 선적은 당진공장과 인접한 최대 5만톤급 선박의<br>
											접안능력을 갖춘 평택항을 활용하고 있습니다.<br>
											최상의 해저케이블의 운송과 선적을 위해<br>
											대한전선의 엔지니어들은 오랜 노하우를 바탕으로<br>
											안전하고 신속한 육상운송 루트를 확보하고 있으며,<br>
											조수간만의 차가 심한 서해의 환경조건에서도 이상 없이<br>
											케이블 선적작업을 완료한 노하우를 가지고 있습니다.<br>
											대한전선은 국내외 해저케이블 포설 전문회사들과 함께<br>
											다양한 환경의 해저케이블 포설 및 설치작업을 성공적으로 완수하고 있습니다.<br>
											해상풍력단지의 납품 및 시공경험을 통해<br>
											대한전선은 지속적인 Track Record를 쌓으며<br>
											세계시장을 목표로 해저케이블 사업에 박차를 가하고 있습니다.<br>
											더 나은 미래를 향해 전진하는 대한전선은<br>
											세계 최고 품질의 해저케이블을 공급하는<br>
											글로벌 전선 산업의 리더로서 발걸음을 멈추지 않겠습니다.<br>
									</c:if>
 									<c:if test="${LANG eq 'en'}">
										The world where darkness is gone and light always stays
										The way to connect you to the world and lead you to a better tomorrow
										Taihan makes that way
										We are pushing forward with the eco-friendly and high-efficiency cable product development based on robust-based technology and continuous research-oriented policy and contributing to the various renewable energy industries soft-landing.
										Based on successfully installed submarine cables for local projects, i.e. Yeosu-Janggoon Island, JeollaNam-do Jang-Juk Waterways, Busan Yeongdo Bascule Bridge, Ulsan Newport and Gunsan Port,
										further, Seychelles Archipelago in Africa,
										We secured an order for the largest-scaled offshore wind farm
										development project in Korea, which is the West-South Offshore 2.5gigawatt Wind Farm Project Test Bed R&D work and supplied & installed. Besides,
										we made splendid achievement of securing Inter-array Main Project.
										Designed and established as an eco-friendly smart factory style, Dangjin Plant holds the world's tallest VCV tower whose height is 160.5 meters and state-of-the-art exclusive production line for high-quality submarine cables.
										we can produce and provide maximum diameter 175mm, length 10km submarine cables.
										We have our own test equipment enabling all kinds of test performances.
										In 2016, we achieved the certification and KEPCO for 22.9kilovolt submarine cables.
										We demonstrated J-tube pull-in test for offshore wind towers and product reliability was verified based on specific installation conditions, accordingly.
										Cable shipment is normally made at Pyeongtaek Seaport of which berth capability is around 50,000 metric ton and quite adjacent to Dangjin Plant.
										For the best transportation and shipment of submarine cables, our professional engineers have already secured the safest and fastest land transportation route from Dangjin Plant to Pyeongtaek Seaport based on sufficient experiences.
										We have deep empirical knowledge to have been accomplished cable shipping work without any problems despite the harsh environmental conditions of large tidal range of the West Sea.
										For the sake of the safest installation of the submarine cables in the various enviroment, Taihan close technical collaboration together with the prominent domestic and foreign submarine cable installation companies.
										Sincerely based on the precious past experiences in product delivery and construction work of offshore wind farms, Taihan has been erected as much successful track records and is further stepping into the world markets.
										Taihan will never stop stepping forward as a socially matured and
										responsible leader in the global cable industry by manufacturing
										the world's best quality submarine cables.

									</c:if>

								</div>
                            </div>
                        </div>
                    </div>

                    <div id="list4" class="board-body">
                        <div class="title-wrap2">
                            <h3 class="title-type"><spring:message code="rsroom.side4" text="ACCC 영상"/></h3>
                        </div>
                        <div class="promotion-wrap">
                            <div class="img-flex">
                            <c:if test="${LANG eq 'ko'}">
                                <iframe type="text/html" src="https://www.youtube.com/embed/GkDWgMLpKN0?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
                           	</c:if>
                            <c:if test="${LANG eq 'en'}">
                                <iframe type="text/html" src="https://www.youtube.com/embed/Z87ebwmcNt0?&autoplay=1&rel=0&controls=0" frameborder="0"></iframe>
                           	</c:if>
                            </div>
                            <div class="narration-box">
                                <a href="#" class="btn-narration"><spring:message code="rsroom.narration" text="내레이션 보기"/><i class="ico-more2"></i></a>
                               <div class="text-box">
								   <c:if test="${LANG eq 'ko'}">
											어둠이 걷히고 언제나 빛이 머무는 세상<br>
											당신을 그 세상에 연결하고 더 나은 내일로 나아가게 하는 길<br>
											그 길을 대한전선이 만들어 갑니다.<br><br>
											
											발전소에서 생산된 전력을 가장 효율적으로 전달하는 가공송전선!<br><br>
											
											최근의 가공송전선 시장은 전력 수요 급증에 따른 송전 설비 확충과 비용절감, 민원발생 최소화 등의 요구에 발맞춰 ACSR 타입에서 송전용량을 향상시킨 HTLS 타입으로 점차 진화하고 있습니다.<br><br>
											
											대한전선은 이러한 시장의 변화와 고객의 요구에 부합하는 최적의 가공송전선, ACCC를 공급합니다.<br><br>
											
											ACCC는 지지선으로 강심을 사용하는 ACSR과 달리 탄소 및 유리 섬유와 에폭시 수지로 구성된 탄소 섬유 복합체를 사용합니다. 이는 동일한 직경의 강심과 비교해 인장강도가 높고 선팽창계수가 낮으면서도, 무게가 30% 이상 가벼운 특성을 가집니다.<br><br>
											
											도체의 소재와 소선의 형태도 차별화됩니다. 기존의 ACSR이 경알루미늄 원형 소선을 적용하는 것과 달리, ACCC는 연알루미늄 소재의 평각 소선 도체로 구성됩니다.<br><br>
											
											이러한 특성 때문에, ACCC는 동일한 직경의 ACSR 보다 2배 높은 송전용량의 선로 구축이 가능합니다.<br>
											또한, ACSR에 비해 약 28%의 이도 개선효과와 30% 높은 인장강도를 갖추고 있어, 협곡이나 하천과 같이 저이도 및 장경간을 요구하는 지역이나 국가간 계통연계, 대륙횡단과 같은 초장거리의 송전선로 구축에 용이합니다.<br><br>
											
											전력이 집중적으로 부하되는 발전소나 대도시 인근에 송전 용량 증대가 필요한 경우에도 ACCC가 유리합니다.<br><br>
											
											ACCC는 전 세계 30여 개국에 70,000km 이상 공급되며 안정성과 효율성을 검증 받은 가공송전선으로, 대한전선은 미국 SCE 110kV 가공송전선 교체 프로젝트, 베트남 110kV 프로젝트 등 전세계에 1,100km 이상의 납품실적을 보유하고 있습니다.<br><br>
											
											국내에서는 2011년 한전(한국전력공사, KEPCO) 제주실증사업을 시작으로 고창, 영광 등에서의 시범사업 및 한국전력공사와의 협동 연구를 통하여 환경에 따른 전선의 시공 특성, 유지보수성, 경제성 등을 검증했으며, 산불 모의시험을 실시하여 탄소 섬유 복합체 지지선의 내열성능과 안정성을 확인했습니다.<br><br>
											
											이를 통해 대한전선은 2018년 신덕은과 수색 변전소 사이 12km 구간의 154kV ACSR을 HTLS타입의 가공송전선으로 교체하는 프로젝트에 ACCC를 공급하였습니다.<br><br>
											
											또한 ACCC 지지선 공급업체인 CTC와의 전략적 기술협력을 통해 ACCC의 기계적 특성을 향상시킨 AZR을 개발하였습니다. 이로써, 착빙에 의한 가공송전선의 변형을 최소화하여 국내 및 캐나다, 러시아 등 대설지역 국가에서 요구하는 성능을 갖춘 제품 공급이 가능하게 되었습니다.<br><br>
											
											대한전선은 세계 최대 규모의 전선 단일 공장인 당진공장과 베트남의 대한비나(Taihan VINA)에 ACCC 전용생산라인과 완제품 시험설비를 구축하여 최고품질의 제품을 생산하고 있습니다.<br><br>
											
											최대 직경 44.75mm, 최대 허용전류 3,189A까지, 고객의 요구에 최적화된 사양 및 규격의 제품 생산이 가능하며, 블라스팅(blasting) 공정 설비를 통해 북미 지역 반사율 규제요건에 부합하는 제품 공급이 가능합니다. 또한, 자체 설비를 활용하여 지속적인 검증을 실시함으로써 완벽한 품질과 신뢰성을 확보하고 있습니다.<br><br>
											
											앞으로도 대한전선은 우수한 기술력과 생산 역량 및 공급 실적을 바탕으로 고객의 폭넓고 다양한 요구에 부합하는 가공송전선을 공급함으로써, 안정적인 전력망 구축은 물론 고객의 가치 창출에 이바지하겠습니다.<br><br>
											
											더 나은 미래로 나아가는 대한전선은 글로벌 전선 산업의 리더로서,<br>
											세계 최고 품질의 ACCC를 공급하기 위해,<br>
											혁신과 성장의 발걸음을 멈추지 않겠습니다.<br>
								   </c:if>
 									<c:if test="${LANG eq 'en'}">
										The world where darkness is gone and light always stays

										The way to connect you to the world and lead you to a better tomorrow

										Taihan makes that way

										Overhead Transmission Conductor! Offering the highest degree of conductivity in the world.

										The overhead transmission conductor is now evolving from traditional ACSR to HTLS type. HTLS type, High temperature low sag, offers cost reduction, improved capacity and conductivity, and minimization of civil complaints such as noise and light issues.

										Taihan ACCC is the most optimized HTLS overhead transmission conductor that leads the market trends and satisfies the customer’s needs.

										Unlike ACSR with steel core, ACCC’s composite core consists of carbon-glass fiber and epoxy resin. Compared to steel core in the same diameter, carbon composite core offers higher tensile strength, lower coefficient of thermal expansion rate, and lighter weight.

										Even material of conductor and the shape of wire are differentiated.
										While traditional ACSR uses hard aluminum round type wires, ACCC uses fully annealed trapezoidal type aluminum wires, which doubles the conductivity of traditional ACSR.

										ACCC has 28% higher sag improvements and 30% stronger tensile strength. Thanks to these features, ACCC is the perfect solution for low sag demanding conditions and long span conditions such as cross-country or sea crossing site.

										While ACCC can easily withstand heavy electrical load conditions such as near power plant areas, it also can be applied near metropolitan areas for enhancing transmission capacity.

										ACCC’s safety and efficiency is recognized through over 70,000km ACCC supply to more than 30 nations. Taihan has a record of supplying over 1,100km of ACCC throughout the world including SCE 110kV transmission conductor replacement project in the United States and 110kV project in Vietnam.

										In Korea, its construction features, maintainability, and economic feasibility have been recognized through various projects and researches starting with Je-ju Demonstration Project in 2011 carried out by KEPCO, pilot projects carried out in Go-chang, Young-kwang regions and cooperative research carried out by KEPCO. Then, with the performance of forest fire trial examination, heat-resisting property and safety of carbon fiber composite core support wire have been verified.

										Through this verification, Taihan supplied ACCC in the project carried out in 2018 where 12km of 154kV ACSR in between Shin-deogeun and Su-saek substation was replaced with HTLS type transmission conductor.

										Moreover, through the strategical technology cooperation with CTC, ACCC composite core manufacturer, Taihan succeeded in developing AZR with enhanced mechanical features of ACCC.
										ACCC AZR offers more ACCC AZR conductor offers nearly the same efficiency, but far greater overall strength. The added strength and increased tensile modulus mitigates conductor sag under heavy wind or ice loads, or very long spans conditions such as Korea, Canada and Russia.

										Taihan is producing the best quality products with exclusive ACCC production line and finished product test facilities in Taihan VINA in Vietnam and Dangjin plant in Korea, the largest wire manufacturing factory in the world.

										From maximum diameter 44.75mm and maximum 3,189A of current allowance, Taihan offers customized specifications to the customers. Through blasting facilities, Taihan is able to produce ACCC in non-specular type, which complies with the non-specular regulations in North America. Moreover, Taihan ensures perfect product quality and reliability by conducting self-verifications through the utilization of our own facility.

										In the future, based on our excellent technical skills, production capability and supply record, Taihan shall contribute not only in safe power grid construction, but also in customers’ value creation by supplying transmission conductor that meet different demands of customers.

										Taihan will never stop stepping forward
										as a socially matured and responsible leader in the global cable industry by manufacturing
										the world's best quality ACCC.

									</c:if>
								</div>
                            </div>
                        </div>
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
            setmenu( 3, '060201');
        },100);

        $('.btn-narration').on('click',function(e){
            e.preventDefault();
            if($(this).parents('.narration-box').hasClass('active')){
                $(this).parents('.narration-box').removeClass('active');
            }else{
                $(this).parents('.narration-box').addClass('active');
            }
        })

    })
</script>





