/*!
 * d2.util.page.js v0.9
 * 페이지 컨트롤 관련
 * 
 * @author shyu
 * @date 2012-12-21
 */


/************************************************************
설명 : 새창 띄워서 포커스 주기
예) windowOpen('주소','윈도우이름',가로,세로,'기타 설정')
,scrollbars=yes ,personalbar=no ,resizable=no ,directories=no ,status=no ,menubar=no
************************************************************/
function windowOpen(pUrl,pName,pW,pH,val){
	var winWidth  = window.screen.width;    //해상도가로
	var winHeight  = window.screen.height;     //해상도세로
	
	// XP인 경우 height 29 추가
	//if( window.navigator.userAgent.indexOf("SV1") != -1 ) {
	//	pH += 29;
	//}
	
	var pLeft,pTop;
	pLeft = parseInt((winWidth-pW)/2);
	pTop = parseInt((winHeight-pH)/2);
	
	var newWin=window.open(pUrl,pName,"width="+pW+",height="+pH+",left="+pLeft+",top="+pTop+" "+ val );
	newWin.focus(); 
}


function windowOpenRtn(pUrl,pName,pW,pH,val){
	var winWidth  = window.screen.width;    //해상도가로
	var winHeight  = window.screen.height;     //해상도세로
	
	// XP인 경우 height 29 추가
	//if( window.navigator.userAgent.indexOf("SV1") != -1 ) {
	//	pH += 29;
	//}
	
	var pLeft,pTop;
	pLeft = parseInt((winWidth-pW)/2);
	pTop = parseInt((winHeight-pH)/2);
	
	var newWin=window.open(pUrl,pName,"width="+pW+",height="+pH+",left="+pLeft+",top="+pTop+" "+ val );
	newWin.focus(); 
	return newWin;
}

/************************************************************
함수 : window_center(넓이,높이)
목적 : 예약창의 사이즈 조절
방법 : window_center (넓이,높이)
        예) window_center(100,100)
      
************************************************************/
function window_center(w, h) { 
	var width=screen.width;
	var height=screen.height;
	var x=(width/2)-(w/2);
	var y=(height/2)-(h/2);
	window.resizeTo(w,h);
	window.moveTo(x,y);
}

