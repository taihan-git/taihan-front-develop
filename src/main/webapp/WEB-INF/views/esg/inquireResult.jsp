<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>


<!--content-->
<section id="content" class="sub-wrap esg-newspaper">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/esg/visual_esg_07.jpg?v4)">
        <div class="sub-title">
            <h2 class="title-type">사이버 신문고</h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="/WEB-INF/views/_decorators/inc/gnb.jsp" />


    <div id="container" class="content-wrap">

        <div class="content-box">
            <div class="inner-box">

                <div class="title-wrap v2">
                    <strong class="title-type">
                        <c:if test="${item.status eq 'idle'}">
                        <span>제보가 정상적으로 </span>
                        <span><span class="focus2">접수</span>되었습니다.</span>
                        </c:if>
                        <c:if test="${item.status eq 'complete'}">
                            <span>제보에 대한 답변이 </span>
                            <span><span class="focus2">완료</span>되었습니다.</span>
                        </c:if>
                    </strong>
                </div>

                <div class="table-wrap">
                    <div class="title-wrap3">
                        <h3 class="title-type">제보자 정보</h3>
                    </div>
                    <table class="table-type v3">
                        <colgroup>
                            <col style="width:20%;">
                            <col>
                            <col style="width:20%;">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col" class="t-l bg">접수번호</th>
                            <td class="t-l">${item.registNum}</td>
                            <th scope="col" class="t-l bg">구분</th>
                            <td class="t-l">
                                ${item.gubun eq 'em' ? '윤리경영' : '공정거래'}
                            </td>
                        </tr>

                        <c:if test="${item.type eq 'real'}">
                        <tr>
                            <th scope="col" class="t-l bg">이름</th>
                            <td class="t-l" colspan="3">${item.name}</td>
                        </tr>
                        <tr>
                            <th scope="col" class="t-l bg">연락처</th>
                            <td class="t-l" colspan="3">${item.phone}</td>
                        </tr>
                        <tr>
                            <th scope="col" class="t-l bg">이메일</th>
                            <td class="t-l" colspan="3">${item.email}</td>
                        </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>

                <div class="table-wrap">
                    <div class="title-wrap3">
                        <h3 class="title-type">제보내용</h3>
                    </div>
                    <table class="table-type v3">
                        <colgroup>
                            <col style="width:30%;">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col" class="t-l bg">제목</th>
                            <td class="t-l">${item.title}</td>
                        </tr>
                        <tr>
                            <th scope="col" class="t-l bg">제보내용</th>
                            <td class="t-l">
                                ${cmnUtils:unescapeXml(item.reportMemo)}
                            </td>
                        </tr>
                        <tr>
                            <th scope="col" class="t-l bg">파일첨부</th>
                            <td class="t-l">

                                <c:if test="${not empty item.inquiryFiles}">
                                <c:forEach var="item" items="${item.inquiryFiles}">
                                    ${item.orgFile} <br />
                                </c:forEach>
                                </c:if>

                                <c:if test="${empty item.inquiryFiles}">
                                    -
                                </c:if>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="table-wrap">
                    <div class="title-wrap3">
                        <h3 class="title-type">담당자 답변</h3>
                    </div>
                    <table class="table-type v3">
                        <colgroup>
                            <col style="width:30%;">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="col" class="t-l bg">상태</th>
                            <td class="t-l">
                                <span class="focus">
                                    ${item.status eq 'complete' ? '답변완료' : '답변대기'}
                                </span>
                                <!-- <span class="focus">답변대기</span> -->
                            </td>
                        </tr>
                        <tr>
                            <th scope="col" class="t-l bg">답변 내용</th>
                            <td class="t-l">
                                ${cmnUtils:unescapeXml(item.responMemo)}
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="btn-wrap t-c">
                    <a href="/esg/cyberReport" class="btn-type btn-l v2">확인</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--//content-->

<script>
    $(document).ready(function(){
        //gnb세팅
        setTimeout(function() {
            setmenu( 2, '0307');
        },100);
    })
</script>





