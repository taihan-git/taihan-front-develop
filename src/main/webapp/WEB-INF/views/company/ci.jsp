<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

	<!--content-->
		<section id="content" class="sub-wrap company-ci">

			<div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/company/visual_company_03.jpg)">
			
				<div class="sub-title">
					<h2 class="title-type">CI</h2>
				</div>
			</div>
			
			<%-- GNB --%>
    		<jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />
			<%-- GNB --%>

				<div id="container" class="content-wrap is-last-bg">
				<c:if test="${LANG eq 'ko' }">
				<div class="content-box">
					<div class="inner-box">
						<!-- 2022-10-21 텍스트 수정 -->
						<div class="title-wrap v2" data-delighter>
							<strong class="title-type">
								대한전선의 핵심가치와 <br class="mo-br">기업철학이 담긴 <br class="mo-br">CI를 소개합니다.
							</strong>
						</div>
						<!-- //2022-10-21 텍스트 수정 -->

						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">WORD MARK</h3>
							<p>대한전선의 기업 이미지를 시각적으로 형상화한 대표적인 상징입니다.</p>
							<!-- 2022-10-17 -->
							<!-- <div class="side-box btn-box"><div class="mo-display"><a href="#" class="btn-type btn-m">CI 다운로드<i class="ico-down"></i></a></div></div> -->
							<!-- //2022-10-17 -->
						</div>

						<div class="logo-wrap" data-delighter>
							<div class="logo-box">
								<i class="ico-logo"></i>
							</div>
						</div>

						<!-- 2022-10-17 -->
						<div class="btn-wrap t-c" data-delighter><a href="/resources/files/CI_taihan.zip" class="btn-type btn-m">CI 다운로드<i class="ico-down"></i></a></div>
						<!-- //2022-10-17 -->

						<!-- 2022-10-18 수정 -->
						<ul class="list-detail v4">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">CI 컨셉</strong>
								</div>
								<div class="desc-box">
									<p>
										대한전선의 영문 표현인 TAIHAN을 소문자 형태로 디자인하여 변화와 혁신을 추구하는 기업의 이미지를 표현하였습니다.<br>
										또한 직선과 곡선, 예각과 직각의 조화로운 배치를 통해 글로벌 기업으로서의 전문성과 유연성을 부각하고,<br>
										미래지향적인 대한전선의 비전을 함축적으로 담았습니다.
									</p>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">New Starting Point, 당진케이블공장</strong>
								</div>
								<div class="desc-box">
									<p>
										대한전선 성장의 거점이자 경쟁력의 근원지인 당진케이블공장의 VCV 타워를 형상화함으로써<br> 대한전선의 무한한
										잠재력과 가능성 그리고 미래로 나아가는 힘과 기술을 표현했습니다.
									</p>
									<ul class="list-circle">
										<li><img src="${CON_STATIC_URL}/asset/images/company/img_circle_company.png" alt=""></li>
										<li><img src="${CON_STATIC_URL}/asset/images/company/img_circle_logo.png" alt=""></li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">긍지와 전통성 계승</strong>
								</div>
								<div class="desc-box">
									<p>
										국내 최초의 전선메이커로서 반세기 이상을 이어온 대한전선의 긍지와 전통성을 표현하고자<br> 기존 심벌마크의
										블루와 레드 색상을 계승하였습니다. <br>블루는 전문성과 신뢰감을, 레드는 강인함과 열정을 상징합니다.
									</p>
									<ul class="list-circle">
										<li class="brand-color"></li>
										<li class="brand-color2"></li>
									</ul>
								</div>
							</li>
						</ul>
						<!-- //2022-10-18 수정 -->
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">LOGO TYPE</h3>
							<p>로고타입은 워드마크와 함께 대한전선의 기업 이미지를 전달하는 핵심요소로<br>
								워드마크와의 조화를 고려하여 제작되었습니다.</p>
						</div>
						<div class="logo-wrap" data-delighter>
							<div class="logo-box v2">
								<i class="ico-logo-korea"></i>
							</div>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">SIGNATURE</h3>
							<p>시그니처는 워드마크와 로고타입을 적절한 비례에 맞추어 조합한 것으로 적용 환경과 매체에 따라 조합을 선택하여 사용할 수 있습니다.</p>
						</div>
						<div class="logo-wrap" data-delighter>
							<dl>
								<dt>국문</dt>
								<dd>
									<div class="logo-box">
										<i class="ico-logo-kor"></i>
									</div>
								</dd>
							</dl>
							<dl>
								<dt>영문</dt>
								<dd>
									<div class="logo-box">
										<i class="ico-logo-eng"></i>
									</div>
								</dd>
							</dl>
						</div>
					</div>
				</div>


				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">COLOR SYSTEM</h3>
							<p>전용색상은 기업의 이미지를 형성하는 중요한 요소로 일관되게 사용되어야 합니다.<br>
								별색을 원칙으로 사용하며, 표현매체에 따라 4원색(CMYK) 및 특수인쇄가 가능합니다.</p>
						</div>

						<div class="color-wrap" data-delighter>
							<dl class="color-box">
								<dt>Taihan Blue</dt>
								<dd>
									Pantone 2146 C<br>
									C 100 M 80 Y 0 K 5<br>
									R 9 G 51 B 137<br>
								</dd>
							</dl>
							<dl class="color-box v2">
								<dt>Taihan Red</dt>
								<dd>
									Pantone 485 C<br>
									C 0 M 100 Y 100 K 0<br>
									R 228 G 0 B 17<br>
								</dd>
							</dl>
						</div>

					</div>
				</div>
				</c:if>
				<c:if test="${LANG eq 'en' }">
				<div class="content-box">
					<div class="inner-box">
						<!-- 2022-10-21 텍스트 수정 -->
						<div class="title-wrap v2" data-delighter>
							<strong class="title-type">
								 Taihan introduces its CI <br class="mo-br">which contains the core values <br>and philosophy of Taihan Cable & Solution
							</strong>
						</div>
						<!-- //2022-10-21 텍스트 수정 -->

						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">WORD MARK</h3>
							<p>The word mark is a representative symbol that visually embodies the company image of Taihan Cable & Solution.</p>
							<!-- 2022-10-17 -->
							<!-- <div class="side-box btn-box"><div class="mo-display"><a href="#" class="btn-type btn-m">CI 다운로드<i class="ico-down"></i></a></div></div> -->
							<!-- //2022-10-17 -->
						</div>

						<div class="logo-wrap" data-delighter>
							<div class="logo-box">
								<i class="ico-logo"></i>
							</div>
						</div>

						<!-- 2022-10-17 -->
						<div class="btn-wrap t-c" data-delighter><a href="/resources/files/CI_taihan.zip" class="btn-type btn-m">CI Download<i class="ico-down"></i></a></div>
						<!-- //2022-10-17 -->

						<!-- 2022-10-18 수정 -->
						<ul class="list-detail v4">
							<li data-delighter>
								<div class="title-box">
									<strong class="title">CI Concept</strong>
								</div>
								<div class="desc-box">
									<p>
										The word “Taihan” from Taihan Cable & Solution was designed in lowercase letters to represent the image of the company that pursues change and innovation. In addition, the harmonious arrangement of straight lines and curves, acute angles and right angles emphasizes the professionalism and flexibility as a global company, and also implies the vision of a future-oriented Taihan Cable & Solution.
									</p>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">New Starting Point, Dangjin Plant </strong>
								</div>
								<div class="desc-box">
									<p>
										It embodies the image of the VCV tower of the Dangjin factory, which is the base of Taihan Cable & Solution's growth and competitive edge and expresses Taihan Cable & Solution’s infinite potential and possibility, as well as the power and technology to advance into the future.
									</p>
									<ul class="list-circle">
										<li><img src="${CON_STATIC_URL}/asset/images/company/img_circle_company.png" alt=""></li>
										<li><img src="${CON_STATIC_URL}/asset/images/company/img_circle_logo.png" alt=""></li>
									</ul>
								</div>
							</li>
							<li data-delighter>
								<div class="title-box">
									<strong class="title">Inheritance of <br class="pc-br">Pride and Tradition </strong>
								</div>
								<div class="desc-box">
									<!-- 2022-11-01 -->
									<p>
										To express the pride and continue tradition of Taihan Cable & Solution, which has been running for more than half a century as Korea's first electric wire manufacturer, <br>Taihan inherited the blue and red colors of the existing logo. Blue symbolizes professionalism and trust, and red symbolizes strength and passion.
									</p>
									<!-- //2022-11-01 -->
									<ul class="list-circle">
										<li class="brand-color"></li>
										<li class="brand-color2"></li>
									</ul>
								</div>
							</li>
						</ul>
						<!-- //2022-10-18 수정 -->
					</div>
				</div>

				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">LOGO TYPE</h3>
								<p>Since the logo type is a key element that conveys the company image of Taihan Cable & Solution along with the word mark, the logo type was created considering the harmony with the word mark.</p>

						</div>
						<div class="logo-wrap" data-delighter>
							<div class="logo-box v2">
								<i class="ico-logo-korea"></i>
							</div>
						</div>
					</div>
				</div>

				<div class="content-box">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">SIGNATURE</h3>
							<!-- 2022-11-01 -->
							<p>The signature is a combination of the word mark and the logo type in an appropriate proportion, <br>and can be used by selecting a proper combination depending on the application environment and medium.</p>
							<!-- //2022-11-01 -->
						</div>
						<div class="logo-wrap" data-delighter>
							<dl>
								<dt>Korean</dt>
								<dd>
									<div class="logo-box">
										<i class="ico-logo-kor"></i>
									</div>
								</dd>
							</dl>
							<dl>
								<dt>English</dt>
								<dd>
									<div class="logo-box">
										<i class="ico-logo-eng"></i>
									</div>
								</dd>
							</dl>
						</div>
					</div>
				</div>


				<div class="content-box bg">
					<div class="inner-box">
						<div class="title-wrap4" data-delighter>
							<h3 class="title-type">COLOR SYSTEM</h3>
							<!-- 2022-11-01 -->
							<p>Exclusive colors are an important factor in forming the company image and should be used consistently. In principle, spot colors are used;<br> however, 4 primary colors (CMYK) and special printing are also available depending on the expression medium.</p>
							<!-- //2022-11-01 -->
						</div>

						<div class="color-wrap" data-delighter>
							<dl class="color-box">
								<dt>Taihan Blue</dt>
								<dd>
									Pantone 2146 C<br>
									C 100 M 80 Y 0 K 5<br>
									R 9 G 51 B 137<br>
								</dd>
							</dl>
							<dl class="color-box v2">
								<dt>Taihan Red</dt>
								<dd>
									Pantone 485 C<br>
									C 0 M 100 Y 100 K 0<br>
									R 228 G 0 B 17<br>
								</dd>
							</dl>
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
        setmenu( 2, '0103') 
    },100);
})
</script>





