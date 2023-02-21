<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<!--content-->
<section id="content" class="sub-wrap customer">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/customer/visual_customer_01.jpg)">
        <div class="sub-title">
            <h2 class="title-type">1:1 문의</h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

    <form id="f1" name="f1" method="post" onsubmit="return false;">
    <input type="hidden" name="lang" value="${LANG}">
    <div id="container" class="content-wrap">
        <div class="content-box">
            <div class="inner-box">
                <div class="title-wrap2">
                    <h3 class="title-type">문의 유형 선택</h3>
                    <div class="side-box">필수선택<i class="ico-required"></i></div>
                </div>
                <div class="tab-wrap">
                    <ul class="tab-type2 js_tab" id="uto1Wrap">
                        <li class="active">
                            <a href="javascript:void(0)" data-menu-code="ko_inqu_01">
                                <i class="ico-product2"></i>
                                <strong data-code="">제품 및 솔루션</strong>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-menu-code="ko_inqu_02">
                                <i class="ico-invest"></i>
                                <strong>투자 정보</strong>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-menu-code="ko_inqu_03">
                                <i class="ico-employ"></i>
                                <strong>채용</strong>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-menu-code="ko_inqu_04">
                                <i class="ico-etc"></i>
                                <strong>기타</strong>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content-box">
            <div class="inner-box">
                <div class="title-wrap2">
                    <h3 class="title-type">문의 작성</h3>
                    <div class="side-box">필수입력<i class="ico-required"></i></div>
                </div>

                <div class="form-group">
                    <div class="form-box" id="categoryWrap">
                        <div class="form-label"><label for="">카테고리 선택<i class="ico-required"></i></label></div>
                        <div class="form-item">
                            <!-- select -->
                            <div class="select-type">
                                <select id="uto2" name="uto2">
                                    <option data-display="" value="">선택</option>
                                </select>
                            </div>
                            <!-- //select -->
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="form-label"><label for="id">이름<i class="ico-required"></i></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="name" placeholder="이름을 입력해주세요." name="name">
                                <span class="msg">숫자 및 특수문자를 포함할 수 없습니다.</span>
                            </div>
                            <!-- //input -->
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="form-label"><label for="mail">이메일<i class="ico-required"></i></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="email" placeholder="이메일을 입력해주세요." name="email">
                                <span class="msg">올바른 이메일 주소를 입력해주세요.</span>
                            </div>
                            <!-- //input -->
                        </div>
                        <div class="form-label"><label for="company">소속회사</label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="company" placeholder="소속회사명을 입력해주세요." name="company">
                                <span class="msg">특수문자를 포함할 수 없습니다.</span>
                            </div>
                            <!-- //input -->
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="form-label"><label for="tel1">연락처<i class="ico-required"></i></label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="tel" placeholder="연락처를 입력해주세요." name="tel">
                                <span class="msg">숫자만 입력해주세요.</span>
                            </div>
                            <!-- //input -->
                        </div>
                        <div class="form-label"><label for="tel2">휴대전화번호</label></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="phone" placeholder="휴대전화번호를 입력해주세요." name="phone">
                                <span class="msg">숫자만 입력해주세요.</span>
                            </div>
                            <!-- //input -->
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="form-label"><label for="sbj">제목<i class="ico-required"></i></div>
                        <div class="form-item">
                            <!-- input -->
                            <div class="input-type">
                                <input type="text" id="title" placeholder="제목을 입력해주세요." name="title">
                                <span class="msg">특수문자를 포함할 수 없습니다.</span>
                            </div>
                            <!-- //input -->
                        </div>
                    </div>

                    <div class="form-box">
                        <div class="form-label"><label for="inquiries">문의내용<i class="ico-required"></i></div>
                        <div class="form-item">

                            <div class="textarea-type">
                                <textarea cols="30" rows="5" id="memo" placeholder="문의내용을 입력해주세요." name="memo" maxlength="999"></textarea>
                                <span class="count">[<em id="memoCnt">0</em>/1,000]</span>
                                <span class="msg">입력 가능한 글자수를 초과하였습니다.</span>
                            </div>

                            <div class="file-type img">
                                <label for="input-file" class="btn-type">파일첨부<i class="ico-more2"></i></label>
                                <input type="file" id="input-file" name="pcFile" accept=".jpg, .jpeg, .png, .hwp, .pdf, .docx">
                                <div class="img-box"><img src="" onerror="this.src='${CON_STATIC_URL}/asset/images/list.jpg';" alt=""></div>
                                <button class="btn-clear"><i class="ico-clear"><span class="hidden">첨부파일삭제</span></i></button>
                            </div>

                            <div class="guide-box">
                                <dl>
                                    <dt><i class="ico-exclam"></i>유의사항</dt>
                                    <dd>
                                        <ul class="list-type">
                                            <li>이미지 형식의 jpg(jpeg), png나 문서형식의 doc(docx),ppt(pptx), hwp, pdf만 첨부 가능합니다.</li>
                                            <li>첨부파일은 20MB를 초과할 수 없으며, 최대 1개까지 가능합니다.</li>
                                        </ul>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content-box">
            <div class="inner-box">
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
                            <label for="personalInfo">위 내용에 동의합니다.<strong>[필수]</strong></label>
                        </div>
                        <span class="msg"><i class="ico-invalid"></i>개인정보 수집 및 이용에 동의해주세요.</span>
                    </div>
                </div>
                <div class="btn-wrap t-c">
                    <a href="javascript:void(0);" class="btn-type btn-l v2" onclick="formSubmitProc();">문의하기</a>
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

        //2depth카테고리 세팅
        getCategory($('#uto1Wrap li.active').find('a').data('menuCode'));

        //문의 유형 클릭
        $('#uto1Wrap li a ').click(function(){
            $("select[name='uto2']").parent().find('span').text('선택');
            getCategory($(this).data('menuCode'));
            initFormValid();
        })

        //문의내용 keyup이벤트
        $('#memo').on('keyup',function (){
            $('#memoCnt').text($(this).val().length);
        })
    })

    //문의등록
    function formSubmitProc() {

        //유효성 체크
        if(!checkValid()){
            return false;
        }

        if(!confirm('문의 내용을 등록하시겠습니까?')) return;

        var form = $("#f1");
        var formData = new FormData(form[0]);

        //TODO 영문일시 uto3 및 대륙/국가 추가
        formData.append("uto1", $('#uto1Wrap li.active').find('a').data('menuCode'));
        formData.append("uto2", $("select[name='uto2']").parent().find('ul').find('.selected').data('value'));

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

        var booleanArr = [];

        //2depth카테고리
        var cate2 = isEmpty($("select[name='uto2']").parent().find('ul').find('.selected').data('value')) ? true : false;
        if(cate2){
            $("select[name='uto2']").parent('.select-type').addClass('invalid');
            booleanArr.push(false);
        }else{
            $("select[name='uto2']").parent('.select-type').removeClass('invalid');
            booleanArr.push(true);
        }

        //이름 체크
        var isName = isEmpty($('#name').val()) ? true : false;
        if(isName || !textValidation.checkOnlyKoOrEn($('#name').val())){
            validToggle($('#name'),false, isName);
            booleanArr.push(false);
        }else{
            validToggle($('#name'),true,isName);
            booleanArr.push(true);
        }

        //이메일
        var isEmail = isEmpty($('#email').val()) ? true : false;
        if(isEmail || !textValidation.checkEmail($('#email').val())){
            validToggle($('#email'),false,isEmail);
            booleanArr.push(false);
        }else{
            validToggle($('#email'),true, isEmail);
            booleanArr.push(true);
        }

        //소속회사
        if(!isEmpty($('#company').val()) && textValidation.checkSpecialRule($('#company').val())){
            validToggle($('#company'),false,false);
            booleanArr.push(false);
        }else{
            validToggle($('#company'),true,false);
            booleanArr.push(true);
        }

        //연락처
        var isTel = isEmpty($('#tel').val()) ? true : false;
        if(isTel || !textValidation.checkOnlyNumber($('#tel').val())){
            validToggle($('#tel'),false,isTel);
            booleanArr.push(false);
        }else{
            validToggle($('#tel'),true,isTel);
            booleanArr.push(true);
        }

        //휴대전화
        if(!isEmpty($('#phone').val()) && !textValidation.checkOnlyNumber($('#phone').val())){
            validToggle($('#phone'),false, false);
            booleanArr.push(false);
        }else{
            validToggle($('#phone'),true,false);
            booleanArr.push(true);
        }

        //제목
        var isTitle = isEmpty($('#title').val()) ? true : false;
        if(isTitle || textValidation.checkSpecialRule($('#title').val())){
            validToggle($('#title'),false,isTitle);
            booleanArr.push(false);
        }else{
            validToggle($('#title'),true,isTitle);
            booleanArr.push(true);
        }

        //내용
        var isMemo = isEmpty($('#memo').val()) ? true : false;
        if(isMemo){
            $('#memo').parent('.textarea-type').addClass('invalid');
            $('#memo').parent('.textarea-type').removeClass('valid');
            $('#memo').parent('.textarea-type').find('span.msg').hide();
            booleanArr.push(false);
        }else{
            $('#memo').parent('.textarea-type').addClass('valid');
            $('#memo').parent('.textarea-type').removeClass('invalid');
            booleanArr.push(true);
        }

        //개인정보 수집 체크
        if(!$('#personalInfo').is(":checked")){
            $('#personalInfo').parent('.check-box').addClass('invalid');
            $('#personalInfo').parent('.check-box').find('.msg').show();
            booleanArr.push(false);
        }else{
            $('#personalInfo').parent('.check-box').removeClass('invalid');
            $('#personalInfo').parent('.check-box').find('.msg').hide();
            booleanArr.push(true);
        }

        return booleanArr.includes(false) ? false : true;
    }

    //카테고리 조회
    function getCategory(menuCode){
        var url = lang == 'ko' ? "/customer/qna/category" : "/en/customer/qna/category"
        var option = {
            url: url,
            type : "GET",
            data : {
                menuCode : menuCode
            }
        }
        ajaxRestCall(option).then(function(res) {
            if(res.code == '00'){
                const list = res.data;
                if(isEmpty(list)){
                    $('#categoryWrap').hide();
                }else{
                    $('#categoryWrap').show();
                    makeCategorySelectBox($("select[name='uto2']"),list);
                }
            }
        })
    }

    //카테고리 셀렉트 박스 생성
    function makeCategorySelectBox(obj,arr){
        let selectEl = obj.parent().find('ul');
        selectEl.empty();

        let selectOptStr = "";
        selectOptStr += '<li data-value="" data-display="선택" class="option selected">선택</li>'
        arr.forEach(function(item) {
            selectOptStr += "<li data-value="+item.menuCode+" class='option'>"+item.menuName+"</li>";
        })
        selectEl.append(selectOptStr);
    }
</script>





