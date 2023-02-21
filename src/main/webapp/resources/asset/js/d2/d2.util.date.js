/*!
 * d2.util.date.js v0.9
 * 날짜 관련 유틸
 *
 * @author shyu
 * @date 2012-12-21
 */



function toTimeObject(time){
	var year = time.substr(0,4);
	var month = time.substr(4,2)-1;
	var day = time.substr(6,2);

	return new Date(year,month,day);
}

/*******************************************************************
* 날짜 비교 함수
* sDate: 비교 대상 날짜 첫번째 ex: 2009-04-29
* eDate : 비교 대상 날짜 두번째 ex: 2009-04-28
*******************************************************************/
function compDate(sDate,eDate){
	var start_dates = sDate.split("-");
	var end_dates = eDate.split("-");
	var date1 = new Date(start_dates[0],start_dates[1],start_dates[2]).valueOf();
	var date2 = new Date(end_dates[0],end_dates[1],end_dates[2]).valueOf();
	if( (date2 - date1) < 0 ){
		return false;
	} else {
		return true;
	}
}


function getWeekEnd(str) {
	var weekInfo = new Array('Sun','Mon','Tue','Wed','Thu','Fri','Sat');
	var d = toTimeObject(str);
	var day=d.getDay();

	return weekInfo[day];
}

function lastday(calyear, calmonth) {
	var monthDays = new Array(31, 28, 31, 30, 31, 30, 31, 31,30, 31, 30, 31);
	if (((calyear % 4 == 0) && (calyear % 100 != 0)) || (calyear % 400 == 0))
	monthDays[1] = 29;
	var nDays = monthDays[calmonth - 1];
	return nDays;
}