/*!
 * String prototype v1.0
 *
 * @author shyu
 * @date 2012-12-21
 */
/**
 * 문자의 좌, 우 공백 제거
 *
 * @return String
 */
String.prototype.trim = function () {
    return this.replace(/(^\s*)|(\s*$)/g, "");
};

/**
 * 문자의 좌 공백 제거
 *
 * @return String
 */
String.prototype.ltrim = function () {
    return this.replace(/(^\s*)/, "");
};

/**
 *
 * 문자의 우 공백 제거
 *
 * @return String
 */
String.prototype.rtrim = function () {
    return this.replace(/(\s*$)/, "");
};

/**
 * 문자열의 byte 길이 반환
 *
 * @return Number
 */
String.prototype.bytes = function () {
    var cnt = 0, i = 0;
    for (i = 0; i < this.length; i++) {
        if (this.charCodeAt(i) > 127) {
            cnt += 2;
        } else {
            cnt++;
        }
    }
    return cnt;
};

/**
 * 정수형으로 변환
 *
 * @return Number or null
 */
String.prototype.cInt = function () {
    var rtnVal = null;
    if (!isNaN(this)) { // this is Number
        return parseInt(this, 10);
    }
    return rtnVal;
};

/**
 * 숫자만 가져 오기
 *
 * @return String
 */
String.prototype.num = function () {
    return (this.trim().replace(/[^0-9]/g, ""));
};

/**
 * 숫자에 3자리마다 , 를 찍어서 반환
 *
 * @return String
 */
String.prototype.cvtNumber = function () {
    var num = this.trim();
    while ((/(-?[0-9]+)([0-9]{3})/).test(num)) {
        num = num.replace((/(-?[0-9]+)([0-9]{3})/), "$1,$2");
    }
    return num;
};

/**
 * 숫자의 자리수(cnt)에 맞도록 반환
 *
 * @return String
 */
String.prototype.digits = function (cnt) {
    var digit = "", i = 0;
    if (this.length < cnt) {
        for (i = 0; i < cnt - this.length; i++) {
            digit += "0";
        }
    }
    return digit + this;
};

/**
 * " -> &#34; ' -> &#39;로 바꾸어서 반환
 *
 * @return String
 */
String.prototype.quota = function () {
    return this.replace(/"/g, "&#34;").replace(/'/g, "&#39;");
};

/**
 * html 제거
 *
 * @return String
 */
String.prototype.stripHtml = function () {
    return this.replace(/(<([^>]+)>)/ig, "");
};

/**
 * 파일 확장자만 가져오기
 *
 * @return String
 */
String.prototype.ext = function () {
    return (this.indexOf(".") < 0) ? "" : this.substring(this.lastIndexOf(".") + 1, this.length);
};

/**
 * URL에서 파라메터 제거한 순수한 url 얻기
 *
 * @return String
 */
String.prototype.uri = function () {
    var arr = this.split("?");
    arr = arr[0].split("#");
    return arr[0];
};


/*------------------------------------------------------------------------------*\
* 각종 체크 함수들
\*--------------------------------------------------------------------------------*/

/**
 * 정규식에 쓰이는 특수문자를 찾아서 이스케이프 한다.
 *
 * @return String
 */
String.prototype.meta = function () {
    var str = this, result = "", i = 0;
    for (i = 0; i < str.length; i++) {
        if ((/([\$\(\)\*\+\.\[\]\?\\\^\{\}\|]{1})/).test(str.charAt(i))) {
            result += str.charAt(i).replace((/([\$\(\)\*\+\.\[\]\?\\\^\{\}\|]{1})/), "\\$1");
        } else {
            result += str.charAt(i);
        }
    }
    return result;
};

/**
 * 정규식 패턴에 포함되는 문자를 제거한다
 *
 * @param String pattern : 정규식 패턴
 * @return {String}
 */
String.prototype.remove = function (pattern) {
    var str = this, filter, re;
    if (pattern) {
        filter = pattern.meta();
        filter = "[" + filter + "]";
        re = new RegExp(filter, "g");
        str = str.replace(re, "");
    }
    return str;
};

/**
 * 최소 최대 길이인지 검증
 * str.isLength(min [,max])
 *
 * @return boolean
 */
String.prototype.isLength = function () {
    var min = arguments[0];
    var max = arguments[1] ? arguments[1] : null;
    var success = true;
    if(this.length < min) {
        success = false;
    }
    if(max && this.length > max) {
        success = false;
    }
    return success;
};

/**
 * 최소 최대 바이트인지 검증
 * str.isByteLength(min [,max])
 *
 * @return boolean
 */
String.prototype.isByteLength = function () {
    var min = arguments[0];
    var max = arguments[1] ? arguments[1] : null;
    var success = true;
    if(this.bytes() < min) {
        success = false;
    }
    if(max && this.bytes() > max) {
        success = false;
    }
    return success;
};

/**
 * 공백이나 널인지 확인
 *
 * @return boolean
 */
String.prototype.isBlank = function () {
    var str = this.trim();
    for (var i = 0; i < str.length; i++) {
        if ((str.charAt(i) != "\t") && (str.charAt(i) != "\n") && (str.charAt(i)!="\r")) {
            return false;
        }
    }
    return true;
};

/**
 * 숫자로 구성되어 있는지 학인
 *
 * @param String arguments[0] optional 허용할 문자셋
 * @return boolean
 */
String.prototype.isNum = function () {
    return (/^[0-9]+$/).test(this.remove(arguments[0])) ? true : false;
};

/**
 * 영문만 허용
 *
 * @param String arguments[0] 추가 허용할 문자들
 * @return boolean
 */
String.prototype.isEng = function () {
    return (/^[a-zA-Z]+$/).test(this.remove(arguments[0])) ? true : false;
};

/**
 * 영문과 공백만 허용
 *
 * @param String arguments[0] 추가 허용할 문자들
 * @return boolean
 */
String.prototype.isblankEng = function () {
    return (/^[a-zA-Z\s]+$/).test(this.remove(arguments[0])) ? true : false;
};

/**
 * 숫자와 영문만 허용
 *
 * @param String arguments[0] : 추가 허용할 문자들
 * @return boolean
 */
String.prototype.isEngNum = function () {
    return (/^[0-9a-zA-Z]+$/).test(this.remove(arguments[0])) ? true : false;
};

/**
 * 숫자와 영문만 허용
 *
 * @param String arguments[0] : 추가 허용할 문자들
 * @return boolean
 */
String.prototype.isNumEng = function () {
    return this.isEngNum(arguments[0]);
};

/**
 * 아이디 체크 영문과 숫자만 체크. 첫글자는 영어로 시작
 *
 * @param String arguments[0] : 추가 허용할 문자들
 * @return boolean
 */
String.prototype.isUserid = function () {
    return (/^[0-9a-zA-Z]+$/).test(this.remove(arguments[0])) ? true : false;
};

/**
 * 이메일의 유효성을 체크
 *
 * @return boolean
 */
String.prototype.isEmail = function () {
    return (/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/).test(this.trim());
};

/**
 * 전화번호 체크
 * ex) "02-790-7765".isPhone("-");
 *
 * @param String separator optional : 전화번호 구분자
 * @return boolean
 */
String.prototype.isPhone = function (separator) {
    var sep = separator ? separator : "";

    // 전화번호 통합
    // /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
    var regStr = "(02|0505|0506|0[3-9]{1}[0-9]{1,2})" + sep + "?[1-9]{1}[0-9]{2,3}" + sep + "?[0-9]{4}$";
    var re = new RegExp(regStr, "");
    var rtnVal = re.test(this);

    return rtnVal;
};

/**
 * 핸드폰번호 체크
 * ex) "010-1234-5678".isMobile("-");
 *
 * @param String separator optional : 핸드폰 구분자
 * @return boolean
 */
String.prototype.isMobile = function (separator) {
     var sep = separator ? separator : "";
     var regStr = "^01[016789]" + sep + "?[1-9]{1}[0-9]{2,3}" + sep + "?[0-9]{4}$";
     var re = new RegExp(regStr, "");
     var rtnVal = re.test(this);

     return rtnVal;
};


//-----------------------------------------------------------------------------
// replaceAll 사용자 정의 함수
//-----------------------------------------------------------------------------
/**
 * replaceAll
 *
 * @param String searchStr
 * @param String replaceStr
 * @return String
 */
String.prototype.replaceAll = function ( searchStr, replaceStr ) {
    var temp = this;
    while( temp.indexOf( searchStr ) != -1 )  {
        temp = temp.replace( searchStr, replaceStr );
    }
    return temp;
};

/**
 *
 * @param {Object} options
 * @return String
 */
String.prototype.wordwrap = function (options) {
	if (this == null || this == "") return "";

	var text = this;
	if (options && options['byte_length'] != null)
		text = text.multibyteTruncate(options['byte_length']);
	text = text.split("").join("<wbr/>");
	return options['break_line'] ? text.replace(/\n/g, "<br/>") : text;
};

// EOF