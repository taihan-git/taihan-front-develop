<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<!--content-->
<section id="content" class="sub-wrap ir">

    <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/news/visual_ir_01.jpg?v4)">
        <div class="sub-title">
            <h2 class="title-type">IR</h2>
        </div>
    </div>

    <%-- GNB --%>
    <jsp:include page="../../_decorators/inc/gnb.jsp" />

    <div id="container" class="content-wrap" id="contentWrapList">
        <div class="title-wrap">
            <h3 class="title-type">공시·공고</h3>
            <p><span>공시정보, 공시관리규정 및</span> <span>IR관련 공고를 제공합니다.</span></p>
        </div>
        <!-- tab -->
        <div class="tab-wrap">
            <ul class="tab-type col2">
                <li data-type="notice1" class="active"><a href="javascript:void(0)"><span>공시</span></a></li>
                <li data-type="notice2"><a href="javascript:void(0)"><span>공고</span></a></li>
            </ul>
        </div>
        <!-- //tab -->

        <!-- 공시(s) -->
        <div class="content-box" id="noticeBox1">
            <div class="inner-box">
                <div class="iframe-wrap">
                    <iframe src="https://dart.fss.or.kr/html/search/SearchCompanyIR3_M.html?textCrpNM=001440" width="1000" height="920px" frameborder="0" topmargin="0" leftmargin="0" scrolling="no" style="margin-top:-40px;"></iframe>
                </div>
                <div class="btn-wrap t-c">
                    <a href="#" class="btn-type btn-m">공시정보관리규정 보기</a>
                </div>
            </div>
        </div>
        <!-- 공시(e) -->

        <!-- 공고(s) -->
        <form id="frm" name="frm" method="get" onsubmit="return false">
        <input type="hidden" name="pageNo" value="1" id="pageNo"/>
        <div class="content-box" id="noticeBox2" style="display: none;">
            <div class="inner-box">
                <div class="board-wrap">
                    <div class="board-top">
                        <!-- search -->
                        <div class="search-box?v4">
                            <div class="select-type">
                                <select name="schField">
                                    <option data-display="제목" value="TITLE">제목</option>
                                    <option value="CONTENT">내용</option>
                                </select>
                            </div>
                            <div class="search-form">
                                <input type="text" class="input-type" placeholder="검색어를 입력하세요." name="schKey" id="schKey">
                                <button class="btn-clear"><i class="ico-clear"><span class="hidden">검색어지우기</span></i></button>
                                <button type="submit" class="btn-search" onclick="generateNoticeList();"><i class="ico-srch"><span class="hidden">검색</span></i></button>
                            </div>
                        </div>
                        <!-- //search -->
                    </div>

                    <div class="board-body">
                        <ul class="list-board" id="noticeList">
                           <%-- 공고 AJAX --%>
                        </ul>
                    </div>

                    <!-- paging -->
                    <div class="paging-wrap" id="pagingBody"></div>
                    <!-- //paging -->
                </div>
            </div>
        </div>
        </form>
        <!-- 공고(e) -->
    </div>

    <div id="container" class="content-wrap" id="contentWrapDetl" style="display:none;">
            <%-- 공고 디테일 AJax --%>
    </div>
</section>



<script>
    $(document).ready(function () {
        //gnb세팅
        setTimeout(function () {
            setmenu( 3, '040103')
        }, 100);

        $('.tab-wrap li a ').click(function(){
            $(this).parent().addClass('active');
            $(this).parent().siblings().removeClass('active');

            let type = $(this).parent().data('type');

            if(type == 'notice1'){ //공시
                $('#noticeBox1').show();
                $('#noticeBox2').hide();
            }else{ //공고
                $('#noticeBox2').show();
                $('#noticeBox1').hide();
                goPage(1);
            }
        })

        $('#schKey').on('keydown',function(e){
            if(e.keyCode == 13){
                e.preventDefault();
                goPage(1);
            }
        })
    })

    /**
     * 공고 템플릿 생성
     */
    function generateNoticeList(){
        var url = lang == 'ko' ?  "/news/ir/notice-list" : "/en/news/ir/notice-list";
        var option = {
            type: "GET",
            url : url,
            data : $('#frm').serialize()
        };

        ajaxRestCall(option).then(function(res) {
            if(res.code == '00'){
                let data = res.data;

                if(data.totalCount > 0){
                    let noticeListTml = $.templates('#noticeListTmpl');
                    let pagingTml = $.templates('#pagingTmpl');
                    $('#noticeList').html(noticeListTml.render(data.list));
                    $('#pagingBody').html(pagingTml.render(data.navi));
                }else{
                    if(isEmpty($('#schKey').val())){
                        $('#noticeBox2').html($.templates('#noDataTmpl'));
                    }else{
                        $('#noticeList').html($.templates('#noSchDataTmpl').render({schKey : $('#schKey').val()}));
                        $('#pagingBody').empty();
                    }
                }
            }
        });
    }

    function goDetail(idx){
        $('#contentWrapList').hide();
        $('#contentWrapDetl').show();

        let schFieldVal = $("select[name='schField']").parent().find('ul').find('.selected').data('value');

        var url = lang == 'ko' ?  "/news/ir/notice-detl" : "/en/news/ir/notice-detl";
        var option = {
            type: "GET",
            url : url,
            data : {
                idx : idx,
                schField : schFieldVal,
                schKey : $('#schKey').val()
            }
        };

        ajaxRestCall(option).then(function(res){
            if(res.code == '00'){
                let data = res.data;
                let noticeDetlTmpl = $.templates('#noticeDetlTmpl');
                $('#contentWrapDetl').html(noticeDetlTmpl.render(data));
            }
        })

        //글 제목 focus
        $("#boardTitle").attr("tabindex", -1).focus();
    }

    function goPage(no){
        if (no == '#'){
            return;
        }else if (!isEmpty(no)) {
            $('#pageNo').val(no);
        }
        generateNoticeList();
    }

    function viewList(){
        $('#contentWrapList').show();
        $('#contentWrapDetl').hide();
    }
</script>

<script id="noticeListTmpl" type="text/x-jsrender">
{{for}}
<li>
    <a href="javascript:void(0);" class="list-item">
        <span class="date">{{:regDt}}</span>
        <strong class="title" onClick="goDetail({{:idx}})">{{:title}}</strong>
    </a>
    <a href="/download?fileName={{:sysFile}}&orgFileName={{:orgFile}}" class="btn-type download-type"><span>다운로드</span><i class="ico-down"></i></a>
</li>
{{/for}}
</script>

<script id="pagingTmpl" type="text/x-jsrender">
{{:firstPage}}
{{:prevBlock}}
{{:pageList}}
{{:nextBlock}}
{{:lastPage}}
</script>

<script id="noDataTmpl" type="text/x-jsrender">
<div class="board-wrap">
    <div class="board-body">
        <div class="nodata-box">
            <i class="ico-exclam"></i>
            <p>등록된 게시물이 없습니다.</p>
        </div>
    </div>
</div>
</script>

<script id="noSchDataTmpl" type="text/x-jsrender">
<div class="board-body">
    <div class="nodata-box?v4">
        <p><strong>"{{:schKey}}"</strong> 검색결과가 없습니다.</p>
    </div>
</div>
</script>

<script id="noticeDetlTmpl" type="text/x-jsrender">
<div class="inner-box">
    <div class="board-wrap">
        <div class="board-top">
            <div class="board-title" id="boardTitle">
                <span class="date">{{:nowBoard.regDt}}</span>
                <h3 class="title">{{:nowBoard.title}}</h3>
            </div>
        </div>
        <div class="board-body">
            <div class="board-detail">
                <div class="editor-box">{{:nowBoard.content}}</div>
            </div>
            {{if !~isEmpty(nowBoard.sysFile)}}
            <div class="file-box">
                <dl>
                    <dt>첨부파일</dt>
                    <dd>{{:nowBoard.orgFile}}</dd>
                </dl>
                <a href="/download?fileName={{:nowBoard.sysFile}}&orgFileName={{:nowBoard.orgFile}}" class="btn"><span>다운로드</span><i class="ico-down"></i></a>
            </div>
            {{/if}}
        </div>
        <div class="board-bottom">
            {{if !~isEmpty(beforeBoard)}}
            <a href="javascript:void(0);" class="page-prev" onClick="goDetail({{:beforeBoard.idx}})">
                <span class="btn"><i class="ico-arr up"></i>PREV</span>
                <strong class="title">{{:beforeBoard.title}}</strong>
                <span class="date">{{:beforeBoard.regDt}}</span>
            </a>
            {{/if}}
            {{if !~isEmpty(afterBoard)}}
            <a href="javascript:void(0);" class="page-next" onClick="goDetail({{:afterBoard.idx}})">
                <span class="btn"><i class="ico-arr"></i>NEXT</span>
                <strong class="title">{{:afterBoard.title}}</strong>
                <span class="date">{{:afterBoard.regDt}}</span>
            </a>
            {{/if}}
        </div>
    </div>
    <div class="btn-wrap t-c">
        <a href="javascript:void(0);" class="btn-type" onClick="viewList();">목록으로</a>
    </div>
</div>
</script>