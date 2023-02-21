var scriptInfo ={
		"version" : "0.1"
}

/*
 *  화면 처리 스크립트
 *  @ author : chris lee
 *  @ version : 1.0
 *  @ history : 2015-12-01 : 개발시작
 *  @ etc :
 *     - 주의 점 -
 *     -> 스크립트 사용시 뷰단에 var pageParam 선언후 사용
 *  @ 사용함수 목록
 *    setQueryString() : 쿼리
 *	  goPage(pageNO)   : 페이징처리
 *	  doSearch()       : 조회
 *	  goRegist()       : 등록화면 이동
 *	  goView(idx)      : 상세화면 이동
 *	  registProc()     : 등록 처리
 *	  editProc()       : 수정 처리
 *	  removeProc()     : 삭제 처리
 *	  goEdit(idx)      : 수정화면으로 이동
 *	  goList()         : 목록으로 이동
 *	  goCountView()    : row갯수로 인한 조회
 *
 *  @ pageParam 키
      "writeMsg"		: 등록 confirm창 메시지 문구 (기본 값: 등록하시겠습니까?)
      "editMsg"			: 수정 confirm창 메시지 문구 (기본 값: 수정하시겠습니까?)
      "removeMsg"		: 삭제 confirm창 메시지 문구 (기본 값: 삭제하시겠습니까?)
      "formId"			: form 태그의 id (기본 값: frm)
      "idxName"			: 상세 관련 처리를 위한 idx 이름 (기본 값 : idx)
      "registViewUrl" 	: 등록 페이지 URL
      "detailViewUrl" 	: 상세 페이지 URL
      "searchViewUrl" 	: 조회/조회 row갯수 페이지, 페이징 URL
      "registProcUrl" 	: 등록처리 URL
      "editProcUrl" 	: 수정처리 URL
      "removeProcUrl" 	: 삭제처리 URL

	@ pageParam 사용 예
	var pageParam = {
		"writeMsg"		: "등록하시겠습니까?",
		"editMsg"		: "수정하시겠습니까?",
		"removeMsg"		: "삭제하시겠습니까?",
		"frm"			: "sample_form",
		"idxName"		: "boardNo",
		"regisViewtUrl" : "/sample/board/list",
		"detailViewUrl" : "/sample/board/detail",
		"searchViewUrl" : "/sample/board/list",
		"registProcUrl" : "registProc",
		"cancelProcUrl" : "/sample/board/list",
	}

	@ checkSearchValue, checkRegistValue 사용예
	var checkSearchValue = function() {
		if ($('#schField').val().isBlank()) {
			alert('검색 카테고리를 선택해주세요.');
			$('#schField').focus();
			return false;
		}
	}

 */

var queryString;

var confirmMsg = function(msgOptn) {
	var resultMsg = '';
	if (msgOptn == 'add') {
		resultMsg = (typeof pageParam.writeMsg == 'undefined') ? '등록하시겠습니까?' : pageParam.writeMsg;
		
	} else if (msgOptn == 'modify') {
		resultMsg = (typeof pageParam.editMsg == 'undefined') ? '수정하시겠습니까?' : pageParam.editMsg;
	} else if (msgOptn == 'delete') {
		resultMsg = (typeof pageParam.removeMsg == 'undefined') ? '삭제하시겠습니까?' : pageParam.removeMsg;
	}

	return resultMsg;
}

/**
 * 쿼리 설정
 */
function setQueryString() {
	var formSelector = '#' + ((typeof pageParam.formId == 'undefined') ? 'frm' : pageParam.formId);
	var queryStringStr = $(formSelector).serialize();

	if (queryStringStr == 'undefined') {
		queryString = '';
	} else {
		queryString = encodeURIComponent(queryStringStr);
	}
}

/**
 * 페이징 처리
 * @param pageNo
 */
function goPage(pageNo) {

	// 페이지 번호가 없을 경우 호출 방지
	if (pageNo == '#') return;
	
	console.log('param ::::  '+pageNo);
	
	$('#pageNo').val(pageNo);
	console.log("pageNo  ::  "+$('#pageNo').val());
	var formSelector = '#' + ((typeof pageParam.formId == 'undefined') ? 'frm' : pageParam.formId);
	console.log(formSelector);
	console.log($(formSelector).serialize());
	location.href = pageParam.searchViewUrl + '?'+ $(formSelector).serialize();

}

/**
 * 페이징 처리
 * @param pageNo
 */
function goPageSchResult(pageNo) {

	// 페이지 번호가 없을 경우 호출 방지
	if (pageNo == '#') return;
	
	$('#pageNoResult').val(pageNo);
	
	console.log('param ::::  '+pageNo);
	console.log("pageNo  ::  "+$('#pageNoResult').val());
	console.log("serialize :: "+$("#frm").serialize());
	
	$("#frm").submit();

}

/**
 * 조회
 * @주의할 점 : 값체크 할 경우 함수명을 'checkSearchValue'로 작성
 */
function doSearch() {
	if (typeof checkSearchValue != 'undefined'){
		// 값 체크
		if (checkValue(checkSearchValue) == false) return;
	}

	$('#pageNo').val(1);
	
	var formSelector = '#' + ((typeof pageParam.formId == 'undefined') ? 'frm' : pageParam.formId);
	$(formSelector).find('select').prop('disabled', false);
	location.href = pageParam.searchViewUrl + '?' + $(formSelector).serialize();
}

/**
 * 등록
 */
function goRegist() {
	setQueryString();
	location.href = pageParam.registViewUrl+'?queryString=' + queryString;
}

/**
 * 상세조회
 * @param idx
 */
function goView(idx) {
	var idxName = (typeof pageParam.idxName == 'undefined') ? 'idx' : pageParam.idxName;

	setQueryString();
	location.href = pageParam.detailViewUrl+'/' + idx + '?&queryString=' + queryString;
}

/**
 * 등록
 * @주의할 점 : 값체크 할 경우 함수명을 'checkRegistValue'로 작성
 */
function registProc() {
	proccessData(pageParam.registProcUrl, 'add');
}

/**
 * 수정
 * @주의할 점 : 값체크 할 경우 함수명을 'checkRegistValue'로 작성
 */
function editProc(){
	proccessData(pageParam.editProcUrl, 'modify');
}

/**
 * 데이터 처리
 * @param url
 */
function proccessData(url, msgOptn) {

	if (typeof checkRegistValue != 'undefined') {
		// 값 체크
		if (checkValue(checkRegistValue) == false) return;
	}

	if (confirm(confirmMsg(msgOptn)) == true){
		var formSelector = '#' + ((typeof pageParam.formId == 'undefined') ? 'frm' : pageParam.formId);
		$(formSelector).attr('action',url);
		$(formSelector).submit();
	} else {
    	return;
	}
}

/**
 * 취소
 */
function doCancel() {
	location.href= pageParam.cancelProcUrl+ '?' + $('#queryString').val();
}

/**
 * 삭제
 */
function removeProc() {
	if(confirm(confirmMsg('delete'))) {
		var formSelector = '#' + ((typeof pageParam.formId == 'undefined') ? 'frm' : pageParam.formId);
		$(formSelector).attr('action', pageParam.removeProcUrl);
		$(formSelector).attr('method', 'post');
		$(formSelector).submit();
	}
}

/**
 * 수정
 */
function goEdit(idx) {
	setQueryString();
	var idxName = (typeof pageParam.idxName == 'undefined') ? 'idx' : pageParam.idxName;
	var idxValue = (typeof idx == 'undefined') ? $('#'+idxName).val() : idx;
	location.href= pageParam.editViewUrl+'/' + idx + '?&queryString=' + queryString;
}

/**
 * 목록
 */
function goList() {
	location.href=pageParam.searchViewUrl + '?' + decodeURIComponent($("#queryString").val());
}

/**
 * 수정 에디트에서 취소
 */
function doCancelEdit() {
	var idxName = (typeof pageParam.idxName == 'undefined') ? 'idx' : pageParam.idxName;
	location.href= pageParam.cancelEditUrl+'/' + $('#'+idxName).val()
				+ '?&queryString=' + encodeURIComponent($('#queryString').val());
}


/**
 * 갯수 조회
 */
function goCountView(){
	setQueryString();
	location.href = pageParam.searchViewUrl + '?rowSize=' +  $('#rowSize').val();
}

/**
 * value값 체크
 * @param func
 */
function checkValue(func){
	if (typeof func != 'undefined') {
		if (func() == false){
			return false;
		}
	}
}


/**
 *  검색 영역 초기화
 * @param formId
 */
var formReset = function(formId) {
	console.log(formId)
	$("#"+formId).find('input[type="text"]:enabled, textarea').val("");
	$("#"+formId).find('select:enabled').val("");
    $("#"+formId).find('input[type="checkbox"]').prop('checked', false);

	var radio = $("#"+formId).find('input[type="radio"]');
	var radioKeys = radio.map(function(i,v){return $(v).attr("name")});
	var final_data = [];
	//radioKeys = [...new Set(radioKeys)];//중복 지우고
	$.each(radioKeys,function(i,value){
	    if(final_data.indexOf(value) == -1 ) final_data.push(value);
	});

	final_data.forEach(function(key){
		$('input[name="' + key + '"]')[0].checked = true;
	});
}

function setDatePicker (){
	var today = new Date();
	var dates = $( "#startDt, #endDt" ).datepicker({
		showOn: "both",
		buttonImage: '/resources/images/calender.gif',
		buttonImageOnly: true,
		dateFormat: 'yy.mm.dd',
		onSelect: function( selectedDate ) {
			var option = this.id == "startDt" ? "minDate" : "maxDate",
			instance = $( this ).data( "datepicker" ),
			date = jQuery.datepicker.parseDate(instance.settings.dateFormat || jQuery.datepicker._defaults.dateFormat, selectedDate, instance.settings );
			dates.not( this ).datepicker( "option", option, date );
		}

	});

/*	$('#startDt').datepicker("option", "onClose", function ( selectedDate ) {
		$('#endDt').val(selectedDate);
	});*/
}
function setDatePickerDpSch(){
	var today = new Date();
	var dates = $( "#schStartDm, #schEndDm" ).datepicker({
		showOn: "both",
		buttonImage: '/resources/images/calender.gif',
		buttonImageOnly: true,
		dateFormat: 'yy.mm.dd',
		onSelect: function( selectedDate ) {
			var option = this.id == "schStartDm" ? "minDate" : "maxDate",
			instance = $( this ).data( "datepicker" ),
			date = jQuery.datepicker.parseDate(instance.settings.dateFormat || jQuery.datepicker._defaults.dateFormat, selectedDate, instance.settings );
			dates.not( this ).datepicker( "option", option, date );
		}
	});
}
