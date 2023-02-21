<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
	<!--content-->
		<section id="content" class="sub-wrap company-recruit">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/company/visual_company_05.jpg?v4)">
				<div class="sub-title">
					<h2 class="title-type"><spring:message code="hr.title2" text="인재경영"/></h2>
				</div>
			</div>

			  <%-- GNB --%>
			    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
			  <%-- GNB --%>
			<div id="container" class="content-wrap">

				<div class="content-box">
					<div class="inner-box">

						<div class="title-wrap" data-delighter>
						<c:if test="${LANG eq 'ko'}">
							<strong class="title-type">
								<span>채용정보</span>
							</strong>
							<!-- <p>
								어제보다 나은 오늘, 오늘보다 나은 내일을 함께 만들어갈 소중한 인재를 기다립니다.
							</p> -->
						</c:if>
						<c:if test="${LANG eq 'en'}">
							<strong class="title-type">
								<span>Careers</span>
							</strong>
							<!-- <p>
								어제보다 나은 오늘, 오늘보다 나은 내일을 함께 만들어갈 소중한 인재를 기다립니다.
							</p> -->
						</c:if>
						</div>
                        <div class="content-img" data-delighter>
                        	 <!-- 2022-10-14 수정 -->
                            <div class="recruit-banner">
                                <a href="https://ihoban.recruiter.co.kr/" target='_blank'>
                                    <div class="img-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_top_pc.jpg" alt=""
                                            class="pc-display">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_top_mo.jpg" alt=""
                                            class="mo-display">
                                    </div>
                                    <c:if test="${LANG eq 'ko'}">
                                    <div class="title-box">
                                        호반그룹 채용 페이지<br>
                                        바로가기 <i class="ico-more"><span class="hidden">더 보기</span></i>
                                    </div>
                                    </c:if>
                                    <c:if test="${LANG eq 'en'}">
                                    <div class="title-box">
                                            Link to Hoban Group's <br>
                                            recruitment website <i class="ico-more"><span class="hidden">더 보기</span></i>
                                    </div>
                                    </c:if>
                                </a>
                            </div>
                        </div>

					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type"><spring:message code="hr.subTitle1" text="전형절차"/></h3>
						</div>
						 <c:if test="${LANG eq 'ko'}">
						<!-- 2022-10-14 수정 -->
                        <div class="pc-display">
                            <ol class="recruit-process">
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_01.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">01</strong>
                                        <p>서류 전형</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_02.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">02</strong>
                                        <p>1차 면접</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_03.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">03</strong>
                                        <p>2차 면접</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_04.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">04</strong>
                                        <p>채용 검진</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_05.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">05</strong>
                                        <p>입사</p>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        <div class="mo-display">
                            <ol class="recruit-process">
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_01.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">01</strong>
                                        <p>서류 전형</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_02.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">02</strong>
                                        <p>1차 면접</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_03.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">03</strong>
                                        <p>2차 면접</p>
                                    </div>
                                </li>
                            </ol>
                            <ol class="recruit-process">
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_04.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">04</strong>
                                        <p>채용 검진</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_05.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">05</strong>
                                        <p>입사</p>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        </c:if>
					   <c:if test="${LANG eq 'en'}">
						<!-- 2022-10-14 수정 -->
                        <div class="pc-display">
                            <ol class="recruit-process">
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_01.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">01</strong>
                                        <p>Document Screening</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_02.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">02</strong>
                                        <p>1st Interview</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_03.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">03</strong>
                                        <p>2nd Interview</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_04.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">04</strong>
                                        <p>Recruitment Medical Checkup</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box" data-delighter>
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_05.png" alt="">
                                    </div>
                                    <div class="text-box" data-delighter>
                                        <strong class="num">05</strong>
                                        <p>Final Acceptance</p>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        <div class="mo-display">
                            <ol class="recruit-process">
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_01.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">01</strong>
                                        <p>Document Screening</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_02.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">02</strong>
                                        <p>1st Interview</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_03.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">03</strong>
                                        <p>2nd Interview</p>
                                    </div>
                                </li>
                            </ol>
                            <ol class="recruit-process">
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_04.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">04</strong>
                                        <p>Recruitment Medical Checkup</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box">
                                        <img src="${CON_STATIC_URL}/asset/images/company/img_recurit_05.png" alt="">
                                    </div>
                                    <div class="text-box">
                                        <strong class="num">05</strong>
                                        <p> Final Acceptance</p>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        </c:if>
                    </div>
                </div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type"><spring:message code="hr.subTitle2" text="직무소개"/></h3>
							<p>
								<spring:message code="hr.subDesc2" text="대한전선의 다양한 직무를 소개합니다. 전공 및 관심 분야에 따른 내용을 확인해보세요."/>
							</p>
						</div>
                        <!-- tab -->
                        <c:if test="${LANG eq 'ko'}">
                        <div class="tab-wrap" data-delighter>
                            <ul class="tab-type js_tab">
                                <li class="active"><a href="#tab1"><span>영업∙마케팅</span></a></li>
                                <li><a href="#tab2"><span>생산∙기술</span></a></li>
                                <li><a href="#tab3"><span>E&C</span></a></li>
                                <li><a href="#tab4"><span>R&D</span></a></li>
                                <li><a href="#tab5"><span>경영지원</span></a></li>
                            </ul>

                            <div id="tab1" class="tab-cont active">
                                <div class="cont-inner">
                                    <ul class="list-detail v4">
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">국내영업</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    국내 고객을 대상으로 사업을 수주하고, 최적의 제품과 솔루션을 제공합니다.
                                                    시장 분석, 경쟁사 동향 파악 등을 통해 신규 고객을 발굴하고, 기존 고객과의 신뢰 관계 구축으로 비즈니스 기회를
                                                    확대합니다. 크게 관납과 민수로 구분됩니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">해외영업</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    100여 개 국가의 전력청, EPC, 유틸리티 등 글로벌 고객을 대상으로 사업을 수주하고, 최적의 제품과 솔루션을
                                                    제공합니다. 시장 분석, 경쟁사 동향 파악 등을 통해 신규 고객을 발굴하고, 기존 고객과의 신뢰 관계 구축으로
                                                    비즈니스
                                                    기회를 확대합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">마케팅지원</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    시장 및 경영 환경의 변화를 다각적으로 분석하고 사업계획 목표 달성을 위해 매출 및 중장기 수주 전략을 수립합니다.
                                                    생산과
                                                    영업의 유기성 강화 및 영업활동에 필요한 관리 체계를 마련하고 지원합니다.
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div id="tab2" class="tab-cont">
                                <div class="cont-inner">
                                    <ul class="list-detail v4">
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">기술∙설계</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    고객의 요구에 부합하는 제품을 개발 및 설계합니다. 고품질의 제품 생산을 위해 최적의 기술 및 설계를 검토하며,
                                                    생산
                                                    프로세스 타당성 분석 및 납품 관련 기술자료를 지원합니다.

                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">생산기획∙관리
                                                </strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    인력, 설비, 자재 등 제품 생산에 필요한 전체를 기획, 분석 및 관리합니다. 고객이 요구하는 제품을 최소 원가,
                                                    최고
                                                    품질로 생산하고 적기에 공급할 수 있도록 지원합니다.

                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">품질보증∙관리
                                                </strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    정확한 검사를 통해 케이블 및 자재의 우수한 품질을 확보하고 보증합니다. 고품질 관리 시스템을 갖추고 인증시험,
                                                    품질 예방
                                                    활동 및 분석 활동을 실시하며 품질을 관리합니다.

                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="list-detail v4">
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">EHS (환경∙보건∙안전)
                                                </strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    자연 환경 보호를 위해 공장 및 공장 주변의 대기, 수질 등을 관리하고 개선합니다. 또한 안전하고 쾌적한 작업 현장
                                                    조성을
                                                    목표로 잠재적 사고 요인을 제거하고 안전 시설을 점검하는 등 국내∙외 환경안전보건 관련 법에 의거한 관리 및
                                                    예방활동을
                                                    실시합니다.

                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">설비관리</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>
                                                    제조 설비가 차질없이 운영될 수 있도록 유지 및 관리합니다. 설비의 설치 및 시운전, 설비 투자에 따른 레이아웃
                                                    설계,
                                                    제조 설비 에너지 공급 업무를 담당하며 생산성 향상을 위한 개선활동을 수행합니다.

                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div id="tab3" class="tab-cont">
                                <div class="cont-inner">
                                    <ul class="list-detail v4">
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">시공</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>지중 송전 케이블 프로젝트의 시공을 담당합니다. 공사 현장의 공정, 품질 및 안전, 인력, 장비 등 시공과 관련된
                                                    제반
                                                    사항을 효율적으로 관리하여 고객 만족을 실현합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">프로젝트 관리</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>지중 송전 케이블 공사 수행과 관련된 견적 산출, 설계 내역 검토, 설치 도면 및 준공 도면 작성 등을 수행합니다.
                                                    공사
                                                    수행을 위한 최적의 시공 원가를 산출하며, 시공 품질의 우수성과 건전성을 확보합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">엔지니어링
                                                </strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>프로젝트 관련 대내∙외 기술 협의 및 대책을 수립하고, 국내∙외 초고압 프로젝트 계통을 설계합니다. 고객의 요구에
                                                    부합하는
                                                    최적의 솔루션 제공함으로써 회사의 시장 선점에 기여합니다.
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div id="tab4" class="tab-cont">
                                <div class="cont-inner">
                                    <ul class="list-detail v4">
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">연구기획</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>사업 전략과 연계하여 연구개발이 원활하게 이루어 지도록 단기 및 중∙장기 로드맵을 수립합니다. 또한, 연구개발을 통해
                                                    확보한
                                                    지식재산 권리 취득 및 기술을 보호하고 지속가능한 성장을 위한 연구개발 아이템을 제안 및 관리합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">연구개발</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>중장기 연구개발 전략에 따른 신규 기술 동향, 연구개발 트렌드 등 최신 기술 정보를 수집하고, 이를 기반으로
                                                    고부가가치 제품
                                                    개발 및 선행 기술 확보 등의 업무를 수행합니다.
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div id="tab5" class="tab-cont">
                                <div class="cont-inner">
                                    <ul class="list-detail v4">
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">경영관리</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>경영 실적 달성을 위한 효율적인 자원 및 예산을 편성하고 각 사업부별 실행 전략을 관리합니다. 대∙내외 주요 경영
                                                    현안과
                                                    이슈를 신속히 파악하여 선제적으로 대응하며 경영진의 의사 결정을 위한 기초 자료를 가공 및 분석합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">경영전략</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>기업의 지속 성장을 위한 중장기 경영 전략 및 세부 실행 방안을 수립하여 방향성을 제시하고 검증합니다. 이를 통해
                                                    경영진의
                                                    의사 결정을 지원하며 사업 기회를 극대화하고, 손실을 최소화합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">자금</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>경영 전반에 필요한 자금을 원활하게 조달 및 운용하여 이익의 극대화를 도모합니다. 또한, 여러 이해관계자(주주,
                                                    고객사,
                                                    협력 업체 등)에게 경영활동 관련 재무 정보를 제공합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">회계∙내부회계
                                                </strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>회계 업무가 각종 법규, 지침, 내규에 따라 적법하게 처리될 수 있도록 관리합니다. 내부회계 관리 제도를 설계하고
                                                    업무
                                                    흐름도, 업무 기술서 등을 검토하여 효율적이고 투명한 회계 관리를 실현합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">구매</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>고객에게 필요한 자재 및 용역을 적정한 품질 및 가격으로 적시에 구입하여 공급합니다. 또한, 시장 동향 분석 및 정보
                                                    수집을
                                                    바탕으로 자재 동향을 예측하며, 자료를 바탕으로 장∙단기 구매 계획을 수립합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">수출입지원</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>무역 업무 프로세스의 최적화를 위해 사전 준비, 리스크 관리, 통관, 운송 등을 지원합니다. 그 밖에, 프로젝트
                                                    일정에
                                                    차질없이 제품 공급이 이루어질 수 있도록 지원하는 수출입 업무를 수행합니다.
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="list-detail v4">
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">법무</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>기업의 유∙무형 재산을 법적 리스크로부터 보호하고, 각종 소송이나 민원 등의 대외 분쟁에 신속하게 대응합니다. 또한
                                                    법률
                                                    이슈와 관련 검토 및 자문을 지원하여 경영상 법적 위험을 최소화합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">감사</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>윤리경영 인프라를 구축하고 실행함으로써 회사 및 다양한 이해관계자를 보호합니다. 회사가 안정적으로 성장할 수 있도록
                                                    내부
                                                    기준 및 지침을 마련하고, 지속적인 모니터링을 실시합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">홍보</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>기업의 긍정적 이미지 제고 및 브랜드 자산의 효과적 관리를 위한 전략을 구상하고 실행합니다. 경영활동의 언론 홍보 및
                                                    선제적
                                                    리스크 관리를 위한 대외 커뮤니케이션과 각종 홍보물 관리, 경영방침 전파, 사회공헌활동 등 내부 커뮤니케이션 업무를
                                                    수행합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">IT지원

                                                </strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>전사 IT 시스템에 대한 전략 수립, 시스템 개발, 프로젝트 기획 및 관리 등을 통해 최적의 IT 환경을 구축하고,
                                                    이를
                                                    통해 업무 효율 및 생산성 향상을 지원합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                 <!-- 2022-10-24 텍스트 수정 -->
                                                    <strong class="title">인사·노무</strong>
                                                 <!-- //2022-10-24 텍스트 수정 -->
                                            </div>
                                            <div class="desc-box">
                                                <p>채용, 평가, 승진, 보상 등을 통해 인적 자원을 효율적으로 관리 운영하며, 기업비전, 공통 행동양식 공유로
                                                    핵심가치의
                                                    내재화를 지원합니다. 또한, 대내∙외 노무 쟁점 분석 및 대응전략 수립으로 협력적 노사 관계를 구축합니다.
                                                </p>
                                            </div>
                                        </li>
                                        <li delighter>
                                            <div class="title-box">
                                                <strong class="title">총무</strong>
                                            </div>
                                            <div class="desc-box">
                                                <p>업무에 필요한 자원의 분배 및 지원으로 대내∙외 고객 만족도를 제고합니다. 전사 차원의 행사 계획 및 지원, 출장 및
                                                    통신
                                                    관리, 경영진 의전 및 대관 업무 등을 수행하며 쾌적한 사무 환경 조성을 위한 지원업무를 수행합니다.
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- //tab -->
                        </c:if>
                        <c:if test="${LANG eq 'en'}">
                        <!-- tab -->
                        <div class="tab-wrap" data-delighter>
                            <ul class="tab-type js_tab">
                                <li class="active"><a href="#tab1"><span>Sales & Marketing</span></a></li>
                                <li><a href="#tab2"><span>Production Engineering</span></a></li>
                                <li><a href="#tab3"><span>E&C</span></a></li>
                                <li><a href="#tab4"><span>R&D</span></a></li>
                                <li><a href="#tab5"><span>Management Support</span></a></li>
                            </ul>

                             <!-- 2022-10-26 텍스트 수정 -->
                                <div id="tab1" class="tab-cont active">
                                    <div class="cont-inner">
                                        <ul class="list-detail v4">
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Domestic Sales</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Obtains business orders from Korean domestic customers and provides optimal products and solutions<br>
                                                        · Discovers new customers through market analysis and competitor trends , etc. and expands business opportunities by building
                                                        trusting relationships with existing customers<br>
                                                        · Includes sales to the government and local governments and sales to private markets
                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Overseas Sales</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Obtains business orders from global customers such as the electric power authorities, EPC, and utility companies in more than
                                                        100 countries and provides optimal products and solutions<br>
                                                        · Discovers new customers through market analysis and competitor trends, etc., and expands business opportunities by building
                                                        trusting relationships with existing customers
                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Marketing Support</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Analyzes changes in the market and business environment from multiple perspectives<br>
                                                        · Establishes strategies for sales and mid- to long-term orders to achieve the goals of the business plans<br>
                                                        · Prepares and supports the management system necessary for strengthening the organic connection between production and
                                                        sales and for sales activities
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="tab2" class="tab-cont">
                                    <div class="cont-inner">
                                        <ul class="list-detail v4">
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Technology & Design</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Develops and designs products to meet the needs of customers<br>
                                                        · Reviews the optimal technology and design to produce high-quality products<br>
                                                        · Analyzes the feasibility of the production process<br>
                                                        · Supports delivery-related technical data
                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Production Planning & Management</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Plans, analyzes, and manages the whole process necessary for manufacturing
                                                        products including personnel, equipment, and materials<br>
                                                        · Supports the cost-effective manufacturing of high quality products to supply
                                                        the customers in a timely manner
                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Quality Assurance and Management
                                                    </strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Performs strict and precise inspections to ensure and guarantee the superior
                                                        quality of the cables and cable materials<br>
                                                        · Thoroughly manages quality through certification testing, quality prevention
                                                        activities and quality analysis activities under the high-level management system
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="list-detail v4">
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">EHS(Environment·Health·Safety)
                                                    </strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Manages and improves the air and water quality, etc. in and around factories
                                                        to protect the natural environment<br>
                                                        · Carries out management and prevention activities in accordance with Korean and
                                                        international environmental, safety and health-related laws to eliminate potential
                                                        accident factors and inspect safety facilities, etc. with the goal of creating a safe
                                                        and pleasant work site
                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Facility Management</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>
                                                        · Maintains and manages the manufacturing facilities to ensure
                                                        uninterrupted operation<br>
                                                        · Includes installation and commissioning of facilities, layout design according
                                                        to equipment investment, energy supply for manufacturing equipment, and
                                                        activities for improving productivity
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="tab3" class="tab-cont">
                                    <div class="cont-inner">
                                        <ul class="list-detail v4">
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Construction</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Effectively manages all matters related to construction of the underground power cable project to satisfy customers including
                                                        work process, quality and safety, manpower, and equipment at the construction site</p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Project Management</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Performs tasks for carrying out the underground power cable construction including estimating, reviewing design details,
                                                        and preparing installation drawings and as-built drawings, etc.<br>
                                                        · Calculates the optimal construction cost to secure excellence and soundness in construction quality

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Engineering
                                                    </strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Establishes internal/external technical consultations and countermeasures related to the project, and designs extra-high voltage
                                                        project systems in Korea and overseas<br>
                                                        · Provides optimal solutions that meet the needs of customers to contribute to the company's market dominance.

                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="tab4" class="tab-cont">
                                    <div class="cont-inner">
                                        <ul class="list-detail v4">
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Research Planning</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Establishes short-term, mid- and long-term roadmaps to smoothly facilitate R&D in connection with
                                                        the company’s business strategies<br>
                                                        · Protects intellectual property rights and technologies acquired through R&D, and proposes and manages R&D items
                                                        for sustainable growth

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">R&D</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Collects the latest technological information such as new technology trends and R&D trends according to mid- to long-term
                                                        R&D strategies<br>
                                                        · Develops high value-added products based on the latest technological information collected and secure prior technologies, etc.
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="tab5" class="tab-cont">
                                    <div class="cont-inner">
                                        <ul class="list-detail v4">
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Business Management</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Effectively allocates resources and budgets to achieve business performance and manages execution strategies for each business department<br>
                                                        · Preemptively responds by promptly identifying internal and external major management agendas and issues and conducts the process and
                                                        analysis of basic data for management's decision-making
                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Business Strategies</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Establishes mid- to long-term business strategies and detailed implementation plans for the company's sustainable growth and suggests and
                                                        verifies directions of them<br>
                                                        · Supports management’s decision making, maximizing business opportunities and minimizing losses

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Finance</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Strives to maximizes profits through smooth procurement and operation of the necessary funds throughout the management<br>
                                                        · Provides financial information related to business activities to various stakeholders (shareholders, customers, business partners, etc.)

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Accounting∙Internal Accounting
                                                    </strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Manages the accounting so that it can be handled legally in accordance with the applicable acts, guidelines and internal regulations<br>
                                                        · Realizes effective and transparent accounting management by designing an internal accounting management system and reviewing work flow charts and
                                                        job descriptions, etc.

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Purchase</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Purchases and supplies the materials and services necessary to the customers in a timely manner with reasonable quality and price<br>
                                                        · Predicts material trends based on market trend analysis and information collection, and establishes long-term and short-term purchasing plans based on the data

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Export/Import Support</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Supports preparation, risk management, customs clearance, transportation, etc. to optimize the trade business process<br>
                                                        · Supports the smooth delivery of products according to the project schedule without delay

                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="list-detail v4">
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Legal Affairs</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Protects the company's tangible and intangible assets from legal risks<br>
                                                        · Promptly responds to such external disputes as various lawsuits and civil complaints<br>
                                                        · Minimizes business legal risks by reviewing and advising on legal issues

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Audit</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Protects the company and stakeholders by establishing and implementing an ethical management infrastructure<br>
                                                        · Establishes internal standards and guidelines for stable growth of the company and conducts continuous monitoring

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">PR</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Designs and implements strategies to enhance the positive image of the company and effectively manage brand assets<br>
                                                        · Includes external communication tasks for media promotion of business activities and preemptive risk management, and internal communication tasks
                                                        such as management of a variety of promotional materials, dissemination of management policies, and social contribution activities

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">IT Support

                                                    </strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Establishes strategies and develops system for the company-wide IT system<br>
                                                        · Establishes an optimal IT environment through project planning and management, etc.,<br>
                                                        · Supports work efficiency and productivity improvement<br>

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">Human Resources and Labor</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Efficiently manages and operates human resources through recruitment, evaluation, promotion, and compensation, etc.<br>
                                                        · Supports the internalization of core values by sharing a company vision and common behavior patterns<br>
                                                        · Builds cooperative labor-management relations by analyzing internal and external labor issues and establishing response strategies.

                                                    </p>
                                                </div>
                                            </li>
                                            <li delighter>
                                                <div class="title-box">
                                                    <strong class="title">General Affairs</strong>
                                                </div>
                                                <div class="desc-box">
                                                    <p>· Enhances internal and external customer satisfaction by efficiently distributing and supporting the resources required for work<br>
                                                        · Conducts company-wide event planning and support, business trip and communication management, management's protocol and rental business, etc.
                                                        to support the creation of a pleasant office environment.

                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- //2022-10-26 텍스트 수정 -->

                            </div>
                            <!-- //tab -->
                    </c:if>
                    
                        <!-- 2022-11-09 수정 -->
                        <div class="board-wrap" data-delighter>
                            <div class="board-body gallery-swiper">
                                <ul class="list-gallery swiper-wrapper">
                                    <li class="swiper-slide">
                                        <div class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_STATIC_URL}/asset/images/company/img_employ01.jpg" alt="">
                                            </div>
                                        </div>
                                    </li>
                                    <li class="swiper-slide">
                                        <div class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_STATIC_URL}/asset/images/company/img_employ02.jpg" alt="">
                                            </div>
                                        </div>
                                    </li>
                                    <li class="swiper-slide">
                                        <div class="list-item">
                                            <div class="img-flex">
                                                <img src="${CON_STATIC_URL}/asset/images/company/img_employ03.jpg" alt="">
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="swiper-button-box">
                                    <div class="button-prev"></div>
                                    <div class="button-next"></div>
                                    <div class="fraction-pagination"></div>
                                </div>
                            </div>
                        </div>
                        <!-- //2022-11-09 수정 -->
					</div>
				</div>
			</div>


		</section>
		<!--//content-->

<script src="${CON_STATIC_URL}/asset/js/jquery.kxbdmarquee.js"></script>
<script>
$(document).ready(function(){
    //gnb세팅
    setTimeout(function() {
        setmenu( 3, '010502');
    },100);
    
   
})

   $(".slider").kxbdMarquee({
                loop: 0,
                isEqual: true,
                scrollAmount: 1,
                scrollDelay: 20
            });
            
//2022-11-09 수정
var gallerySwiper = new Swiper('.gallery-swiper', {
    slidesPerView: 3,
    slidesPerGroup: 3,
    spaceBetween: 38,
    pagination: {
        el: ".swiper-button-box .fraction-pagination",
        type: "fraction",
    },
    navigation: {
        nextEl: ".swiper-button-box .button-next",
        prevEl: ".swiper-button-box .button-prev",
    },
    breakpoints: {
        1024: {
            slidesPerView: 2,
            spaceBetween: 25,
            slidesPerGroup: 1,
        },
        768: {
            slidesPerView: 1,
            spaceBetween: 15,
            slidesPerGroup: 1,
        },
    },
});   
</script>





