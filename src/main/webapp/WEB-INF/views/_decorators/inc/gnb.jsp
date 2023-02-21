<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<div class="sub-nav">
	<div class="inner-box" >
		<%-- select box body --%>
		<a href="${LANG eq 'ko' ? '/' :'/en'}" class="btn-home"><i class="ico-home"><span class="hidden">메인으로</span></i></a>
		<div class="link-select" id="menu1">
			<a href="#" class="current"></a>
			<ul class="list-select" id="">

			</ul>
		</div>
		<div class="link-select" id="menu2">
			<a href="#" class="current"></a>
			<ul class="list-select">

			</ul>
		</div>
		<div class="link-select focus" id="menu3">
			<a href="#" class="current"></a>
			<ul class="list-select">

			</ul>
		</div>
		<div class="link-select focus" id="menu4">
			<a href="#" class="current"></a>
			<ul class="list-select">

			</ul>
		</div>
		<div class="sns-box" style="display: none;">
			<button type="button" class="btn-share"><i class="ico-share"><span class="hidden">공유하기</span></i></button>
			<div class="sns-pop">
				<ul class="list-sns">
					<li><a href="#"><i class="ico-facebook"><span class="hidden">페이스북</span></i></a></li>
					<li><a href="#"><i class="ico-twitter"><span class="hidden">트위터</span></i></a></li>
					<li><a href="#"><i class="ico-url"><span class="hidden">주소로 공유하기</span></i></a></li>
				</ul>
				<button type="button" class="btn-close"><i class="ico-clear"><span class="hidden">sns팝업 닫기</span></i></button>
			</div>
		</div>
	</div>
</div>


<script>

	$(function(){
		var path = location.pathname;
		if(path.indexOf("/business/product/productDetail") > -1) {
			$('.sns-box').show();
		}else if(path.indexOf("/business/solutionDetail") > -1) {
			$('.sns-box').show();
		}else if(path.indexOf("/business/successStoryDetail") > -1) {
			$('.sns-box').show();
		}else if(path.indexOf("/business/globalNetwork/dangjin") > -1) {
			$('.sns-box').show();
		}else if(path.indexOf("/business/globalNetwork/saudi") > -1) {
			$('.sns-box').show();
		}else if(path.indexOf("/business/globalNetwork/vina") > -1) {
			$('.sns-box').show();
		}else if(path.indexOf("/business/globalNetwork/mtec") > -1) {
			$('.sns-box').show();
		}  else if(path.indexOf("/taihanNewsDetail") > -1){
			$('.sns-box').show();
		} else if(path.indexOf("/releaseDetail") > -1){
			$('.sns-box').show();
		}else{
			$('.sns-box').empty();
		}
	});

	function setmenu(dept,menuCd){
		setTimeout(function() {
			if(!menuJson) {
				setmenu(dept,menuCd);	
				return false;
			}
	        setMenuSelectBox(menuJson, dept, menuCd);
	    },100);
	}

	function setMenuSelectBox(json,lvl,menuCd){
		var menuCd1 = menuCd.substring(0,2);
		var menuCd2 = lvl > 1  ? menuCd.substring(0,4) : null;
		var menuCd3 = lvl > 2  ? menuCd.substring(0,6) : null;
		var menuCd4 = lvl > 3  ? menuCd.substring(0,8) : null;

		//1depth
		var menu1Obj = $.grep(json,function(o) {return o.menuCd == menuCd1})[0];
		drawGnbSelectBox(menu1Obj,json,1,menuCd1,menuCd);

		//2depth
		var menu2Obj = $.grep(menu1Obj.subMenus,function(o) {return o.menuCd == menuCd2})[0];
		drawGnbSelectBox(menu2Obj,menu1Obj.subMenus,2,menuCd2,menuCd);
		
		if(lvl < 3){
			$('#menu3').hide();
			$('#menu4').hide();
			return;
		}

		//3depth
		var menu3Obj = $.grep(menu2Obj.subMenus,function(o) {return o.menuCd == menuCd3})[0];
		drawGnbSelectBox(menu3Obj,menu2Obj.subMenus,3,menuCd3,menuCd);

		if(lvl < 4){
			$('#menu4').hide();
			return;
		}
		
		//4depth
		var menu4Obj = $.grep(menu3Obj.subMenus,function(o) {return o.menuCd == menuCd4})[0];
		drawGnbSelectBox(menu4Obj,menu3Obj.subMenus,4,menuCd4,menuCd);
	}


	function drawGnbSelectBox(obj,arr,idx,depthCd,menuCd){
		$('#menu'+idx).find('a').text(lang == 'ko' ? obj.nm : obj.enNm);
		var str = '';
		$.each(arr,function(i,o) {
// 		arr.forEach(function(o) {
			var active = o.menuCd == depthCd ? 'active' : '';
			var nm =  lang == 'ko' ? o.nm : o.enNm;
			var url = lang == 'ko' ? o.kurl : o.eurl;
			var blank = "";
			if(url.indexOf("http") > -1){
				blank = 'target="_blank"';
			}
			if(!isEmpty(url))
				var isLink = false;
				if(idx == 3){
					var linkArr = ['/business/product/electricity'
						,'/business/product/renewable'
						,'/business/product/communication'
						,'/business/product/material'];
					$.each(linkArr,function(i,v){
						if(url.indexOf(v) > -1){
							isLink = true;
							return;
						}
					})
				}
				url = isLink ? url + "#link" : url;
				str += '<li class="'+active+'"><a href="'+url+'" '+blank+'>'+nm+'</a></li>';
		})
		$('#menu'+idx+' ul').html(str);
		if(menuCd === obj.menuCd)  $('#menu'+idx).addClass('focus');
	}

</script>

