/*!
 * d2.util.form.js v0.9
 * 폼 관련 유틸
 * 
 * @author shyu
 * @date 2012-12-21
 * @dependency d2.String.prototype.js
 * @dependency jquery
 */

 //-----------------------------------------------------------------------------
 // 설명 : 폼에서 공백 체크해서 공백이면 메세지 보여지고 해당 폼값에 포커스
 // 예) checkSpace(frm,strMsg) checkSpace(폼.이름, 메세지)
 // 리턴) 공백이 아니면 true | 공백이면 false 
 //-----------------------------------------------------------------------------
function checkSpace(frm, strMsg, blnFocus) {
	if($(frm).val().isBlank()){
		alert(strMsg);
		$(frm).val('');

		if(blnFocus != '') {
			$(blnFocus).focus();
		} else {
			$(frm).focus();
		}
		return false;
	}
	return true;
}


/***** 입력되면 다음으로 이동 *******/
function nextChk(arg,len,nextname) { 
	if (arg.value.length==len) {
		nextname.focus() ;
		return;
	}
}
	
	

/**********************************************************
name (form.이름 ) , ivalue(Value)
예) optionValueSel(form.job , 2)
해당 옵션에서 밸류값 같은것을 셀렉트 시킨다.
 *********************************************************/
function optionValueSel(name,ivalue) {
	var i,sel = 0;
	for(i=0;i<name.length;i++) {
		if(name.options[i].value == ivalue ) {
			sel = i;
		}
	}
	name.options[sel].selected = true;
}


/**********************************************************
예) optionValueRtn(form.name)
해당 옵션에서 선택된 밸류값을 리턴 시킨다.
 *********************************************************/
function optionValueRtn(name) {
	var name_value = "";
  
	for(var i=0;i<name.length;i++) {
		if ( name[i].selected == true ) {
			name_value = name[i].value;
		}
	}
	return name_value;
}

/**********************************************************
예) optionTextRtn(form.name)
해당 옵션에서 선택된 텍스트값을 리턴 시킨다.
 *********************************************************/
function optionTextRtn(name){
	var name_value = "";
  
	for(var i=0;i<name.length;i++) {
		if ( name[i].selected == true ) {
			name_value = name[i].text;
		}
	}
	return name_value;
}

/**********************************************************
예) optionSelectedCnt(form.name)
select에서 선택된 option의 갯수를 리턴 시킨다.
 *********************************************************/
function optionSelectedCnt(name){
	var cnt = 0;
  
	for(var i=0;i<name.length;i++) {
		if ( name[i].selected == true ) {
			cnt++;
		}
	}
	return cnt;
}

/**********************************************************
예) optionSelectedCnt(form.name)
select에서 선택된 option의 갯수를 리턴 시킨다.
 *********************************************************/
function selectedCnt(name){
	var cnt = 0;
	if(name) {
		if(!name.length) {
			if(name.checked) {
				cnt++;
			}
		} else {	
			for(var i=0;i<name.length;i++) {
				if ( name[i].checked == true ) {
					cnt++;
				}
			}
		}
	}
	return cnt;
}


/************************************************************
예) checkRadio(name)
라디오 버튼에서 선택한 것의 밸류값을 리턴한다
선택한것이 없다면 "" 공백을 리턴한다.
************************************************************/
function checkRadio(name) {
	var radio = document.getElementsByName(name);
	if (radio) {
		if (!radio.length) {
			if (radio.checked) {
				return radio.value;
			}
		} else {
			for (var i = 0; i < radio.length; i++) {
				if (radio[i].checked) {
					return radio[i].value;
				}
			}
		}
	}
	return "";
}


/*************************************************************
예) checkInsert ( name (form이름 ) , ivalue(Int형 Value) )
radio나 checkbox 에서 해당 밸류값과 같은것이 선택 되도록 한다.
 ************************************************************/
function checkInsert(name,ivalue) {
	if(name){
		if(!name.length) {
			if(name.value == ivalue) {
				name.checked = true;
			}
		} else {
			for(var i=0;i<name.length;i++) {
				if(name[i].value == ivalue) {
					name[i].checked = true;
				}
			}
		}
	}
}

//체크상자 초기화 체크된것을 모두 false 로 한다.
function checkInit(name) {
	if(name){
		if(!name.length) {
			name.checked = false;
		} else {
			for(var i=0;i<name.length;i++) {
				name[i].checked = false;
			}
		}
	}
}





/*
폼안에 있는 값들을 인코딩해서 리턴한다.
예) formData2QueryString(document.pageForm)
리턴) gotoPage=3&col=1&search=
*/
function formData2QueryString(docForm) {
	var submitContent = '';
	var formElem;
	var lastElemName = '';
	for (var i = 0; i < docForm.elements.length; i++) {
    
		formElem = docForm.elements[i];

		switch (formElem.type) {
			// Text fields, hidden form elements
			case 'text':
			case 'hidden':
			case 'password':
			case 'textarea':
			case 'select-one':
				submitContent += formElem.name + '=' + escape(formElem.value) + '&';
				break;
        
			// Radio buttons
			case 'radio':
				if (formElem.checked) {
					submitContent += formElem.name + '=' + escape(formElem.value) + '&';
				}
				break;
        
			// Checkboxes
			case 'checkbox':
				if (formElem.checked) {
					// Continuing multiple, same-name checkboxes
					if (formElem.name == lastElemName) {
						// Strip of end ampersand if there is one
						if (submitContent.lastIndexOf('&') == submitContent.length-1) {
							submitContent = submitContent.substr(0, submitContent.length - 1);
						}
						// Append value as comma-delimited string
						submitContent += ',' + escape(formElem.value);
					}else {
						submitContent += formElem.name + '=' + escape(formElem.value);
					}
					submitContent += '&';
					lastElemName = formElem.name;
				}
			break;
		}
	}

	// Remove trailing separator
	submitContent = submitContent.substr(0, submitContent.length - 1);
	return submitContent;
}




function GetSelectedVal(objSelect){
        var i;
        var selectedval="";
        for(i=0;i<objSelect.options.length;i++){
                if(objSelect.options[i].selected==true){
                        selectedval = objSelect.options[i].value;
                        break;
                }
        }
        return selectedval ;
}

function GetSelectedTxt(objSelect){
        var i;
        var selectedtext="";
        for(i=0;i<objSelect.options.length;i++){
                if(objSelect.options[i].selected==true){
                        selectedtext= objSelect.options[i].text;
                        break;
                }
        }
        return selectedtext;
}

function allblur() {
	for (var i = 0; i < document.links.length; i++) {
		var obj = document.links[i];
		if(obj.addEventListener) obj.addEventListener("focus", oneblur, false);
		else if(obj.attachEvent) obj.attachEvent("onfocus", oneblur);
	}
}
function oneblur(e) {
	var evt = e ? e : window.event;
	if(evt.target) evt.target.blur();
	else if(evt.srcElement) evt.srcElement.blur();
}

/* 
*Source Select의 요소(option)를 Target Select로 이동한다. 
*@author neoburi@nowonplay.com, 2005.12.27 
*/ 
function moveElement(sourceObj, targetObj, isSort){ 
	var elms = sourceObj.options; 
	for(var i = 0, k = elms.length; i < k; i++){ 
		if( elms[i].selected ){ 
		targetObj.add(new Option(elms[i].text, elms[i].value, false, false)); 
		} 
	} 
	removeElement(sourceObj); 
	sourceObj.selectedIndex = -1; 
} 

/* 
*Source Select의 요소(option)를 제거한다. 
*@author neoburi@nowonplay.com, 2005.12.27 
*/ 
function removeElement(sourceObj){ 
	var elms = sourceObj.options; 
	var posArr = new Array(); 
	var increase = 0; 
	for( var i = 0, k = elms.length; i < k; i++ ){ 
		if( elms[i].selected ){ 
			posArr[increase++] = elms[i].value; 
		} 
	} 
	for( var i = 0, k = posArr.length; i < k; i++ ){ 
		for( var x = 0, y = elms.length; x < y; x++ ){ 
			if( (posArr[i] == elms[x].value) && elms[x].selected ){ 
				sourceObj.remove(x); 
				x = 0; 
				y--; 
			} 
		} 
	} 
} 

/* 
*Source Select의 요소(option)의 상하순서를 바꾼다. 
*@author 아무게, 2005.12.27 
*/ 
function move_option_in(src,to) { 
	if(!src) return; 
	var src_index = src.selectedIndex; 
	if(src_index<0) return; 
	if(to == "up"){ 
		if(src_index==-1||src_index==0) return; 
		var tempoption = new Option(src.options[src_index].text, src.options[src_index].value); 
		src.options[src_index] = new Option(src.options[src_index-1].text, src.options[src_index-1].value); 
		src.options[src_index-1]=tempoption; 
		src.options[src_index-1].selected=true; 
	} 
	else if(to == "down"){ 
		if(src_index>=src.options.length-1) return; 
		var tempoption = new Option(src.options[src_index].text, src.options[src_index].value); 
		src.options[src_index] = new Option(src.options[src_index+1].text, src.options[src_index+1].value); 
		src.options[src_index+1]=tempoption; 
		src.options[src_index+1].selected=true; 
	} 
} 




/********************************************************************
object의 Left Position을 리턴한다.
********************************************************************/
function g_getLeftPos(obj) {
    var parentObj = null;
    var clientObj = obj;
    var left = obj.offsetLeft + document.body.clientLeft;

    while((parentObj=clientObj.offsetParent) != null){
        left = left + parentObj.offsetLeft;
        clientObj = parentObj;
    }
    return left;
}

/********************************************************************
object의 Top Position을 리턴한다.
********************************************************************/
function g_getTopPos(obj) {
    var parentObj = null;
    var clientObj = obj;
    var top = obj.offsetTop + document.body.clientTop;

    while((parentObj=clientObj.offsetParent) != null){
        top = top + parentObj.offsetTop;
        clientObj = parentObj;
    }
    return top;
}

/********************************************************************
코드값을 읽어온다
********************************************************************/
function g_getValue(obj) {
	if (typeof obj != "object") return null;
	if (select == null) return null;
	
  	return obj.options[obj.selectedIndex].value;
}


/*******************************************************************
objVal값 form file value 'C:\My Documents\My Pictures\감자도리\xxxx.jpg'
limitExt값 'jpg|gif|png|bmp' 
확장자가 해당하는 확장자가 아닐경우 리턴 false
*******************************************************************/
function fileExtCheck(objVal,limitExt){
	var val=objVal.toLowerCase();
	if(!val)
	    return false;
	var fileExt = val.substr(val.lastIndexOf('.') + 1,val.length);
	if(limitExt.indexOf(fileExt) == -1){
		if(lang == 'en'){
			alert("File except filename extensions " + limitExt.replace(/\|/gi,",") +"cannot be selected");
		}else{
			alert("확장자 " + limitExt.replace(/\|/gi,",") + "를 제외한 파일을 선택 할 수 없습니다");
		}

	    return false;
	}
	return true;
}

// TODO String 관련 이동
function n2c(num) {
	if (parseInt(num) < 10 && num.length < 2)
		return "0" + num;
	else
		return "" + num;
}


/*******************************************************************
태그 입력 : 공백, 한글&영문 제외, 글자수 체크
*******************************************************************/
function TagSearchCheck(objVal1, objVal2, objVal3, strLength) {
	if( (objVal1.value.length == 0) && (objVal2.value.length == 0) && (objVal3.value.length == 0) ) {
		alert('태그를 1개이상 입력해 주세요!');
		objVal1.focus();
		return;
	}
	
	for(var h=1; h <=3 ; h++) {
		var objVal = eval('objVal' + h);
		
		if(objVal.value.length > 0) {
		
			//공백제거
			var str = objVal.value;
			
			if (str.search(/\S/)<0){			//\S 공백이 아닌 문자를 찾는다.
				alert('공백문자는 입력할 수 없습니다.');
				objVal.focus();
				return false;
			}
			
//			var temp=str.replace(' ','');
			if (str.indexOf(' ') > 0) {
				alert('공백문자는 입력할 수 없습니다.');
				objVal.focus();
				return false;
			}
			
			var hFlag = true;
			var eFlag = false;
			// 한글 입력체크
			for(var i=0;i<=str.length;i++) {
				if(str.charCodeAt(i)<12644){
					hFlag = false;
					objVal.focus();
					break;
				}
			}
			
			// 영문 & 숫자 입력체크
			var strCheck='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';
			for(var i=0; i<str.length; i++) {
				for(var j=0; j<strCheck.length; j++) {
					if(str.charAt(i) == strCheck.charAt(j)){
						eFlag = true;
						objVal.focus();
						break;
					}
				}
			}
			
			if(hFlag == false && eFlag == false) {
				alert('한글 및 영문만 입력할 수 있습니다!');
				objVal.focus();
				return;
			}
			
			if(str.length > strLength) {
				alert('최대 7자까지 입력할 수 있습니다.');
				objVal.focus();
				return false;
			}
		}
	}
	
	if( objVal2.value.length > 0 ) {
		if( (objVal1.value == objVal2.value) || (objVal1.value == objVal3.value) || (objVal2.value == objVal3.value) ) {
			alert('동일한 태그를 입력할 수 없습니다!');
			return;
		}
	} else if( objVal3.value.length > 0 ) {
		if( objVal1.value == objVal3.value ) {
			alert('동일한 태그를 입력할 수 없습니다!');
			return;
		}
	}
	
	return true;
}



function isEqualsWithNextChar(str, pos) {
//	console.log("isNextChar : "+str +","+pos);
	var code1 = str.charAt(pos).charCodeAt(0);
	var code2 = str.charAt(pos + 1).charCodeAt(0);
	console.log(str.charAt(pos) + "(" + code1 + ") , " + str.charAt(pos+1) + "(" + code2 + ") : " + (code1 == (code2 - 1)));
	if (code1 == (code2 - 1))
		return true;
	else
		return false;
}

function isEqualsWithPreviousChar(str, pos) {
//	console.log("isPreviousChar : "+str +","+pos);
	var code1 = str.charAt(pos).charCodeAt(0);
	var code2 = str.charAt(pos + 1).charCodeAt(0);
//	console.log(str.charAt(pos) + "(" + code1 + ") , " + str.charAt(pos+1) + "(" + code2 + ") : " + (code1 == (code2 - 1)));
	if (code1 == (code2 + 1))
		return true;
	else
		return false;
}

function isContainSequentialString(str, cnt) {
	console.log("str.length : "+str.length);
	if (!cnt) cnt = 3;
	console.log("cnt : "+cnt);
	var nRslts = new Array();
	var pRslts = new Array();
	var k = 0;
	for (var i = 0; i < str.length - cnt + 1; i++) {
		console.log("i : "+i);
		k = 0;
		for (var j=i; j < i + cnt -1; j++) {
			if (isEqualsWithNextChar(str, j)) {
				nRslts[k] = true;
			} else {
				nRslts[k] = false;
			}
			
			if (isEqualsWithPreviousChar(str, j)) {
				pRslts[k] = true;
			} else {
				pRslts[k] = false;
			}
			console.log(i + "," + j +" rslt "+k+" : "+nRslts[k]);
			k++;
			
//			console.log(i + "," + j );
		}
//		console.log("rslt : "+rslt);
		var nRslt = true;
		var pRslt = true;
		for(var n = 0; n < cnt-2; n++) {
			nRslt = nRslt && nRslts[n] && nRslts[n+1];
			console.log(n + "nRslt : "+nRslt);
			pRslt = pRslt && pRslts[n] && pRslts[n+1];
//			console.log("pRslt : "+pRslt);
		}
		
		if (nRslt || pRslt) return true;
		
//		if (rslt[0] && rslt[1] && rslt[2]) return true;
		
//		if ((isEqualsWithNextChar(str, i) && isEqualsWithNextChar(str, i+1) && isEqualsWithNextChar(str, i+2)) ||
//            (isEqualsWithPreviousChar(str, i) && isEqualsWithPreviousChar(str, i+1) && isEqualsWithPreviousChar(str, i+2)))
//			return true;
	}
	return false;
}

/**
 * 
 * @param String source
 * @param search
 * @returns {Boolean}
 */
function isContains(source, search)  {
	if (source.search(search) != -1)
		return true;
	else
		return false;
} 

/*******************************************************************
파일업로드시 actionUrl을 리턴해준다 
예) http://aa.bb.co.kr/aaaa/bbb/ab.jsp 인경우
/aaaa/bbb 리턴
*******************************************************************/
function getActionUrl() {
	//action URL구하기
    var url = location.href;
		var urlArr = (url).split("/");
		url = "";
		for(var i=3; i<urlArr.length-1; i++) {
			url += "/" + urlArr[i];
		}
		return url;
}

/*******************************************************************
input에 숫자만 입력되게 처리
예) $('input[type=tel]').numberic();
*******************************************************************/
$.fn.numberic = function () {
	var validCheck = {
	    keyDown : function (e) {
	        var key;
	        if(window.event)
	            key = window.event.keyCode; //IE
	        else
	            key = e.which; //firefox
	        var event;
	        if (key == 0 || key == 8 || key == 46 || key == 9){
	            event = e || window.event;
	            if (typeof event.stopPropagation != 'undefined') {
	                event.stopPropagation();
	            } else {
	                event.cancelBubble = true;
	            }   
	            return;
	        }
	        if (key < 48 || (key > 57 && key < 96) || key > 105 || e.shiftKey) {
	            e.preventDefault ? e.preventDefault() : e.returnValue = false;
	        }
	    },        
	    keyUp : function (e) {
	        var key;
	        if(window.event)
	            key = window.event.keyCode; //IE
	        else
	            key = e.which; //firefox
	        var event;
	        event = e || window.event;        
	        if ( key == 8 || key == 46 || key == 37 || key == 39 ) 
	            return;
	        else
	            event.target.value = event.target.value.replace(/[^0-9]/g, '');
	    },
	    focusOut : function (ele) {
	        ele.val(ele.val().replace(/[^0-9]/g, ''));
	    }
	};
	
	$(this).css('ime-mode', 'disabled').keydown(function(e) {
	    validCheck.keyDown(e);
	}).keyup( function(e){
	    validCheck.keyUp(e);
	}).focusout( function(e){        
	    validCheck.focusOut($(this));
	});
}
// EOF