<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<header class="header-wrap">
	<div class="logo-box">
		<a href="${LANG eq 'ko' ? '/' : '/en'}">
			<h1><i class="ico-logo"><span class="hidden">대한전선</span></i></h1>
		</a>
	</div>

	<div class="sub-menu" id="menuWrap">
		<%-- JS RENDER --%>
	</div>

	<div class="btn-box">
		<div class="link-select v2">
			<a href="#" class="current">${LANG eq 'ko' ? 'KOR' : 'ENG'}</a>
			<ul class="list-select">
				<li <c:if test="${LANG eq 'ko'}">class="active"</c:if>><a href="/">KOR</a></li>
				<li <c:if test="${LANG eq 'en'}">class="active"</c:if>><a href="/en">ENG</a></li>
			</ul>
		</div>
		<a href="#" class="btn-srch"><i class="ico-srch"><span class="hidden">검색</span></i></a>
		<button type="button" class="btn-menu" id="openLnb"><i></i><i></i><i></i></button>
	</div>
</header>

<nav class="nav-wrap">
	<div class="top-box">
		<div class="logo-box">
			<a href="${LANG eq 'ko' ? '/' : '/en'}"><i class="ico-logo"><span class="hidden">대한전선</span></i></a>
		</div>
		<div class="btn-box">
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/qna"><spring:message code="header.btn1" text="문의하기"/></a>
			<a href="${LANG eq 'ko' ? '' : '/'.concat(LANG)}/customer/corPromotion"><spring:message code="header.btn2" text="자료실"/></a>

			<c:if test="${LANG eq 'ko'}">
				<a href="/esg/cyberReport"><spring:message code="header.btn3" text="사이버 신문고"/></a>
			</c:if>

		</div>
		<div class="lang-box">
			<a href="/" <c:if test="${LANG eq 'ko'}">class="active"</c:if>>KOR</a>
			<a href="/en" <c:if test="${LANG eq 'en'}">class="active"</c:if>>ENG</a>
		</div>
		<button type="button" class="btn-menu active"><i></i><i></i><i></i></button>
	</div>

	<div class="allmenu-box" id="navList">
		<ul class="list-depth1">
			<%-- JS RENDER --%>
		</ul>
	</div>
</nav>

<div class="search-wrap">
	<div class="top-box">
		<div class="logo-box">
			<a href="#"><i class="ico-logo"><span class="hidden">대한전선</span></i></a>
		</div>

		<button type="button" class="btn-menu active"><i></i><i></i><i></i></button>
	</div>
	<div class="search-box">
		<div class="search-form">
			<input type="text" class="input-type" id="schKey"
			 <c:if test="${LANG eq 'ko'}">placeholder="검색어를 입력하세요."</c:if> 
             <c:if test="${LANG eq 'en'}">placeholder="Type what are you looking for"</c:if>
			>
			<button class="btn-clear"><i class="ico-clear"><span class="hidden">검색어지우기</span></i></button>
			<!-- <button type="submit" class="btn-search"><i class="ico-srch"><span class="hidden">검색</span></i></button> -->
			<a href="javascript:void(0);" class="btn-search"><i class="ico-srch"  onclick="search();"><span class="hidden">검색</span></i></a>
		</div>
		<div class="recomn-box">
			<strong class="title"><spring:message code="header.schKey" text="추천검색어"/></strong>
			<div class="tag-box" id="rcmdSchList">
				<c:forEach var="item" items="${rcmdSearchList}">
				<a href="${item.btnLink}" target="${item.btnLinkTarget}" class="tag">${item.title}</a>
				</c:forEach>
			</div>
		</div>
	</div>
</div>


<script>
	var menuJson;
	var lang = '${LANG}';
	var serverId = '${SERVER_ID}';
	$(function(){
		$.getJSON("/resources/json/menus.json?v4", function(json){
			menuJson = lang == 'ko' ? json : $(json).sort(function (o1,o2) {
				if(o1.enOrd > o2.enOrd) return 1;
				if(o1.enOrd < o2.enOrd) return -1;
				return 0;
            }).toArray();

			//모바일 버전에서는 웹진 노출 x
			if(isMobile()){
				console.log(menuJson);
				for(var i = 0; i < menuJson.length; i++){
					let menuCd1 = menuJson[i].menuCd;
					if(menuCd1 === '04'){
						let menuNews = menuJson[i].subMenus;
						for(var j = 0; j< menuNews.length; j++){
							let menuCd2 = menuNews[j].menuCd;
							if(menuCd2 === '0402'){
								let menuPrs = menuNews[j].subMenus;
								for(var z = 0; z < menuPrs.length; z++){
									let targetCd = menuPrs[z].menuCd;
									if(targetCd === '040203'){
										menuPrs[z].disp = 'N'
									}
								}
							}
						}
					}
				}
			}



			var html = setMenu(menuJson,1);
			$('#menuWrap').html(html);
			//nav-list
			makeNavList(menuJson);
			makeFooterBox(menuJson);
			UI.init();
		});

		$("#schKey").keydown(function(e) {
			if (e.keyCode == 13) {
				e.preventDefault()
				search()
			}
		});

		$('#openLnb').click(function(){
			var el = $('.list-depth3').find('.active').parent().parent().find('.btn-depth3');
			if($(el).length == 0 || !isMobile()){
				return;
			}
			$(el).next('.list-depth3').slideDown().parent('li').siblings('li').find('.list-depth3').slideUp();
			$(el).addClass('active').parent('li').siblings('li').find('.btn-depth3').removeClass('active');
		})
	});

	function search(){
		if(isEmpty($('#schKey').val().trim())){
			alert('<spring:message code="alert.schWord" text="검색어를 입력해주세요"/>');
			return;
		}

		var url = lang == 'ko' ? '/search/list' : '/en/search/list'
		location.href = url + '?schKey=' + encodeURI($('#schKey').val())
	}

	function setMenu(json,idx){
		var str = '';
		var rowClass = "";
		if(idx == 2){
			str += '<div class="menu-box">';
			if(arrEvery(json,"upCd","03")){
				rowClass = "row2";
			}
		}

		str += '<ul class="list-depth'+idx+' '+rowClass+'">';
		
		$.each(json,function(i,arr){
			if(arr.disp == 'N') {
				return true;
			}
			var html = "";
			var active = "";
			var blank = "";
			var nm = lang == "ko" ? arr.nm : arr.enNm;
			var url = lang == "ko" ? arr.kurl : arr.eurl;

			if(arr.subMenus && arr.subMenus.length > 0){
				html = setMenu(arr.subMenus,idx+1);
			}

			// if((url != '' && arr.kactiveUrls.includes(url)) || html.includes("current")){
			// 	active = "current";
			// }

			if(url.indexOf("http") > -1){
				blank = 'target="_blank"';
			}
			if(!isEmpty(url)){
				if(idx == 1){
					str += '<li><a href="javascript:void(0)" class="" '+blank+' ><span>'+nm+'</span></a>';
				}
				else{
					str += '<li><a href="'+url+'" class="" '+blank+' ><span>'+nm+'</span></a>';
				}
				
				str += html;
				str += '</li>';
			}
		});
		str += '</ul>';

		if(idx == 2){
			str += '</div>';
		}
		return str;
	}

	//nav list
	function makeNavList(menuJson){

		//1depth
		$.each(menuJson,function(i,o1){
			o1.url = lang == 'ko' ? o1.kurl : o1.eurl;
			o1.nm  = lang == 'ko' ? o1.nm : o1.enNm;

			//2depth
			$.each(o1.subMenus,function(ii,o2){
// 			o1.subMenus.forEach(function(o2){
				o2.url = lang == 'ko' ? o2.kurl : o2.eurl;
				o2.nm  = lang == 'ko' ? o2.nm : o2.enNm;
				//3depth
				$.each(o2.subMenus,function(iii,o3){
// 				o2.subMenus.forEach(function(o3){
					o3.url = lang == 'ko' ? o3.kurl : o3.eurl;
					o3.nm  = lang == 'ko' ? o3.nm : o3.enNm;
				})
			})
		})
		var obj = "";
		if(menuJson){
			obj = $.grep(menuJson,function(v){
				var locStr = location.pathname;
				if(location.pathname.indexOf("/majorActivities") > -1 || location.pathname.indexOf("/ethics") > -1){
					locStr = "/esg";
				}
				var nm = v.nm ? v.nm : ""; 
				return locStr.indexOf(nm.toLowerCase()) > -1;
			})[0]
		}
		var nowMenuCode = "";
		if(obj){
			nowMenuCode = obj.menuCd;
		}else{
			nowMenuCode = '01';
		}
		$('#navList ul').html($.templates('#navListTmpl').render({list : menuJson, nowMenuCode : nowMenuCode, nowUrl : location.pathname,isMobile : isMobile()}));
	}
</script>

<script id="navListTmpl" type="text/x-jsrender">
{{for list ~nowMenuCode=nowMenuCode ~nowUrl = nowUrl ~isMobile = isMobile}}
	{{if !~isEmpty(url) && disp == 'Y'}}
	<li {{if menuCd == ~nowMenuCode}}class="active"{{/if}}>
		<a href="javascript:void(0)">{{:nm}} </a>
		{{if !~isEmpty(subMenus)}}
		<ul class="list-depth2">
			{{for subMenus}}
			{{if !~isEmpty(url)  && disp == 'Y'}}
			<li>
				{{if !~isEmpty(subMenus) && upCd == '03'}}
				<a href="javascript:void(0)" class="btn-depth3">{{:nm}}<i class="ico-arr v2"></i></a>
				{{else ~isEmpty(subMenus) && upCd == '06'}}
				<a href="{{:url}}">{{:nm}}<i class="ico-outer"></i></a>
				{{else}}
				<a href="{{:url}}">{{:nm}}</a>
				{{/if}}
				{{if !~isEmpty(subMenus) && ~every(subMenus,'disp','Y') }}
					<ul class="list-depth3">
						{{for subMenus}}
						{{if !~isEmpty(url) && (disp == 'Y' || upCd.startsWith('03'))}}
						<li {{if url == ~nowUrl  && ~nowUrl.length > 3 }}class="active"{{/if}} data-code="{{:menuCd}}"><a href="{{:url}}">{{:nm}}</a></li>
						{{/if}}
						{{/for}}
					</ul>
				{{else !~isEmpty(subMenus) && ~isMobile }}
					<ul class="list-depth3">
						{{for subMenus}}
						{{if !~isEmpty(url) && (disp == 'Y' || upCd.startsWith('03'))}}
						<li {{if url == ~nowUrl  && ~nowUrl.length > 3 }}class="active"{{/if}} data-code="{{:menuCd}}"><a href="{{:url}}">{{:nm}}</a></li>
						{{/if}}
						{{/for}}
					</ul>
				{{/if}}
			</li>
			{{/if}}
			{{/for}}
		</ul>
		{{/if}}
	</li>
	{{/if}}
{{/for}}
</script>