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
                <h2 class="title-type">Cyber Reporting Channel</h2>
            </div>
        </div>
    </c:if>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />

    <c:if test="${LANG eq 'ko'}">
        <div class="content-wrap" id="contentWrap1">
            <form id="f1" name="f1" method="post" onsubmit="return false;">
                <input type="hidden" name="lang" value="${LANG}">
                <div class="content-box">
                    <input type="hidden" name="gubun" value="${param.gubun}">
                    <div class="inner-box">

                        <div class="title-wrap2">
                            <h3 class="title-type">
                                    ${param.gubun eq 'em' or empty param.gubun ? '윤리경영' : '공정거래'} 제보하기
                            </h3>
                        </div>

                        <div class="title-wrap3">
                            <h4 class="title-type">제보자 정보</h4>
                            <div class="side-box">필수 입력<i class="ico-required"></i></div>
                        </div>

                        <div class="form-group">
                            <div class="form-box">

                                <div class="form-label"><label for="realName">제보자 유형<i class="ico-required"></i></label></div>

                                <div class="form-item">
                                    <div class="check-box">
                                        <input type="radio" id="realName" name="type" value="real" checked>
                                        <label class="checkbox" for="realName"></label>
                                        <label for="realName">실명</label>
                                    </div>
                                    <div class="check-box">
                                        <input type="radio" id="anonymous" name="type"value="anou">
                                        <label class="checkbox" for="anonymous"></label>
                                        <label for="anonymous">익명</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-box real-name">

                                <div class="form-label"><label for="name">이름<i class="ico-required"></i></label></div>

                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="name" name="name" placeholder="이름을 입력해주세요.">
                                        <span class="msg">숫자 및 특수문자를 포함할 수 없습니다.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>

                            <div class="form-box real-name">
                                <div class="form-label"><label for="phone">연락처<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="phone"  name="phone" placeholder="연락처를 입력해주세요."><!-- 수정 -->
                                        <span class="msg">숫자만 입력해주세요.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>

                            <div class="form-box real-name">
                                <div class="form-label"><label for="email">이메일<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="email" name="email" placeholder="E-mail을 입력해주세요."><!-- 수정 -->
                                        <span class="msg">올바른 이메일 주소를 입력해주세요.</span>
                                    </div>
                                    <!-- //input -->

                                    <ul class="list-type v3">
                                        <li>입력하신 이메일로 접수번호 및 제보 처리 결과가 발송됩니다.</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="password1">비밀번호<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="password" id="password1" name="password" placeholder="입력해주세요.">
                                        <span class="msg">비밀번호를 입력해주세요.</span>
                                    </div>
                                    <!-- //input -->

                                    <ul class="list-type v3">
                                        <li>제보 결과 확인을 위해 비밀번호를 입력해주세요. (영문, 숫자, 특수 문자 포함 입력)</li>
                                        <li>별도의 비밀번호 찾기 기능이 제공되지 않으므로, 답변 확인을 위해 비밀번호를 꼭 기억하시기 바랍니다.</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="password2">비밀번호 확인<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="password" id="password2" placeholder="다시 입력해주세요.">
                                        <span class="msg">등록한 비밀번호와 다릅니다.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>
                        </div>

                        <div class="title-wrap3">
                            <h4 class="title-type">제보내용</h4>
                        </div>

                        <div class="form-group">

                            <div class="form-box">
                                <div class="form-label"><label for="title">제목<i class="ico-required"></i></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="title" name="title" placeholder="제목을 입력해주세요.">
                                        <span class="msg">제목을 입력해주세요.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="reportMemo">내용<i class="ico-required"></i></div>
                                <div class="form-item">
                                    <div class="textarea-type">
                                        <textarea cols="30" rows="10" id="reportMemo" name="reportMemo" maxlength="999"></textarea>
                                        <span class="count">[<em id="memoCnt">0</em>/1,000]</span>
                                        <span class="msg">입력 가능한 글자수를 초과하였습니다.</span>

                                        <label for="reportMemo" class="placeholder-box">
                                            <strong>제보 작성 방법</strong>
                                            <ul class="list-type">
                                                <li>제보 내용은 언제, 어디서 어떤 문제와 관련된 것인지 상세하게 작성해 주십시오.</li>
                                                <li>제보 내용이 구체적이지 않거나, 허위 사실 또는 근거 없는 비방으로 판단될 경우 조사 대상에서 제외될 수 있습니다.</li>
                                                <li>제보 내용과 관련하여 알거나, 알 수 있을 것으로 예상되는 대상(이름 또는 직책)을 적어 주시고, 어떻게 알게 되었는지도 함께 작성해 주십시오.</li>
                                                <li>제보 내용과 관련된 증거(사진, 문서 등)가 있다면 첨부해 주십시오.</li>
                                                <li>제보는 당사와 관련된 것이어야 하며, 제보로 인한 피해가 발생하지 않도록 제보 사실 및 관련 증빙 등은 철저한 보안체계 하에 관리됩니다.</li>
                                            </ul>
                                        </label>

                                    </div>
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="">파일첨부</label></div>
                                <div class="form-item ">
                                    <div class="file-form">
                                        <div class="file-btn">
                                            <label for="input-file" class="btn-type">파일첨부<i class="ico-more2"></i></label>
                                            <input type="file" id="input-file"  multiple style="display: none;"/>
                                        </div>
                                        <div class="file-list">
                                        </div>
                                    </div>
                                    <ul class="list-type v3">
                                        <li>최대 10개까지 첨부 가능</li>
                                        <li>첨부파일은 최대 100MB 이내로 GIF, JPG, PNG, DOC, DOCX, XLS, XLSX, PPT, PPTX, PDF, ZIP, HWP, MP3, MP4, AVI, WMV 파일만 가능합니다.</li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                        <div class="security-wrap annou-name" style="display: none;">
                            <p>자동 등록을 방지 하기 위해 다음 이미지를 보이는 대로 입력해주세요.</p>
                            <div class="security-box">
                                <img src="/captchaImg" alt="" id="captchaImg">
                                <button type="button" class="btn-refresh" onclick="captchaReload()"><i class="ico-refresh"><span class="hidden">새로고침</span></i></button>
                                <!-- input -->
                                <div class="input-type">
                                    <input type="text" placeholder="자동입력 방지문자를 입력해주세요." id="captchaTxt">
                                </div>
                                <!-- //input -->
                            </div>
                        </div>

                        <div class="title-wrap2 real-name">
                            <h3 class="title-type">개인정보 수집 및 이용동의</h3>
                        </div>

                        <div class="agree-wrap real-name">
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
                            <a href="javascript:void(0)" class="btn-type btn-l v2" onclick="formSubmitProc()">접수하기</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </c:if>

    <c:if test="${LANG eq 'en'}">
        <div class="content-wrap" id="contentWrap1">
            <form id="f1" name="f1" method="post" onsubmit="return false;">
                <input type="hidden" name="lang" value="${LANG}">
                <div class="content-box">
                    <input type="hidden" name="gubun" value="${param.gubun}">
                    <div class="inner-box">

                        <div class="title-wrap2">
                            <h3 class="title-type">
                                Report for ${param.gubun eq 'em' or empty param.gubun ? 'Ethical Management' : 'Fair Trade'}
                            </h3>
                        </div>

                        <div class="title-wrap3">
                            <h4 class="title-type">informant information</h4>
                            <div class="side-box">Required Input<i class="ico-required"></i></div>
                        </div>

                        <div class="form-group">
                            <div class="form-box">
                                <div class="form-label"><label for="realName">Report Type<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <div class="check-box">
                                        <input type="radio" id="realName" name="type" value="real" checked>
                                        <label class="checkbox" for="realName"></label>
                                        <label for="realName">Real name</label>
                                    </div>
                                    <div class="check-box">
                                        <input type="radio" id="anonymous" name="type"value="anou">
                                        <label class="checkbox" for="anonymous"></label>
                                        <label for="anonymous">Anonymous</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-box real-name">
                                <div class="form-label"><label for="name">Name<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="name" name="name" placeholder="Enter your name">
                                        <span class="msg">You cannot use numbers and special characters.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>

                            <div class="form-box real-name">
                                <div class="form-label"><label for="phone">Contact<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="phone"  name="phone" placeholder="Enter your phone number"><!-- 수정 -->
                                        <span class="msg">Please enter numbers only.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>

                            <div class="form-box real-name">
                                <div class="form-label"><label for="email">E-mail<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="email" name="email" placeholder="Enter your E-mail"><!-- 수정 -->
                                        <span class="msg">Please enter a valid e-mail address.</span>
                                    </div>
                                    <!-- //input -->

                                    <ul class="list-type v3">
                                        <li>A report number and the outcome will be sent to the email you provided.</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="password1">Password<i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="password" id="password1" name="password" placeholder="Enter your password.">
                                        <span class="msg">Please enter the password.</span>
                                    </div>
                                    <!-- //input -->

                                    <ul class="list-type v3">
                                        <li>Enter your password to check the outcome later.
                                            (You need to include English letters, numbers, and special characters).</li>
                                        <li>We cannot find your password if you forget it. Please make sure to remember your password to check the response to your report.</li>
                                    </ul>
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="password2">Confirm password <i class="ico-required"></i></label></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="password" id="password2" placeholder="Re-enter your password">
                                        <span class="msg">Those passwords didn’t match.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>
                        </div>

                        <div class="title-wrap3">
                            <h4 class="title-type">Report Details</h4>
                        </div>

                        <div class="form-group">

                            <div class="form-box">
                                <div class="form-label"><label for="title">Subject<i class="ico-required"></i></div>
                                <div class="form-item">
                                    <!-- input -->
                                    <div class="input-type">
                                        <input type="text" id="title" name="title" placeholder="Details">
                                        <span class="msg">Please enter the subject.</span>
                                    </div>
                                    <!-- //input -->
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="reportMemo">Report<i class="ico-required"></i></div>
                                <div class="form-item">
                                    <div class="textarea-type">
                                        <textarea cols="30" rows="10" id="reportMemo" name="reportMemo" maxlength="999"></textarea>
                                        <span class="count">[<em id="memoCnt">0</em>/1,000]</span>
                                        <span class="msg">You have exceeded the maximum character limit.</span>

                                        <label for="reportMemo" class="placeholder-box">
                                            <strong>How to write a report</strong>
                                            <ul class="list-type">
                                                <li>Please include the details of an issue including when and where the issue occurred.</li>
                                                <li>False reports, defamation, or reports that are not specific enough may be excluded from investigation.</li>
                                                <li>Please provide a name or title of those who have, or are expected to have, knowledge of the reported information,
                                                    along with how that person would have acquired such knowledge.</li>
                                                <li>Attach evidence (e.g., pictures, documents) of the reported information, if available.</li>
                                                <li>The report has to be related to our company. To prevent the report from causing any harm, the report and evidential documents are securely managed.</li>
                                            </ul>
                                        </label>

                                    </div>
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="form-label"><label for="">Attach files</label></div>
                                <div class="form-item ">
                                    <div class="file-form">
                                        <div class="file-btn">
                                            <label for="input-file" class="btn-type">Attach files<i class="ico-more2"></i></label>
                                            <input type="file" id="input-file"  multiple style="display: none;"/>
                                        </div>
                                        <div class="file-list">
                                        </div>
                                    </div>
                                    <ul class="list-type v3">
                                        <li>You can upload up to 10 attachments.</li>
                                        <li>Attached files can be up to 100MB in size. (Supported formats: GIF, JPG, PNG, DOC, DOCX, XLS, XLSX, PPT, PPTX, PDF, ZIP, HWP, MP3, MP4, AVI, WMV)</li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                        <div class="security-wrap annou-name" style="display: none;">
                            <p>Enter exactly the security character you see in the image to prevent automatic registration by a program.</p>
                            <div class="security-box">
                                <img src="/captchaImg" alt="" id="captchaImg">
                                <button type="button" class="btn-refresh" onclick="captchaReload()"><i class="ico-refresh"><span class="hidden">Refresh</span></i></button>
                                <!-- input -->
                                <div class="input-type">
                                    <input type="text" placeholder="Please enter the security character." id="captchaTxt">
                                </div>
                                <!-- //input -->
                            </div>
                        </div>

                        <div class="title-wrap2 real-name">
                            <h3 class="title-type">Personal Information Agreement</h3>
                        </div>

                        <div class="agree-wrap real-name">
                            <div class="agree-box">
                                ■ Purpose of Processing Personal Information<br>
                                The Company handles the personal information that pertains to the minimum required scope of personal information for the purposes shown in the table below. Personal information processed by the Company shall not be used for purposes other than the purpose of processing personal information stipulated in this article, and should the said purpose change, the Company shall take necessary measures, such as obtaining separate and additional consent from the data subject in compliance with the “Personal Information Protection Act” and other related laws.<br>
                                - Online consultation (Customer > 1:1 Inquiries) on the Company’s official website, Report via the “Hot line” service<br>
                                <br>
                                ■ Items of Information Subjects to be Handled<br>
                                The Company shall collect and process the following personal information from users.<br>
                                1) Online consultation : Name, contact information, e-mail, country (for the global website only)<br>
                                2) Hot Line : Name, contact information, e-mail<br>
                                <br>
                                ■ Processing and Retention Period of Personal Information<br>
                                The Company shall destroy personal information within three months of achieving or fulfilling the purpose of collecting and using any given personal information item. However, if the Company is obliged by law to preserve a personal information item in accordance with relevant laws or if the Company obtains consent from the data subject, it shall keep relevant personal information for a set period of time.<br>
                                1) Online consultation : After 3 months of completing the processing of an inquiry<br>
                                2) Hot Line : After 3 months of informing the complainant and completing the processing of the particular complaint<br>
                                <br>
                                ■ Disadvantage in case of refusal<br>
                                You have the right to refuse to accept the above agreement on the collection and use of personal information. However, some services may be restricted if you do not consent to the agreement<br>

                            </div>
                            <div class="check-wrap">
                                <div class="check-box">
                                    <input type="checkbox" id="personalInfo">
                                    <label class="checkbox" for="personalInfo"></label>
                                    <label for="personalInfo">I agree to the collections<strong>[Required]</strong></label>
                                </div>
                                <span class="msg"><i class="ico-invalid"></i>usage of personal information.</span>
                            </div>
                        </div>

                        <div class="btn-wrap t-c">
                            <a href="javascript:void(0)" class="btn-type btn-l v2" onclick="formSubmitProcEn()">Accepting</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </c:if>


    <div class="content-wrap" style="display: none;" id="contentWrap2">

        <c:if test="${LANG eq 'ko'}">
            <div class="content-box">
                <div class="inner-box">

                    <div class="title-wrap">
                        <h3 class="title-type">제보확인</h3>
                    </div>

                    <div class="confirm-wrap">
                        <dl class="confirm-number">
                            <dt>접수번호</dt>
                            <dd><strong class="number" id="registNum"></strong><button type="button" class="btn-type v3" onclick="copy()">복사하기</button></dd>
                        </dl>
                        <strong class="title">귀하의 소중한 제보에 감사 드립니다.</strong>
                        <p class="desc">
                            진행상황은 ‘제보확인’ 메뉴에서 확인 가능합니다.<br>
                            제보 내용의 빠른 검토 및 반영을 위해 최선을 다하겠습니다.
                        </p>
                        <p class="desc focus">
                            익명 제보의 경우 제보자 정보를 수집하지 않아<br>
                            접수번호를 별도로 안내하지 못합니다.<br>
                            제보 진행 상황을 확인하기 위해 접수번호를 꼭 기억해 주십시오.
                        </p>
                        <a href="/esg/inquireCheck" class="btn-type v2 btn-l">제보 확인</a>
                    </div>

                </div>
            </div>
        </c:if>

        <c:if test="${LANG eq 'en'}">
            <div class="content-box">
                <div class="inner-box">

                    <div class="title-wrap">
                        <h3 class="title-type">Check status of your report</h3>
                    </div>

                    <div class="confirm-wrap">
                        <dl class="confirm-number">
                            <dt>Report number</dt>
                            <dd><strong class="number" id="registNum"></strong><button type="button" class="btn-type v3" onclick="copy()">Copy</button></dd>
                        </dl>
                        <strong class="title">Thank you for your report. </strong>
                        <p class="desc">
                            You can check the progress in “View Outcome”. <br>
                            We will do our best to promptly review and reflect your feedback.
                        </p>
                        <p class="desc focus">
                            The report number is not sent via email if you report anonymously, <br>
                            as we do not collect the informant’s information for an anonymous report. <br>
                            Please remember the report number to check the progress later.
                        </p>
                        <a href="/en/esg/inquireCheck" class="btn-type v2 btn-l">Check status of your report</a>
                    </div>

                </div>
            </div>
        </c:if>
    </div>
</section>

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
        },

        //숫자,영문,특수문자 포함 8~12자리
        checkPasswordRule : function(val){
            var passwordRule = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,12}$/;
            return passwordRule.test(val);
        }
    }

    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 2, '0307')
        },100);

        //유형에 따라 ui처리
        $('input[name="type"]').change(function(){
            if($(this).val() == 'real'){
                $('.real-name').show();
                $('.annou-name').hide();
            }else{
                $('.annou-name').show();
                $('.real-name').hide();
            }

            initFormValid();
        })

        $('#reportMemo').on('keyup',function(){
            if(isEmpty($(this).val())){
                $('.placeholder-box').show();
            }else{
                $('#reportMemo').parent('.textarea-type').removeClass('invalid');
                $('.placeholder-box').hide();
            }

            $('#memoCnt').text($(this).val().length);
        })
    });

    //모든 유효성 검사 UI 초기화
    function initFormValid(){
        $("#f1").find(".input-type , .select-type, .check-box, .textarea-type").each(function(idx,item){
            $(item).removeClass('valid');
            $(item).removeClass('invalid');
            $(item).find('span.msg').hide();
        });
    }

    function copy(){
        let tempInput = document.createElement("input")
        tempInput.value = $('#registNum').text();
        document.body.appendChild(tempInput);
        tempInput.select();
        document.execCommand("copy");
        document.body.removeChild(tempInput);
        alert('<spring:message code="alert.copyCompl" text="접수번호가 복사되었습니다"/>');
    }

    //제보등록
    async function formSubmitProc() {

        //유효성 체크
        if(!checkValid()) return;

        var form = $("#f1");
        var formData = new FormData(form[0]);

        //첨부파일 배열 formData세팅
        for (var i = 0; i < filesArr.length; i++) {
            if (!filesArr[i].is_delete) {
                formData.append("files", filesArr[i]);
            }
        }

        //익명일 경우 자동입력 방지 문자 확인
        if($('input[name="type"]:checked').val() == 'anou'){
            let res = await chkCaptchaNum()
            if(res.data != $('#captchaTxt').val()){
                alert('자동입력 방지문자가 올바르지 않습니다.');
                return;
            }
        }

        if(!confirm('제보 내용을 등록하시겠습니까?')) return;

        var url = '/esg/inquireProc'
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
                let data = res.data;
                if(data.registNum){
                    alert('문의 내용이 등록되었습니다');
                    $('#registNum').text(data.registNum);
                    $('#contentWrap1').hide();
                    $('#contentWrap2').show();
                    document.getElementById('subTitle').scrollIntoView();
                }
            }
        })
    }

    //soro 영문 추가
    async function formSubmitProcEn() {

        //유효성 체크
        if(!checkValidEn()) return;

        var form = $("#f1");
        var formData = new FormData(form[0]);

        //첨부파일 배열 formData세팅
        for (var i = 0; i < filesArr.length; i++) {
            if (!filesArr[i].is_delete) {
                formData.append("files", filesArr[i]);
            }
        }

        //익명일 경우 자동입력 방지 문자 확인
        if($('input[name="type"]:checked').val() == 'anou'){
            let res = await chkCaptchaNum()
            if(res.data != $('#captchaTxt').val()){
                alert('Auto-entry protection character is not valid.');
                return;
            }
        }

        if(!confirm('Are you sure you want to register your report?')) return;

        var url = '/en/esg/inquireProc'
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
                let data = res.data;
                if(data.registNum){
                    alert('Your inquiry has been registered');
                    $('#registNum').text(data.registNum);
                    $('#contentWrap1').hide();
                    $('#contentWrap2').show();
                    document.getElementById('subTitle').scrollIntoView();
                }
            }
        })
    }



    var fileNo = 0;
    var filesArr = new Array();
    function chkFile(obj) {

        var maxFileCnt = 10;   // 첨부파일 최대 개수
        var attFileCnt = document.querySelectorAll('.file-list > .filebox').length;
        var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
        var curFileCnt = obj.files.length;              // 현재 선택된 첨부파일 개수

        // 첨부파일 개수 확인
        if (curFileCnt > remainFileCnt) {
            if(lang === 'ko') {
                alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
            }
            if(lang === 'en') {
                alert("Up to " + maxFileCnt + " attachments can be attached.");
            }

        }else{
            for(const file of obj.files){
                if (fileValidation(file)) {

                    // 파일 배열에 담기
                    var reader = new FileReader();
                    reader.onload = function () {
                        filesArr.push(file);
                    };
                    reader.readAsDataURL(file);

                    // 목록 추가
                    let htmlData = '';
                    htmlData += '<div id="file' + fileNo + '" class="file filebox">';
                    htmlData += '   <span class="file-name">' + file.name + '</span>';
                    htmlData += '<button onclick="deleteFile(' + fileNo + ');" class="btn-clear">';
                    htmlData += '<i class="ico-clear">';
                    if(lang === 'ko') {
                        htmlData += '<span class="hidden">첨부파일삭제</span>'
                    }
                    if(lang === 'en') {
                        htmlData += '<span class="hidden">Delete Attachment</span>'
                    }
                    htmlData += '</button>'
                    htmlData += '</div>'

                    $('.file-list').append(htmlData);
                    fileNo++;
                } else {
                    continue;
                }
            }
        }
    }

    /* 첨부파일 검증 */
    function fileValidation(obj){
        var target = obj.name;
        var ext = target.substr(target.lastIndexOf('.') + 1,target.length).toUpperCase();
        const fileTypes = [
            'GIF', 'JPG', 'PNG', 'DOC', 'DOCX', 'XLS', 'XLSX', 'PPT',
            'PPTX', 'PDF', 'ZIP', 'HWP', 'MP3', 'MP4', 'AVI', 'WMV'
        ];

        if (obj.size > (100 * 1024 * 1024)) {
            alert('<spring:message code="alert.inquireNOtExceededFiles" text="최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다."/>');
            return false;
        } else if (obj.name.lastIndexOf('.') == -1) {
            alert('<spring:message code="alert.inquireNotExtensionsFiles" text="확장자가 없는 파일은 제외되었습니다."/>');
            return false;
        } else if (!fileTypes.includes(ext)) {
            alert('<spring:message code="alert.inquireNotAttachedFiles" text="첨부가 불가능한 파일은 제외되었습니다."/>');
            return false;
        } else {
            return true;
        }
    }

    /* 첨부파일 삭제 */
    function deleteFile(num) {
        document.querySelector("#file" + num).remove();
        filesArr[num].is_delete = true;
    }


    //입력한 자동등록방지 숫자 체크
    function chkCaptchaNum(){
        var option = {
            type : 'GET'
            , url : '/chkCaptcha'
        }
        return ajaxRestCall(option);
    }

    function captchaReload(){
        $('#captchaImg').attr('src','/captchaImg?'+Math.random());
    }

    //유효성 검증
    function checkValid(){
        //실명
        if($('input[name="type"]:checked').val() == 'real'){
            //이름
            if(isEmpty($('#name').val())){
                alert('성명을 입력해주세요');
                validToggle($('#name'), false, true);
                $('#name').focus();
                return false;
            }else if(!textValidation.checkOnlyKoOrEn($('#name').val())){
                alert('성명을 알맞게 입력해주세요');
                validToggle($('#name'), false, false);
                $('#name').focus();
                return false;
            }else{
                validToggle($('#name'), true, true);
            }

            //연락처
            if(isEmpty($('#phone').val())){
                alert('연락처를 입력해주세요');
                validToggle($('#phone'), false, true);
                $('#phone').focus();
                return false;
            }else if(!textValidation.checkOnlyNumber($('#phone').val())){
                alert('숫자만 입력해주세요');
                validToggle($('#phone'), false, false);
                $('#phone').focus();
                return false;
            }else{
                validToggle($('#phone'), true, true);
            }

            //이메일
            if(isEmpty($('#email').val())){
                alert('이메일을 입력해주세요');
                validToggle($('#email'), false, true);
                $('#email').focus();
                return false;
            }else if(!textValidation.checkEmail($('#email').val())){
                alert('이메일을 알맞게 입력해주세요');
                validToggle($('#email'), false, false);
                $('#email').focus();
                return false;
            }else{
                validToggle($('#email'), true, true);
            }
        }

        //비밀번호
        if(isEmpty($('#password1').val())){
            alert('패스워드를 입력해주세요');
            validToggle($('#password1'), false, true);
            $('#password1').focus();
            return false;
        }else if(!textValidation.checkPasswordRule($('#password1').val())){
            alert('영문, 숫자, 특수 문자를 포함하여 8~ 12자 이하로 입력해주세요.');
            validToggle($('#password1'), false, false);
            $('#password1').focus();
            return false;
        }else if($('#password1').val() != $('#password2').val()){
            alert('등록한 비밀번호와 일치하지않습니다.');
            validToggle($('#password2'), false, false);
            $('#password2').focus();
            return false;
        }else{
            validToggle($('#password1'), true, true);
            validToggle($('#password2'), true, true);
        }

        //제목
        if(isEmpty($('#title').val())){
            alert('제목을 입력해주세요');
            validToggle($('#title'), false, false);
            $('#title').focus();
            return false;
        }else{
            validToggle($('#title'), true, true);
        }

        //제보내용
        if(isEmpty($('#reportMemo').val())){
            alert('제보 내용을 입력해주세요');
            $('#reportMemo').parent('.textarea-type').addClass('invalid');
            $('#reportMemo').parent('.textarea-type').removeClass('valid');
            $('#reportMemo').parent('.textarea-type').find('span.msg').hide();
            $('#reportMemo').focus;
            return false;
        }else{
            $('#reportMemo').parent('.textarea-type').addClass('valid');
            $('#reportMemo').parent('.textarea-type').removeClass('invalid');
        }

        if($('input[name="type"]:checked').val() == 'real'){
            //개인정보 수집 체크
            if (!$('#personalInfo').is(":checked")) {
                alert('개인정보 수집 및 이용에 동의해주세요');
                $('#personalInfo').parent('.check-box').removeClass('valid');
                $('#personalInfo').parent('.check-box').addClass('invalid');
                $('#personalInfo').parent('.check-box').find('.msg').show();
                return false;
            } else {
                $('#personalInfo').parent('.check-box').removeClass('invalid');
                $('#personalInfo').parent('.check-box').addClass('valid');
                $('#personalInfo').parent('.check-box').find('.msg').hide();
            }
        }
        return true;
    }

    function checkValidEn(){
        //실명
        if($('input[name="type"]:checked').val() == 'real'){
            //이름
            if(isEmpty($('#name').val())){
                alert('Enter your name');
                validToggle($('#name'), false, true);
                $('#name').focus();
                return false;
            }else if(!textValidation.checkOnlyKoOrEn($('#name').val())){
                alert('Please enter your name correctly');
                validToggle($('#name'), false, false);
                $('#name').focus();
                return false;
            }else{
                validToggle($('#name'), true, true);
            }

            //연락처
            if(isEmpty($('#phone').val())){
                alert('Please enter your contact information');
                validToggle($('#phone'), false, true);
                $('#phone').focus();
                return false;
            }else if(!textValidation.checkOnlyNumber($('#phone').val())){
                alert('Please enter numbers only.');
                validToggle($('#phone'), false, false);
                $('#phone').focus();
                return false;
            }else{
                validToggle($('#phone'), true, true);
            }

            //이메일
            if(isEmpty($('#email').val())){
                alert('Enter your E-mail');
                validToggle($('#email'), false, true);
                $('#email').focus();
                return false;
            }else if(!textValidation.checkEmail($('#email').val())){
                alert('Please enter a valid email address to use.');
                validToggle($('#email'), false, false);
                $('#email').focus();
                return false;
            }else{
                validToggle($('#email'), true, true);
            }
        }

        //비밀번호
        if(isEmpty($('#password1').val())){
            alert('Please enter your password.');
            validToggle($('#password1'), false, true);
            $('#password1').focus();
            return false;
        }else if(!textValidation.checkPasswordRule($('#password1').val())){
            alert('Please enter 8-12 characters or less, including English, numbers, and special characters.');
            validToggle($('#password1'), false, false);
            $('#password1').focus();
            return false;
        }else if($('#password1').val() != $('#password2').val()){
            alert('Those passwords didn’t match.');
            validToggle($('#password2'), false, false);
            $('#password2').focus();
            return false;
        }else{
            validToggle($('#password1'), true, true);
            validToggle($('#password2'), true, true);
        }

        //제목
        if(isEmpty($('#title').val())){
            alert('Please enter the subject.');
            validToggle($('#title'), false, false);
            $('#title').focus();
            return false;
        }else{
            validToggle($('#title'), true, true);
        }

        //제보내용
        if(isEmpty($('#reportMemo').val())){
            alert('Please enter the content of your report.');
            $('#reportMemo').parent('.textarea-type').addClass('invalid');
            $('#reportMemo').parent('.textarea-type').removeClass('valid');
            $('#reportMemo').parent('.textarea-type').find('span.msg').hide();
            $('#reportMemo').focus;
            return false;
        }else{
            $('#reportMemo').parent('.textarea-type').addClass('valid');
            $('#reportMemo').parent('.textarea-type').removeClass('invalid');
        }

        if($('input[name="type"]:checked').val() == 'real'){
            //개인정보 수집 체크
            if (!$('#personalInfo').is(":checked")) {
                alert('Please agree to the collection and use of personal information.');
                $('#personalInfo').parent('.check-box').removeClass('valid');
                $('#personalInfo').parent('.check-box').addClass('invalid');
                $('#personalInfo').parent('.check-box').find('.msg').show();
                return false;
            } else {
                $('#personalInfo').parent('.check-box').removeClass('invalid');
                $('#personalInfo').parent('.check-box').addClass('valid');
                $('#personalInfo').parent('.check-box').find('.msg').hide();
            }
        }
        return true;
    }



    //checkValid함수에서의 obj에 해당하는 ui처리
    function validToggle(obj,bool,isEmpty){
        if(!bool){
            obj.parent('.input-type').removeClass('valid');
            obj.parent('.input-type').addClass('invalid');

            if(!isEmpty){
                obj.next('.msg').show();
            } else {
                obj.next('.msg').hide();
            }
        }else{
            obj.parent('.input-type').removeClass('invalid');
            obj.parent('.input-type').addClass('valid');
            obj.next('.msg').hide();
        }
    }

</script>





