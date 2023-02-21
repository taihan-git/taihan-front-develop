<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>

<style>
    .board-wrap{
        margin-top: 80px;
    }
</style>


<c:if test="${LANG eq 'ko'}">
<div class="tab-wrap fixed" id="tapWrap">
    <ul class="tab-type">
        <li class=""><a href="/customer/corPromotion"><span>기업 홍보물</span></a></li>
        <li><a href="/customer/catalogue"><span>카탈로그·지명원</span></a></li>
        <li><a href="/customer/certData"><span>인증서</span></a></li>
        <li><a href="/customer/esgRelation"><span>ESG</span></a></li>
        <li><a href="/customer/irRelation"><span>IR</span></a></li>
    </ul>
</div>
</c:if>

<c:if test="${LANG eq 'en'}">
    <div class="tab-wrap fixed" id="tapWrap">
        <ul class="tab-type">
            <li class=""><a href="/en/customer/corPromotion"><span>Corporate Materials</span></a></li>
            <li><a href="/en/customer/catalogue"><span>Catalog</span></a></li>
            <li><a href="/en/customer/certData"><span>Certification</span></a></li>
            <li><a href="/en/customer/esgRelation"><span>ESG</span></a></li>
            <li><a href="/en/customer/irRelation"><span>IR</span></a></li>
        </ul>
    </div>
</c:if>

<script>
    $(document).ready(function(){
        let path = location.pathname;
        if(path.indexOf("/corPromotion") > -1) {
            $('#tapWrap ul').children().eq(0).addClass('active');
        }
        else if(path.indexOf("/catalogue") > -1){
            $('#tapWrap ul').children().eq(1).addClass('active');
        }
        else if(path.indexOf("/certData") > -1){
            $('#tapWrap ul').children().eq(2).addClass('active');
        }
        else if(path.indexOf("/esgRelation") > -1){
            $('#tapWrap ul').children().eq(3).addClass('active');
        }
        else if(path.indexOf("/irRelation") > -1){
            $('#tapWrap ul').children().eq(4).addClass('active');
        }
    })
</script>




