<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>


<!--content-->
<section id="content" class="sub-wrap esg-newspaper">

    <c:if test="${LANG eq 'ko'}">
        <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_07.jpg?v4)">
            <div class="sub-title">
                <h2 class="title-type">사이버 신문고</h2>
            </div>
        </div>
    </c:if>

    <c:if test="${LANG eq 'en'}">
        <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_07.jpg?v4)">
            <div class="sub-title">
                <h2 class="title-type">Compliance Reporting Channel</h2>
            </div>
        </div>
    </c:if>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

    <c:if test="${LANG eq 'ko'}">
        <div id="container" class="content-wrap" id="contentWrap1">
        <div class="content-box">
            <div class="inner-box">

                <div class="title-wrap">
                    <h3 class="title-type">제보확인</h3>
                </div>

                <div class="confirm-wrap">
                    <p>
                        <span>제보 시 발급된 접수번호 및 </span>
                        <span>설정하신 비밀번호를 입력하세요.<br></span>
                        <span>접수번호는 제보 후 발송된 접수완료 이메일을 </span>
                        <span>통해서도 확인이 가능합니다. </span>
                        <span>(실명 제보 시에 한함)</span>
                    </p>
                    <div class="form-box">
                        <div class="form-item">
                            <dl>
                                <dt>접수번호</dt>
                                <dd>
                                    <div class="input-type">
                                        <input type="text"  name="registNum" id="registNum" placeholder="접수번호를 입력해주세요.">
                                    </div>
                                </dd>
                            </dl>
                            <dl>
                                <dt>비밀번호</dt>
                                <dd>
                                    <div class="input-type">
                                        <input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요.">
                                    </div>
                                </dd>
                            </dl>
                        </div>

                        <button type="button" class="btn-submit" onclick="checkValid();">확인</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </c:if>

    <c:if test="${LANG eq 'en'}">
        <div id="container" class="content-wrap" id="contentWrap1">
            <div class="content-box">
                <div class="inner-box">

                    <div class="title-wrap">
                        <h3 class="title-type">Check status of your report</h3>
                    </div>

                    <div class="confirm-wrap">
                        <p>
                            Please enter the report number that was issued when you submitted your report and your password.<br>
                            You can also find the report number in an email you received when you submitted your report.<br>
                            (Only for reports submitted under a real name)
                        </p>
                        <div class="form-box">
                            <div class="form-item">
                                <dl>
                                    <dt>Report number</dt>
                                    <dd>
                                        <div class="input-type">
                                            <input type="text"  name="registNum" id="registNum" placeholder="Please enter the report number.">
                                        </div>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>Password</dt>
                                    <dd>
                                        <div class="input-type">
                                            <input type="password" name="password" id="password" placeholder="Please enter the password.">
                                        </div>
                                    </dd>
                                </dl>
                            </div>
                            <button type="button" class="btn-submit" onclick="checkValid();">Check</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:if>


</section>


<form id="f1" method="post" action="/esg/inquireResult">
    <input type="hidden" name="registNum" value="">
    <input type="hidden" name="password" value="">
</form>

<script>

    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 2, '0307');
        },100);

        $('#password').keydown(function(e){
            if(e.keyCode == 13){
                checkValid();
            }
        })
        
    })

    function checkValid(){

        var url = lang == 'ko' ? "/esg/inquireLoginCheck" : "/en/esg/inquireLoginCheck"

        var option = {
            type: "post",
            url : url,
            data : {
                registNum : $('#registNum').val()
                ,password : $('#password').val()
                ,lang : lang
            }
        };

        ajaxRestCall(option).then(function(res) {
            if(res.status == 'success'){
                $('#f1 input[name="registNum"]').val($('#registNum').val());
                $('#f1 input[name="password"]').val($('#password').val());
                if(lang === 'en'){
                    $('#f1').attr("action", "/en/esg/inquireResult");
                }
                $('#f1').submit();
            }else{
                var msg = res.msg;
                if(msg == 'numcheck'){
                    //alert('접수번호를 다시 확인해주세요');
                    alert('<spring:message code="alert.reportCheckNum" text="접수번호를 다시 확인해주세요"/>');
                }else if(msg == 'emptyPw'){
                    //alert('비밀번호를 입력해주세요');
                    alert('<spring:message code="alert.esgEmptyPw" text="비밀번호를 입력해주세요"/>');
                }else if(msg == 'pwcheck'){
                    //alert('비밀번호를 확인해주세요');
                    alert('<spring:message code="alert.esgCheckPw" text="비밀번호를 확인해주세요"/>');
                }
            }
        })
    }


</script>





