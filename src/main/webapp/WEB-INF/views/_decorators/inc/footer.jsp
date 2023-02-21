<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<!-- sns팝업 -->
<div class="pop-layer pop-sns" id="pop-sns">
	<div class="dim"></div>
	<div class="pop-wrap">
		<div class="pop-header">
			<button class="pop-close">
				<span class="hidden">팝업닫기</span>
			</button>
		</div>
		<div class="pop-content">
			<ul class="list-sns">
				<li>
					<a href="#">
						<i class="ico-facebook"><span class="hidden">페이스북</span></i>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="ico-twitter"><span class="hidden">트위터</span></i>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="ico-url"><span class="hidden">주소로 공유하기</span></i>
					</a>
				</li>
			</ul>
		</div>

	</div>
</div>
<!-- //sns팝업 -->

<!-- footer -->
<aside class="quick-wrap">
    <div class="dim"></div>
    <div class="quick-box">
        <ul>
            <li><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/product/electricity"><div class="icon-box"><i class="ico-product"></i></div>${LANG eq 'ko' ? '제품정보' : 'Product Information'}</a></li>
            <li><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/business/globalNetwork"><div class="icon-box"><i class="ico-global"></i></div>${LANG eq 'ko' ? '글로벌네트워크' : 'Global Network'}</a></li>
            <li><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/catalogue"><div class="icon-box"><i class="ico-catalog"></i></div>${LANG eq 'ko' ? '카탈로그' : 'Catalog'}</a></li>
            <li class="focus"><a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna"><div class="icon-box"><i class="ico-inquiry"></i></div>${LANG eq 'ko' ? '1:1문의' : '1:1 Inquiry'}</a></li>
        </ul>
        <a href="#" class="btn-quick"><i class="ico-more2"><span class="hidden">퀵 메뉴 열기</span></i></a>
    </div>
    <a href="#" class="btn-top" style="z-index: -1"><i class="ico-top"></i>TOP</a>
</aside>


<div class="sitemap-wrap">
    <div class="inner-box" id="sitemapWrap">
        <ul class="list-depth1">
            <%-- JS RENDER --%>
        </ul>
        <!-- 2022-11-11 수정 -->
		<ul class="list-info">
			 <c:if test="${LANG eq 'ko'}">
               <li><a href="/privacy">개인정보처리방침</a></li>
               <li><a href="/email">이메일 무단 수집 거부</a></li>
               <li><a href="/esg/cyberReport">사이버 신문고</a></li>
            </c:if>
            <c:if test="${LANG eq 'en'}">
               <li><a href="/en/privacy">Privacy Policy</a></li>
               <li><a href="/en/email">How To Refuse Random Email Collection</a></li>
            </c:if>
		</ul>
		<!-- 2022-11-11 수정 -->
        
    </div>
</div>


<footer class="footer-wrap">
    <div class="inner-box">
        <div class="logo-box">
            <i class="ico-logo white"><span class="hidden">대한전선</span></i>
        </div>
        <div class="info-box">
            <ul class="list-info">
                <c:if test="${LANG eq 'ko'}">
                    <li><a href="/privacy">개인정보처리방침</a></li>
                    <li><a href="/email">이메일 무단 수집 거부</a></li>
                    <li><a href="/esg/cyberReport">사이버 신문고</a></li>
                </c:if>
                <c:if test="${LANG eq 'en'}">
                    <li><a href="/en/privacy">Privacy Policy</a></li>
                    <li><a href="/en/email">How To Refuse Random Email Collection</a></li>
                </c:if>
            </ul>
            <address>
                <c:if test="${LANG eq 'ko'}">
                	<!-- 2022-10-21 수정 -->
				<span>[서울 사옥] 서울특별시 서초구 양재대로2길 18 호반파크 2관</span>
				<span>[안양 본점] 경기도 안양시 동안구 시민대로 317 대한스마트타워 </span>
				<span>대표번호 : <a href="tel:02-316-9114">02-316-9114</a></span>
				<!-- //2022-10-21 수정 -->
                </c:if>
                <c:if test="${LANG eq 'en'}">
                [Seoul Office] 18, Yangjae-daero 2-gil, Seocho-gu, Seoul, Korea<br>
				[Anyang Main Office] Taihan Smart Tower, 317 Simin-daero, Dongan-gu, Anyang-si, Gyeonggi-do, South Korea<br>
				SEOUL PHONE <a href="tel:82-2-316-9114">82-2-316-9114</a>
                </c:if>
				<p>COPYRIGHT ⓒ 2022 Taihan Cable & Solution Co., Ltd. ALL RIGHT RESERVED</p>
            </address>
            <div class="link-select up">
                <a href="#" class="current">Family Sites</a>
                <ul class="list-select">
                    <li><a href="https://www.ihoban.co.kr/web" target="_blank">호반(HOBAN)</a></li>
                    <li><a href="http://www.taihan.com.au/" target="_blank">taihan AU</a></li>
                    <li><a href="http://www.taihancable.com.vn/" target="_blank">taihan VINA</a></li>
                    <li><a href="http://www.m-tec.co.za/" target="_blank">M-TEC</a></li>
                </ul>
            </div>

        </div>
    </div>
</footer>
<!-- //footer -->



<script>
//     $(document).ready(function(){
//     	setMakeFooterBox();
//     })

//     function setMakeFooterBox(){
//     	setTimeout(function() {
//     		if(!menuJson) {
//     			setMakeFooterBox();
//     			return false;
//     		}
//     		makeFooterBox(menuJson);
//         },100);
//     }


    function makeFooterBox(menus){
        
        $.each(menus,function(i,o1){
            o1.url = lang == 'ko' ? o1.kurl : o1.eurl;
            o1.nm  = lang == 'ko' ? o1.nm : o1.enNm;
            $.each(o1.subMenus,function(ii,o2){
//             o1.subMenus.forEach(function(o2){
                o2.url = lang == 'ko' ? o2.kurl : o2.eurl;
                o2.nm  = lang == 'ko' ? o2.nm : o2.enNm;
            })
        })
        $('#sitemapWrap ul:first').html($.templates('#footerWrapTml').render(menus));
    }
</script>



<script id="footerWrapTml" type="text/x-jsrender">
{{for}}
{{if !~isEmpty(url)}}
<li>
    <a href="javascript:void(0)">{{:nm}}</a>
    <ul class="list-depth2">
    {{for subMenus }}
       {{if !~isEmpty(url)}}
        <li><a href="{{:url}}" {{if url.indexOf("http") > -1}}target="_blank"{{/if}} >{{:nm}}
		{{if menuCd == '0603'}}
		<i class="ico-outer"></i>
		{{/if}}
		</a></li>
        {{/if}}
    {{/for}}
    </ul>
</li>
{{/if}}
{{/for}}
</script>