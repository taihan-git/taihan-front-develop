<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<!--content-->
<section id="content" class="sub-wrap customer">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/customer/visual_customer_01.jpg)">
        <div class="sub-title">
            <h2 class="title-type"><spring:message code="qna.topitle" text="고객문의"/></h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

    <form id="f1" name="f1" method="post" onsubmit="return false;">
    <input type="hidden" name="lang" value="${LANG}">
    <div id="container" class="content-wrap">
        <div class="content-box">
            <div class="inner-box">
                <c:if test="${LANG eq 'ko'}">
            	<div class="title-wrap">
							<h3 class="title-type">1:1 문의</h3>
							<p>궁금한 사항을 문의주시면 성실하게 답변드리겠습니다.</p>
				</div>
                </c:if>
						
                <div class="title-wrap2">
                    <h3 class="title-type"><spring:message code="qna.cateInfoTtile" text="문의 유형 선택"/></h3>
                    <div class="side-box"><spring:message code="qna.checkTtile" text="필수 선택"/><i class="ico-required"></i></div>
                </div>
                <div class="tab-wrap">
                    <ul class="tab-type2 js_tab" id="uto1Wrap">
                        <li class="${empty param.code or fn:contains(param.code, 'inqu_01') ? 'active': ''}">
                            <a href="javascript:void(0)" data-menu-code="${LANG eq 'ko' ? 'ko_inqu_01' : 'en_inqu_01'}">
                                <i class="ico-product2"></i>
                                <strong data-code=""><spring:message code="qna.cateNm1" text="제품 및 솔루션"/></strong>
                            </a>
                        </li>
                        <li class="${fn:contains(param.code, 'inqu_02') ? 'active': ''}">
                            <a href="javascript:void(0)" data-menu-code="${LANG eq 'ko' ? 'ko_inqu_02' : 'en_inqu_02'}">
                                <i class="ico-invest"></i>
                                <strong><spring:message code="qna.cateNm2" text="투자정보"/></strong>
                            </a>
                        </li>
                        <li class="${fn:contains(param.code, 'inqu_03') ? 'active': ''}">
                            <a href="javascript:void(0)" data-menu-code="${LANG eq 'ko' ? 'ko_inqu_03' : 'en_inqu_03'}">
                                <i class="ico-employ"></i>
                                <strong><spring:message code="qna.cateNm3" text="채용"/></strong>
                            </a>
                        </li>
                        <li class="${fn:contains(param.code, 'inqu_04') ? 'active': ''}">
                            <a href="javascript:void(0)" data-menu-code="${LANG eq 'ko' ? 'ko_inqu_04' : 'en_inqu_04'}">
                                <i class="ico-etc"></i>
                                <strong><spring:message code="qna.cateNm4" text="기타"/></strong>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content-box">
            <div class="inner-box">
                <div class="title-wrap2">
                    <h3 class="title-type"><spring:message code="qna.formTitle" text="문의 작성"/></h3>
                    <div class="side-box"><spring:message code="qna.checkTtile" text="필수입력"/><i class="ico-required"></i></div>
                </div>

                <div class="form-group">
                    <div class="form-box" id="categoryWrap">
                        <div class="form-label" id="categoryWrap1"><label for=""><spring:message code="qna.cateForm" text="카테고리 선택"/><i class="ico-required"></i></label></div>
                        <div class="form-item" id="categoryWrap2">
                            <!-- select -->
                            <div class="select-type">
                                <select id="uto2" name="uto2">
                                    <option data-display="" value=""><spring:message code="qna.selectNm" text="선택"/></option>
                                </select>
                            </div>
                        </div>
                        <div class="form-label"><label for="id"><spring:message code="qna.nm" text="이름"/><i class="ico-required"></i></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="name" placeholder="${LANG eq 'ko' ? '이름을 입력해주세요.' : 'Enter your name'}" name="name">
                                <span class="msg">${LANG eq 'ko' ? '숫자 및 특수문자를 포함할 수 없습니다.' : 'You cannot use numbers and special characters.'} </span>
                            </div>
                            <!-- //input -->
                        </div>
					</div>
                    
                    <c:if test="${LANG eq 'en'}">
					<div class="form-box">
                        <div class="form-label"><label for="">${LANG eq 'ko' ? '지역/국가' : 'Continent / Country'}</label><i class="ico-required"></i></div>
                        <div class="form-item d-flex">
                            <!-- select -->
                            <div class="select-type">
                                <select id="region1" name="region1">
                                    <option data-display="" value=""><spring:message code="qna.selectNm" text="선택"/></option>
                                </select>
                            </div>
                            <!-- //select -->
                            <!-- select -->
                            <div class="select-type">
                                <select id="region2" name="region2">
                                    <option data-display="" value=""><spring:message code="qna.selectNm" text="선택"/></option>
                                </select>
                            </div>
                            <!-- //select -->
                        </div>
                    </div>
                    </c:if>

                    <div class="form-box">
                        <div class="form-label"><label for="mail"><spring:message code="qna.email" text="이메일"/><i class="ico-required"></i></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="email" placeholder="${LANG eq 'ko' ? 'E-mail을 입력해주세요.' : 'Enter your email'}" name="email">
                                <span class="msg">${LANG eq 'ko' ? '올바른 이메일 주소를 입력해주세요.' : 'Please enter a valid e-mail address.'} </span>
                            </div>
                            <!-- //input -->
                        </div>
                        <div class="form-label"><label for="company"><spring:message code="qna.company" text="소속회사"/></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="company" placeholder="${LANG eq 'ko' ? '소속회사명을 입력해주세요.' : 'Enter your company'}" name="company">
                                <span class="msg">${LANG eq 'ko' ? '특수문자를 포함할 수 없습니다.' : 'You cannot use special characters'} </span>
                            </div>
                            <!-- //input -->
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="form-label"><label for="tel1"><spring:message code="qna.tel" text="연락처"/><i class="ico-required"></i></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="tel" placeholder="${LANG eq 'ko' ? '숫자만 입력해주세요.' : 'Enter your phone number'}" name="tel">
                                <span class="msg">${LANG eq 'ko' ? '숫자만 입력해주세요.' : 'Please enter numbers only.'} </span>
                            </div>
                            <!-- //input -->
                        </div>
                        <div class="form-label"><label for="tel2"><spring:message code="qna.phone" text="추가 연락처"/></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="phone" placeholder="${LANG eq 'ko' ? '숫자만 입력해주세요.' : 'Enter your additional contact'} " name="phone">
                                <span class="msg">${LANG eq 'ko' ? '숫자만 입력해주세요.' : 'Please enter numbers only.'} </span>
                            </div>
                            <!-- //input -->
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="form-label"><label for="sbj"><spring:message code="qna.title" text="제목"/><i class="ico-required"></i></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="title" placeholder="${LANG eq 'ko' ? '제목을 입력해주세요.' : 'Details'}" name="title">
                                <span class="msg">${LANG eq 'ko' ? '특수문자를 포함할 수 없습니다. ' : 'You cannot use special characters.'}</span>
                            </div>
                            <!-- //input -->
                        </div>
                    </div>

					<!-- 수정 -->
                    <div class="form-box">
                        <div class="form-label"><label for="inquiries"><spring:message code="qna.message" text="문의내용"/><i class="ico-required"></i></div>
                        <div class="form-item">

                            <div class="textarea-type">
                                <textarea cols="30" rows="5" id="memo" placeholder="${LANG eq 'ko' ? '문의내용을 입력해주세요.' : 'Your message here'} " name="memo" maxlength="999"></textarea>
                                <span class="count">[<em id="memoCnt">0</em>/1,000]</span>
                                <span class="msg">${LANG eq 'ko' ? '입력 가능한 글자수를 초과하였습니다.' : 'You have exceeded the maximum character limit.'} </span>
                            </div>
			            </div>
			       </div>
			       
				   <div class="form-box">
						<div class="form-label">${LANG eq 'ko' ? '파일첨부' : 'Attach files'}</div>
						<div class="form-item">
                            <div class="file-type">
                                <label for="input-file" class="btn-type"><spring:message code="qna.fileForm" text="파일첨부"/><i class="ico-more2"></i></label>
                                <input type="file" id="input-file" name="pcFile" accept=".jpg, .jpeg, .png, .hwp, .pdf, .docx" data-gubun="01">
                                <button class="btn-clear"><i class="ico-clear"><span class="hidden">첨부파일삭제</span></i></button>
                            </div>

                            <div class="guide-box">
                                   <ul class="list-type v3">
                                       <c:if test="${LANG eq 'ko'}">
                                               <!-- <dt><i class="ico-exclam"></i>Notice</dt> -->
                                            <ul class="list-type v3">
                                                <li>이미지 형식의 jpg(jpeg), png나 문서형식의 doc(docx),ppt(pptx), hwp, pdf만 첨부 가능합니다.</li>
						   						<li>첨부파일은 20MB를 초과할 수 없으며, 최대 1개까지 가능합니다.</li>
                                            </ul>
                                       </c:if>
                                        <c:if test="${LANG eq 'en'}">
                                            <dl>
                                                <dt><i class="ico-exclam"></i>Notice</dt>
                                                <dd>
                                                    <ul class="list-type">
                                                        <li>All attachments must be in jpg (jpeg), png format for images and doc (docx), ppt (pptx), hwp, pdf format for documents.</li>
                                                        <li>Attachments are limited to a maximum of one file, and cannot exceed 20MB</li>
                                                    </ul>
                                                </dd>
                                            </dl>
                                        </c:if>
                                   </ul>
                            </div>
                        </div>
                    </div>
                    	<!-- //수정 -->
                </div>
            </div>
        </div>

        <div class="content-box">
            <div class="inner-box">

                <c:if test="${LANG eq 'ko'}">
                <div class="title-wrap2">
                    <h3 class="title-type">개인정보 수집 및 이용동의</h3>
                </div>
                <div class="agree-wrap">
                    <div class="agree-box">
                        ■ 개인정보의 수집 및 이용목적<br>
                        회사는 아래와 같은 목적을 위하여 최소한의 범위에서 개인정보를 처리합니다. 회사가 처리하고 있는 개인정보는 목적 이외의 용도에는 이용되지 않으며, 이용 목적이 변경되는 경우에 회사는 ｢개인정보 보호법｣ 및 관련법령에 따라 정보주체의 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.<br>
                        - 회사 메인 홈페이지 온라인 상담, 회사 메인 홈페이지 사이버신문고(윤리경영 제보, CP 제보)<br>
                        <br>
                        ■ 수집하는 개인정보 항목<br>
                        회사는 서비스 제공을 위해 아래와 같은 개인정보를 수집하고 있습니다.<br>
                        1) 온라인상담 : 성명, 연락처, 이메일, 국가(글로벌 사이트만 해당)<br>
                        2) 사이버 신문고 : 성명, 연락처, 이메일<br>
                        <br>
                        ■ 개인정보의 보유 및 이용기간<br>
                        회사는 다음과 같이 개인정보 수집목적 및 이용목적이 달성된 후에는 3개월 이내에 해당 정보를 파기합니다. 다만 관련법령에 의하여 보존할 의무가 있거나 정보주체의 동의가 있을 경우에는 회사는 일정한 기간동안 개인정보를 보관합니다.<br>
                        1) 온라인 상담 : 문의 사항 처리 완료 후 3개월<br>
                        2) 사이버 신문고 : 안내 및 조치완료 후 3개월<br>
                        <br>
                        ■ 동의거부 권리 및 동의 거부 시 불이익<br>
                        고객은 본 개인정보 수집 및 이용 동의를 거부할 권리가 있습니다. 다만, 동의 거부 시 서비스 이용에 제한이 있을 수 있습니다.<br>
                    </div>
                    <div class="check-wrap">
                        <div class="check-box">
                            <input type="checkbox" id="personalInfo">
                            <label class="checkbox" for="personalInfo"></label>
                            <label for="personalInfo">위 내용에 동의합니다.
                                <strong>[필수]</strong>
                            </label>
                        </div>
                        <span class="msg"><i class="ico-invalid"></i>개인정보 수집 및 이용에 동의해주세요.</span>
                    </div>
                </div>
                </c:if>

                <c:if test="${LANG eq 'en'}">
                    <div class="title-wrap2">
                        <h3 class="title-type">Personal Information Agreement</h3>
                    </div>

                    <div class="agree-wrap">
                        <div class="agree-box">
                            Personal Information Agreement<br><br>

                            Purpose of Processing Personal Information<br>
                            The Company handles the personal information that pertains to the minimum required scope of personal information for the purposes shown in the table below. Personal information processed by the Company shall not be used for purposes other than the purpose of processing personal information stipulated in this article, and should the said purpose change, the Company shall take necessary measures, such as obtaining separate and additional consent from the data subject in compliance with the “Personal Information Protection Act” and other related laws.<br>
                            - Online consultation (Customer > 1:1 Inquiries) on the Company’s official website, Report via the “Hot line” service<br><br>

                            Items of Information Subjects to be Handled<br>
                            The Company shall collect and process the following personal information from users.<br>
                            1) Online consultation : Name, contact information, e-mail, country (for the global website only)<br>
                            2) Hot Line : Name, contact information, e-mail<br><br>

                            Processing and Retention Period of Personal Information<br>
                            The Company shall destroy personal information within three months of achieving or fulfilling the purpose of collecting and using any given personal information item. However, if the Company is obliged by law to preserve a personal information item in accordance with relevant laws or if the Company obtains consent from the data subject, it shall keep relevant personal information for a set period of time.<br>
                            1) Online consultation : After 3 months of completing the processing of an inquiry<br>
                            2) Hot Line : After 3 months of informing the complainant and completing the processing of the particular complaint<br><br>

                            Disadvantage in case of refusa<br>
                            You have the right to refuse to accept the above agreement on the collection and use of personal information. However, some services may be restricted if you do not consent to the agreement

                        </div>
                        <div class="check-wrap">
                            <div class="check-box">
								<input type="checkbox" id="personalInfo">
								<label class="checkbox" for="personalInfo"></label>
								<!-- 2022-10-26 텍스트 수정 -->
								<label for="check01">I agree to the collections/usage of personal information.<strong>[Required]</strong></label>
								<!-- //2022-10-26 텍스트 수정 -->
							</div>
							<span class="msg"><i class="ico-invalid"></i>Please agree to the collections/usage of personal information</span>
                        </div>
                    </div>
                </c:if>

                <div class="btn-wrap t-c">
                    <a href="javascript:void(0);" class="btn-type btn-l v2" onclick="formSubmitProc();"><spring:message code="qna.inquBtn" text="문의하기"/></a>
                </div>
            </div>
        </div>
    </div>
    </form>
</section>

<!--//content-->

<script>
    //정규식 Object
    var textValidation = {
        //오직 한글 영문만
        checkOnlyKoOrEn : function(val){
            var nameExp = /^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣 ]*$/;
            return nameExp.test(val);
        },
        //이메일
        checkEmail : function (val){
            var emailExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
            return emailExp.test(val);
        },

        //특수문자가 포함되어있는지 체크
        checkSpecialRule : function(val){
            var specialRuleExp = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
            return specialRuleExp.test(val)
        },

        //숫자만 포함하는지 체크
        checkOnlyNumber : function(val){
            var numExp = /^[0-9]+$/;
            return numExp.test(val);
        }
    }

    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 3, '060101')
        },100);

        //진입시 2depth카테고리 세팅
        var paramCode = "${param.code}";
        console.log(paramCode);
        if(!isEmpty(paramCode)){
            var code = lang == 'ko' ? 'ko_'+paramCode : 'en_'+paramCode;
            getCategory(code,1,'inqu');
        }else{
            getCategory($('#uto1Wrap li.active').find('a').data('menuCode'),1,'inqu');
        }


        //문의 유형 클릭
        $('#uto1Wrap li a ').click(function(){
            $("select[name='uto2']").parent().find('span').text(lang == 'ko' ? '선택' : 'Select');
            getCategory($(this).data('menuCode'),1,'inqu');
            initFormValid();
        })

        //문의내용 keyup이벤트
        $('#memo').on('keyup',function (){
            $('#memoCnt').text($(this).val().length);
        })

        // //카테고리 2dpeht변경
        // $(document).on('change','#uto2',function(){
        //     var menuCode = $(this).parent().find('ul').find('.selected').data('value')
        //     getCategory(menuCode,2,'inqu');
        // })

        //지역 셀렉트박스 변경
        $(document).on('change','#region1',function(){
            var menuCode = $(this).parent().find('ul').find('.selected').data('value')
            $("select[name='region2']").parent().find('span').text(lang == 'ko' ? '선택' : 'Select');
            $("select[name='region2']").parent().find('ul').empty();
            getCategory(menuCode,2,'coun');
        })

        //영문일시 지역/국가 세팅
        if(lang == 'en'){
            getCategory(null,1,'coun');
        }
    })

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
            $(obj).hide();
            $(obj).siblings(".btn-clear").hide();
            return;
        }else{
            $(obj).show();
            $(obj).siblings(".btn-clear").show();
        }

        if (!fileSizeCheck(file.size, file.type,gubun)) {
            $(obj).parent().find("input[type='text']").val("");
            $(obj).val("");
            $(obj).hide();
            $(obj).siblings(".btn-clear").hide();
            return;
        }else{
            $(obj).show();
            $(obj).siblings(".btn-clear").show();
        }

        $(obj).parent().find("input[type='text']").val(file.name);
    }

    $('.file-type .btn-clear').on('click', function () {
        $(this).hide();
        $(this).siblings('input').val('');
        $(this).siblings('input').hide();
        $(this).siblings('.img-box').hide().find('img').attr("src", "");
        $(this).parents('.file-type').removeClass('add');
    });

    //메일 발송을 위한 텍스트 생성
    function getInqyTypeText(){
        var str1 = $('#uto1Wrap li.active').find('a').text().trim();
        var str2 = $("select[name='uto2']").parent().find('ul').find('.selected').text();
        if(!isEmpty(str2) && !isEmpty($("select[name='uto2']").parent().find('ul').find('.selected').data('value'))){
            str1 += " | " + str2;
        }

        return str1;
    }


    //문의등록
    function formSubmitProc() {

        //유효성 체크
        if(!checkValid()){
            return false;
        }

        var form = $("#f1");
        var formData = new FormData(form[0]);
        formData.append("uto1", $('#uto1Wrap li.active').find('a').data('menuCode'));
        formData.append("inquiryTypeTxt",getInqyTypeText());

        var isUto2 = $("select[name='uto2']").closest('div').is(":visible");
        if(isUto2){
            formData.append("uto2", $("select[name='uto2']").parent().find('ul').find('.selected').data('value'));
        }
        //선택된 카테고리에따라 폼 데이터 세팅(영문 케이스)
        if(lang == 'en'){
            setSelectedData(formData);
        }


        var url = lang == 'ko' ? "/customer/qna/save" : "/en/customer/qna/save";
        var option = {
            url: url,
            type: 'POST',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
        };

        ajaxRestCall(option).then(function(res) {
            if(res.code == '00'){
                //alert('문의 내용이 등록되었습니다');
                alert('<spring:message code="alert.qnaRegist" text="문의 내용이 등록되었습니다"/>');
                location.reload();
            }
        })
    }

    function setSelectedData(formData){
        var isRegion1 = $("select[name='region1']").closest('div').is(":visible");
        var isRegion2 = $("select[name='region2']").closest('div').is(":visible");

        if(isRegion1){
            formData.append("continent", $("select[name='region1']").parent().find('ul').find('.selected').data('value'));
        }
        if(isRegion2){
            formData.append("country", $("select[name='region2']").parent().find('ul').find('.selected').data('value'));
        }
    }

    //checkValid함수에서의 obj에 해당하는 ui처리
    function validToggle(obj,bool,isEmpty){
        if(!bool){
            obj.parent('.input-type').removeClass('valid');
            obj.parent('.input-type').addClass('invalid');

            if(!isEmpty)
                obj.next('span').show();
            else
                obj.next('span').hide();

        }else{
            obj.parent('.input-type').removeClass('invalid');
            obj.parent('.input-type').addClass('valid');
            obj.next('span').hide();
        }
    }


    //모든 유효성 검사 UI 초기화
    function initFormValid(){
        $("#f1").find(".input-type , .select-type, .check-box").each(function(idx,item){
            $(item).removeClass('valid');
            $(item).removeClass('invalid');
            $(item).find('span.msg').hide();
        });
    }

    //폼 유효성 검사
    function checkValid(){

        //2depth카테고리
        var cate2 = isEmpty($("select[name='uto2']").parent().find('ul').find('.selected').data('value')) ? true : false;
        if(cate2 && $("#categoryWrap1").is(":visible")){
            $("select[name='uto2']").parent('.select-type').addClass('invalid');
            $("select[name='uto2']").parent('.select-type').attr('tabindex',-1).focus();
            //alert('카테고리를 선택해주세요')
            alert('<spring:message code="alert.qnaCate" text="카테고리를 선택해주세요"/>');
            return false;
        }else{
            $("select[name='uto2']").parent('.select-type').removeClass('invalid');
        }


        var depthCheck = $("select[name='uto2']").parent().find('ul').find('.selected').data('value');
        if(lang == 'en' && depthCheck == "en_inqu_0101" && isEmpty($("select[name='region1']").parent().find('ul').find('.selected').data('value'))){
            $("select[name='region1']").parent('.select-type').attr('tabindex',-1).focus();
            $("select[name='region1']").parent('.select-type').addClass('invalid');
            alert('Please select a region for your inquiry')
            return false;
        }else{
            $("select[name='region1']").parent('.select-type').removeClass('invalid');
        }

        //이름
        if(isEmpty($('#name').val())){
            //alert('성명을 입력해주세요');
            alert('<spring:message code="alert.qnaName" text="성명을 입력해주세요"/>');
            validToggle($('#name'), false, true);
            $('#name').focus();
            return false;
        }else if(!textValidation.checkOnlyKoOrEn($('#name').val())){
            //alert('성명을 알맞게 입력해주세요');
            alert('<spring:message code="alert.qnaCheckName" text="성명을 알맞게 입력해주세요"/>');
            validToggle($('#name'), false, false);
            $('#name').focus();
            return false;
        }else{
            validToggle($('#name'), true, true);
        }

        //이메일
        if(isEmpty($('#email').val())){
            //alert('이메일을 입력해주세요');
            alert('<spring:message code="alert.qnaEmail" text="이메일을 입력해주세요"/>');
            validToggle($('#email'), false, true);
            $('#email').focus();
            return false;
        }else if(!textValidation.checkEmail($('#email').val())){
           // alert('이메일을 알맞게 입력해주세요');
            alert('<spring:message code="alert.qnaCheckEmail" text="이메일을 알맞게 입력해주세요"/>');
            validToggle($('#email'), false, false);
            $('#email').focus();
            return false;
        }else{
            validToggle($('#email'), true, true);
        }

        //소속회사
        if(!isEmpty($('#company').val()) && textValidation.checkSpecialRule($('#company').val())){
            //alert('소속회사명을 알맞게 입력해주세요');
            alert('<spring:message code="alert.qnaCheckCompany" text="소속회사명을 알맞게 입력해주세요"/>');
            $('#company').focus();
            validToggle($('#company'),false,false);
        }else{
            validToggle($('#company'),true,true);
        }

        //연락처
        if(isEmpty($('#tel').val())){
            //alert('연락처를 입력해주세요');
            alert('<spring:message code="alert.qnaTel" text="연락처를 입력해주세요"/>');
            validToggle($('#tel'), false, true);
            $('#tel').focus();
            return false;
        }else if(!textValidation.checkOnlyNumber($('#tel').val())){
            //alert('숫자만 입력해주세요');
            alert('<spring:message code="alert.qnaCheckNumber" text="숫자만 입력해주세요"/>');
            validToggle($('#tel'), false, false);
            $('#tel').focus();
            return false;
        }else{
            validToggle($('#tel'), true, true);
        }

        //휴대전화
        if(!isEmpty($('#phone').val())&& !textValidation.checkOnlyNumber($('#phone').val())){
            //alert('숫자만 입력해주세요');
            alert('<spring:message code="alert.qnaCheckNumber" text="숫자만 입력해주세요"/>');
            validToggle($('#phone'), false, false);
            $('#phone').focus();
            return false;
        }else{
            validToggle($('#phone'), true, true);
        }

        //제목
        if(isEmpty($('#title').val())){
            //alert('제목을 입력해주세요');
            alert('<spring:message code="alert.qnaTitle" text="제목을 입력해주세요"/>');
            validToggle($('#title'), false, false);
            $('#title').focus();
            return false;
        }else{
            validToggle($('#title'), true, true);
        }

        //문의내용
        if(isEmpty($('#memo').val())){
            //alert('문의 내용을 입력해주세요');
            alert('<spring:message code="alert.qnaMemo" text="문의 내용을 입력해주세요"/>');
            $('#memo').parent('.textarea-type').addClass('invalid');
            $('#memo').parent('.textarea-type').removeClass('valid');
            $('#memo').parent('.textarea-type').find('span.msg').hide();
            $('#memo').focus;
            return false;
        }else{
            $('#memo').parent('.textarea-type').addClass('valid');
            $('#memo').parent('.textarea-type').removeClass('invalid');
        }

        //개인정보 수집 체크
        if (!$('#personalInfo').is(":checked")) {
            //alert('개인정보 수집 및 이용에 동의해주세요');
            alert('<spring:message code="alert.qnaPersonalInfo" text="개인정보 수집 및 이용에 동의해주세요"/>');
            $('#personalInfo').parent('.check-box').removeClass('valid');
            $('#personalInfo').parent('.check-box').addClass('invalid');
            $('#personalInfo').parent('.check-box').next('.msg').show();
            return false;
        } else {
            $('#personalInfo').parent('.check-box').removeClass('invalid');
            $('#personalInfo').parent('.check-box').addClass('valid');
            $('#personalInfo').parent('.check-box').next('.msg').hide();
        }

        return true;
    }

    //카테고리 조회
    function getCategory(menuCode,depth,schCate){
        var url = lang == 'ko' ? "/customer/qna/category" : "/en/customer/qna/category"
        var option = {
            url: url,
            type : "GET",
            data : {
                menuCode : menuCode,
                schCate : schCate,
                menuDepth : depth
            }
        }
        ajaxRestCall(option).then(function(res) {
            if(res.code == '00'){
                const list = res.data;
                if(schCate == 'inqu'){
                    setInquCategory(depth,list);
                }else{
                    setReginAndNation(depth,list);
                }

            }
        })
    }

    //지역,국가 셀렉트박스(영문일시 해당)
    function setReginAndNation(depth,list){
        switch (depth){
            case 1:
                makeCategorySelectBox($("select[name='region1']"),list);
                break;
            case 2:
                makeCategorySelectBox($("select[name='region2']"),list.filter(function(o){return  o.menuDepth == '2'}));
                break;
        }
    }

    //문의 유형 카테고리
    function setInquCategory(depth,list){
        switch (depth){
            case 1:
                if(isEmpty(list)){
                    $('#categoryWrap1').hide();
                    $('#categoryWrap2').hide();
                }else{
                    $('#categoryWrap1').show();
                    $('#categoryWrap2').show();
                    makeCategorySelectBox($("select[name='uto2']"),list);
                }
                break;
            // case 2:
            //     list = list.filter(o => o.menuDepth == '3');
            //     if(isEmpty(list)){
            //         //$("select[name='uto3']").closest('div').hide();
            //     }else{
            //         // $("select[name='uto3']").closest('div').show();
            //         // $("select[name='uto3']").parent().find('span').text(lang == 'ko' ? '선택' : 'Select');
            //         // makeCategorySelectBox($("select[name='uto3']"),list);
            //     }
            //     break;
        }
    }

    //카테고리 셀렉트 박스 생성
    function makeCategorySelectBox(obj,arr){
        var dispTitle = lang == 'ko' ? '선택' : 'Select';
        let selectEl = obj.parent().find('ul');
        selectEl.empty();

        let selectOptStr = "";
        selectOptStr += '<li data-value="" data-display="'+dispTitle+'" class="option selected">'+dispTitle+'</li>'
        arr.forEach(function(item) {
            selectOptStr += "<li data-value="+item.menuCode+" class='option'>"+item.menuName+"</li>";
        })
        selectEl.append(selectOptStr);
    }



</script>





