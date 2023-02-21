var oEditors = [];
var oEditors2 = [];

function setEditor(formId) {
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: formId,
		sSkinURI: "/SmartEditor/SmartEditor2Skin.html",
		fCreator: "createSEditor2"
	});
}
function setEditor2(formId) {
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors2,
		elPlaceHolder: formId,
		sSkinURI: "/SmartEditor/SmartEditor2Skin.html",
		fCreator: "createSEditor2"
	});
}

function setEditorFileUpload(formId) {
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors2,
		elPlaceHolder: formId,
		sSkinURI: "/SmartEditor/SmartEditor2SkinFileUpload.html",
		fCreator: "createSEditor2"
	});
}

var monthpicker1, monthpicker2;

$(document).ready(function() {
	if ($("#startDt").length > 0) {
		monthpicker1 = {
			id: 'monthpicker1',
			initiallyEmpty: true,
			selectedYear: parseInt($("#startDt").val().substr(0, 4)) || 2022,
			selectedMonth: parseInt($("#startDt").val().substr(5, 2)) || 1,
			pattern: "yyyy-mm",
			startYear: 2011,
			finalYear: 2031,
			hasEmptyDate: $("#endDt").val() == "" ? true : false
		};
	}
	if ($("#endDt").length > 0) {
		monthpicker2 = {
			id: 'monthpicker2',
			initiallyEmpty: true,
			selectedYear: parseInt($("#endDt").val().substr(0, 4)) || 2022,
			selectedMonth: parseInt($("#endDt").val().substr(5, 2)) || 1,
			pattern: "yyyy-mm",
			startYear: 2011,
			finalYear: 2031,
			hasEmptyDate: $("#endDt").val() == "" ? true : false
		};
	}


	$('.monthpicker_inputfield').each(function() {
		$this = $(this);
		var optionsVarName = $this.data('options-var');
		if (optionsVarName) {
			$this.monthpicker(window[optionsVarName]);
		} else {
			$this.monthpicker(monthpickeroptions);
		}
	});

	$('.monthpicker_inputfield').bind('click', function() {
		$(this).monthpicker('show');
	});

	$('.monthpicker_togglebutton').bind('click', function() {
		$(this).parent().find('.monthpicker_inputfield').monthpicker('show');
	});

	//datepicker(s)
	$('.hasDatepicker2').datepicker({
		todayHighlight: true,
		format: "yyyy-mm-dd",
		autoclose: true,
		language: "ko"
	});
	//datepicker(e)

	$(".list-sns a").each(function(i, v) {
		$(v).attr("href", "javascript:void(0)");
		$(v).click(function() {
			var u = location.href;
			var t = document.title;
			if ($(this).find("i").hasClass("ico-facebook")) {
				window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(u) + '&t=' + encodeURIComponent(t), 'sharer');
			} else if ($(this).find("i").hasClass("ico-twitter")) {
				window.open(' http://twitter.com/home?status=' + encodeURIComponent(u), 'sharer');
			} else if ($(this).find("i").hasClass("ico-url")) {
				copyClipBoard(u);
				alert(lang == 'ko' ? "주소가 복사되었습니다.\n원하는 곳에 붙여넣기(Ctrl+V)해주세요." : "The URL has been copied to the clipboard");

			} else if ($(this).find("i").hasClass("ico-mail")) {
				document.location = "mailto:?subject=" + u;
			}
		});
	});
	$("#startDt,#endDt").change(function() {
		changeMonth($(this));
	});

	$("input[type='file']").change(function() {
		chkFile(this);
	});

	/*var csrfToken = $('meta[name="csrf-token"]').attr('content');
	var csrfHeader = $('meta[name="csrf-header"]').attr('content');
	var csrfParameterName = $('meta[name="csrf-parameterName"]').attr('content');

	$.ajaxSetup({
		beforeSend: function(request) {
			request.setRequestHeader(csrfHeader, csrfToken);
		}
	});

	$("form").each(function() {
		let input = $("<input/>").attr({ name: csrfParameterName, type: "hidden", value: csrfToken });
		$(this).append(input);
	});*/
});

function changeMonth(obj) {
	var year = $(obj).monthpicker("getMonthStr").substr(0, 4);
	var month = $(obj).monthpicker("getMonthStr").substr(4, 2);
	if ($(obj).attr("id") == "startDt") {
		var endDt = "" + $("#endDt").monthpicker("getDate").getFullYear();
		var endYear = endDt.substr(0, 4);
		if (year > endYear) {
			$("#endDt").monthpicker("disableMonths", [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
		} else if (year == endYear) {
			$("#endDt").monthpicker("disableMonths", Array.apply(null, Array(parseInt(month))).map(function(val, idx) {idx + 1}));
		} else {
			$("#endDt").monthpicker("disableMonths", []);
		}

	} else {
		var startDt = "" + $("#startDt").monthpicker("getDate").getFullYear();
		var startYear = startDt.substr(0, 4);
		if (year < startYear) {
			$("#startDt").monthpicker("disableMonths", [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
		} else if (year == startYear) {
			$("#startDt").monthpicker("disableMonths", Array.apply(null, Array(12 - parseInt(month))).map(function(val, idx){idx + parseInt(month) + 1}));
		} else {
			$("#startDt").monthpicker("disableMonths", []);
		}
	}
}

function changeYear(obj, year) {
	var str = $(obj).attr("id");
	if (str == "startDt") {
		var endDt = $("#endDt").monthpicker("getMonthStr");
		if (endDt != "") {
			var endYear = endDt.substr(0, 4);
			var endMonth = endDt.substr(4, 2);
			if (year > endYear) {
				$("#startDt").monthpicker("disableMonths", [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
			} else if (year == endYear) {
				$("#startDt").monthpicker("disableMonths", Array.apply(null, Array(12 - parseInt(endMonth))).map(function(val, idx){ idx + parseInt(endMonth) + 1}));
			} else {
				$("#startDt").monthpicker("disableMonths", []);
			}
		}
	} else if (str == "endDt") {
		var startDt = $("#startDt").monthpicker("getMonthStr");
		if (startDt != "") {
			var startYear = startDt.substr(0, 4);
			var startMonth = startDt.substr(4, 2);
			if (year < startYear) {
				$("#endDt").monthpicker("disableMonths", [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]);
			} else if (year == startYear) {
				$("#endDt").monthpicker("disableMonths", Array.apply(null, Array(parseInt(startMonth))).map(function(val, idx) {idx + 1}));
			} else {
				$("#endDt").monthpicker("disableMonths", []);
			}
		}
	}
}
// url 형식인지를 체크( http, https 를 포함하는 형식 )
function checkUrlForm(strUrl) {
	var expUrl = /^http[s]?\:\/\//i;
	return expUrl.test(strUrl);
}

// 쿠키 가져오기 함수
function getCookie(cName) {
	cName = cName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cName);
	var cValue = '';
	if(start != -1){
		start += cName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cValue = cookieData.substring(start, end);
	}
	return unescape(cValue);
}


function chkFile(obj) {
	let gubun = $(obj).data('gubun');
	var file = $(obj)[0].files[0];
	if (!file) {
		$(obj).parent().find("input[type='text']").val("");
		return;
	}
	if (!fileExtCheck(file.name, $(obj).attr("accept"))) {
		$(obj).parent().find("input[type='text']").val("");
		$(obj).val("");
		return;
	}
	if (!fileSizeCheck(file.size, file.type,gubun)) {
		$(obj).parent().find("input[type='text']").val("");
		$(obj).val("");
		return;
	}
	$(obj).parent().find("input[type='text']").val(file.name);
}

function setThumbnail(event) {
	var reader = new FileReader();

	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("class", "col-lg-6");
		document.querySelector("div#image_container").appendChild(img);
	};

	reader.readAsDataURL(event.target.files[0]);
}

function fileSizeCheck(size, type , gubun) {

	var mb = 1024 * 1024; //1MB
	var maxSize;

	console.log(gubun);
	switch (gubun) {
		case '01':
			maxSize = mb * 20;
			if(size > maxSize){
				alert(lang == 'ko' ? "첨부파일은 20MB이내만 등록 가능합니다." : "The maximum file size that can be uploaded is 20MB");
				return false;
			}
			break;
		case '02':
			maxSize = mb / 5;
			if(size >  maxSize ){
				alert(lang == 'ko' ? '첨부파일은 200kb이내만 등록 가능합니다.' : "The maximum file size that can be uploaded is 200kb");
				return false;
			}
			break;
		case '03':
			maxSize = mb / 2;
			if(size >  maxSize ){
				alert(lang == 'ko' ? '첨부파일은 500kb이내만 등록 가능합니다.' : "The maximum file size that can be uploaded is 500kb");
				return false;
			}
			break;
		case '04':
			maxSize = mb / 3;
			if(size >  maxSize ){
				alert(lang == 'ko' ? '첨부파일은 300kb이내만 등록 가능합니다.' : "The maximum file size that can be uploaded is 300kb");
				return false;
			}
			break;
		case '05':
			maxSize = mb * 30;
			if(size > maxSize){
				alert(lang == 'ko' ? "첨부파일은 30MB이내만 등록 가능합니다." : "The maximum file size that can be uploaded is 30MB");
				return false;
			}
			break;
	}
	return true;
}

//REST API Ajax 호출 하기
function ajaxRestCall(option) {
	//default option
	var defOption = {
		type: "post",
		dataType: "json"
	}
	//option merge
	var optObj = $.extend({}, defOption, option);
	var isComplete = false;
	var deferred = $.Deferred();

	$.ajax(
		optObj
	).done(function (result, status, responseObj) {
		$("#loading").hide();
		console.log(result);
		deferred.resolve(result);
	}).fail(function (result, status, responseObj) {
		$("#loading").hide();
		deferred.reject(result, status);
		var errorMsg;
		if (result.msg) {
			errorMsg = "code:" + result.code + "\n" + "\n" + "msg:" + result.msg;
			alert(result.msg);
		} else {
			if (result.responseJSON) {
				errorMsg = "error:" + result.responseJSON.error + "\n" + "status:" + result.responseJSON.status + "\n" + result.responseJSON.message;
				alert(errorMsg);
			}
		}
	}).always(function (result, status, responseObj) {
		isComplete = true;
	});

	setTimeout(function () {
		if (!isComplete) {
			$("#loading").show();
		}
	}, 500);

	return deferred.promise();
}

$.views.helpers({
	format: function(val, format) {
		switch (format) {
			case "timestamp":
				return moment(val).format("YYYY-MM-DD");
			case "price":
				return val.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
			case "dateDot":
				return fnDateFormat(val, "YYYY.MM.DD");
			case "number":
				var r = /(^[+-]?\d+)(\d{3})/;
				var n = (val + '');
				while (r.test(n)) n = n.replace(r, '$1' + ',' + '$2');
				return n;
			case "abs":
				return Math.abs(val);
		}
	},
	isEmpty: function(obj) {
		return isEmpty(obj);
	},
	getYoutubeId: function(str) {
		return str.substring(str.lastIndexOf("/") + 1);
	},
	some: function(arr,key,value){
		var is_chk = false;
		$.each(arr,function(i,v){
			if(v[key] == value){
				is_chk = true
				return;
			}
		})
		return is_chk;
	},
	every: function(arr,key,value){
		return arrEvery(arr,key,value);
	}
});

function arrEvery(arr,key,value){
		var is_chk = true;
		$.each(arr,function(i,v){
			if(v[key] != value){
				is_chk = false
				return;
			}
		})
		return is_chk;
	}

jQuery.fn.serializeObject = function() {
	var obj = null;
	try {
		if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
			var arr = this.serializeArray();
			if (arr) {
				obj = {};
				jQuery.each(arr, function() {
					obj[this.name] = this.value;
				});
			}
		}
	} catch (e) {
		alert(e.message);
	} finally {
	}
	return obj;
}

//값이 비어있는지 체크하는 함수
//값이 비어있는지 체크하는 함수
function isEmpty(obj) {
	//null 체크
	if (obj === null) return true;
	//타입 체크
	if (obj === undefined) return true;
	//문자열 체크
	if (typeof obj === 'string' && $.trim(obj) === '') return true;
	//배열 체크
	if ($.isArray(obj) && obj.length < 1) return true;
	//객체 체크
	if ($.isEmptyObject(obj)) return true;

	return false;
}

//url 파라미터 추출
function getUrlParams() {
	var params = {};

	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi,
		function(str, key, value) {
			params[key] = decodeURIComponent(value);
		}
	);

	return params;
}

// 날짜 포맷 변경
function fnDateFormat(date, format) {
	var returnDate = "";
	var valid = Date.parse(date);
	// 날짜형식이 유효한지 체크 > 날짜로 변경
	if (!isNaN(valid)) {
		returnDate = new Date(date);
	} else {
		if (date.length == 8) {
			var year = date.substr(0, 4);
			var month = date.substr(4, 2);
			var day = date.substr(6, 4);
			returnDate = new Date(year, month - 1, day);
		} else {
			console.log("error : 날짜형식이 유효하지 않습니다.");
			return returnDate;
		}
	}

	switch (format) {
		case "YYYY-MM-DD":
			returnDate = returnDate.getFullYear() + "-" + pad(returnDate.getMonth() + 1) + "-" + pad(returnDate.getDate());
			break;
		case "YYYY.MM.DD":
			returnDate = returnDate.getFullYear() + "." + pad(returnDate.getMonth() + 1) + "." + pad(returnDate.getDate());
			break;
		case "YYYY-MM-DD HH:mm:ss":
			returnDate = returnDate.getFullYear() + "-" + pad(returnDate.getMonth() + 1) + "-" + pad(returnDate.getDate()) + " " + pad(returnDate.getHours()) + ":" + pad(returnDate.getMinutes());
			break;
		case "YYYY.MM.DD HH:mm:ss":
			returnDate = returnDate.getFullYear() + "." + pad(returnDate.getMonth() + 1) + "." + pad(returnDate.getDate()) + " " + pad(returnDate.getHours()) + ":" + pad(returnDate.getMinutes());
			break;
		case "HH:mm":
			returnDate = pad(returnDate.getHours()) + ":" + pad(returnDate.getMinutes());
			break;
		default:
			break;
	}

	// 날짜 자리수 처리
	function pad(num) {
		num = num + '';
		return num.length < 2 ? '0' + num : num;
	}

	return returnDate;
}

/*
* @param diff
* 3m : 최근 3개월 , 1m : 최근 한달, 1d : 오늘, 7d : 최근 한 주,
* tw : 이번주(this week), lw : 지난주(last week), tm : 이번달(this month), lm : 지난달(last month)
*/
function changeCalendar(thisObj, diff, obj1, obj2, delimiter) {
	var sdt = new Date();
	var edt = new Date();

	var smonth = sdt.getMonth();
	var sday = sdt.getDate();
	var emonth = edt.getMonth();
	var weekday = sdt.getDay();

	if (diff == '3m') {
		sdt.setMonth(smonth - 3);
	} else if (diff == '1m') {
		sdt.setMonth(smonth - 1);
	} else if (diff == '6m') {
		sdt.setMonth(smonth - 6);
	} else if (diff == '12m') {
		sdt.setMonth(smonth - 12);
	} else if (diff == '7d') {
		sdt.setDate(sday - 7);
	} else if (diff == '1d') {
		sdt.setDate(sday);
	} else if (diff == '14d') {
		sdt.setDate(sday - 14);
	} else if (diff == '15d') {
		sdt.setDate(sday - 15);
	} else if (diff == '21d') {
		sdt.setDate(sday - 21);
	} else if (diff == '28d') {
		sdt.setDate(sday - 28);
	} else if (diff == 'tw') {
		sdt.setDate(sday - weekday + 1);
		edt.setDate(edt.getDate() - weekday + 7);
	} else if (diff == 'lw') {
		sdt.setDate(sday - weekday - 6);
		edt.setDate(edt.getDate() - weekday);
	} else if (diff == 'tm') {
		sdt.setDate(1);
		edt.setMonth(emonth + 1);
		edt.setDate(0);
	} else if (diff == 'lm') {
		sdt.setMonth(smonth - 1);
		sdt.setDate(1);
		edt.setMonth(emonth);
		edt.setDate(0);
	} else {
		obj1.val('');
		obj2.val('');
		return;
	}

	// 구분 값 초기화
	delimiter = (!delimiter) ? '-' : delimiter;

	// 시작일 세팅
	var syear = sdt.getFullYear();
	smonth = sdt.getMonth() + 1;
	smonth = ((smonth < 10) ? '0' + smonth : smonth);
	sday = sdt.getDate();
	sday = ((sday < 10) ? '0' + sday : sday);

	var obj1Value = syear + delimiter + smonth + delimiter + sday;
	obj1.datepicker("update", obj1Value);

	// 종료일 세팅
	var eyear = edt.getFullYear();
	emonth = edt.getMonth() + 1;
	emonth = ((emonth < 10) ? '0' + emonth : emonth);
	var eday = edt.getDate();
	eday = ((eday < 10) ? '0' + eday : eday);

	var obj2Value = eyear + delimiter + emonth + delimiter + eday;
	obj2.datepicker("update", obj2Value);

	$(thisObj).parent().find('button').removeClass('active');
	$(thisObj).addClass('active');
}
/**
	클립보드 복사
 */
function copyClipBoard(text) {
	// 임시의 textarea 생성
	const $textarea = document.createElement("textarea");

	// body 요소에 존재해야 복사가 진행됨
	document.body.appendChild($textarea);

	// 복사할 특정 텍스트를 임시의 textarea에 넣어주고 모두 셀렉션 상태
	$textarea.value = text;
	$textarea.select();

	// 복사 후 textarea 지우기
	document.execCommand('copy');
	document.body.removeChild($textarea);
}

function isMobile() {
	var UserAgent = navigator.userAgent;
	if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) {
		return true;
	} else {
		return false;
	}
}

function goFileDown(sysFile, orgFile){
	location.href = "/download?fileName="+ encodeURIComponent(sysFile) + '&orgFileName='+encodeURIComponent(orgFile);
}
