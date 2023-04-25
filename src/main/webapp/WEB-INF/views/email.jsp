<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:directive.include file="/WEB-INF/views/common/taglib.jsp"/>
<style>
		.link-select:after {
			content: none;
		}
	</style>
	
    <!--content-->
        <section id="content" class="sub-wrap customer">

            <c:if test="${LANG eq 'ko'}">
            <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/etc/visual_privacy.jpg)">
                <div class="sub-title">
                    <h2 class="title-type">이메일 무단 수집거부</h2>
                </div>
            </div>
           <div class="sub-nav">
				<div class="inner-box">
					<a href="${LANG eq 'ko' ? '/' :'/en'}" class="btn-home"><i class="ico-home"><span class="hidden">메인으로</span></i></a>
					<div class="link-select">
						<a href="#" class="current">이메일 무단 수집거부</a>
					</div>
				</div>
			</div>
           <div id="container" class="content-wrap">
                <div class="content-box">
                    <div class="inner-box">
                        <!-- 2022-10-13 -->
                        <div class="title-wrap">
                            <h3 class="title-type">이메일 무단 수집거부</h3>
                            <p> 본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나
                                그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며,<br>
                                이를 위반 시 정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.</p>
                        </div>
                        <!-- //2022-10-13 -->
                    </div>
                </div>
            </div>
            </c:if>

            <c:if test="${LANG eq 'en'}">
                <div class="sub-visual" style="background-image: url(${CON_STATIC_URL}/asset/images/etc/visual_privacy.jpg)">
                    <div class="sub-title">
                        <h2 class="title-type">How To Refuse Random Email Collection</h2>
                    </div>
                </div>
                <div class="sub-nav">
                    <div class="inner-box">
                        <a href="${LANG eq 'ko' ? '/' :'/en'}" class="btn-home"><i class="ico-home"><span class="hidden">메인으로</span></i></a>
                        <div class="link-select">
                            <a href="#" class="current">How To Refuse Random Email Collection</a>
                        </div>
                    </div>
                </div>
                <div id="container" class="content-wrap">
                    <div class="content-box">
                        <div class="inner-box">
                            <!-- 2022-10-13 -->
                            <div class="title-wrap">
                                <h3 class="title-type">How To Refuse Random Email Collection</h3>
                                <p> We reject any automatic collection of e-mail addresses on this website.<br>
                                    Please note that anyone violating this can be punished in accordance with the information and communication network laws.</p>
                            </div>
                            <!-- //2022-10-13 -->
                        </div>
                    </div>
                </div>
            </c:if>
        </section>
        <!--//content-->
<script>
    
</script>





