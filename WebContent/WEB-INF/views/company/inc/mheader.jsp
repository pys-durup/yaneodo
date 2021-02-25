<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="cheaderContainer">
	<nav id="rightmenu">
		<div id="logo">yaneoDO</div>
		<ul>
			<!-- 기업관리자 로그인 전 -->
			<c:if test="${empty email}">
			<li><a class="bmenuLink" id="bLoginBtn">채용담당자 로그인</a></li>
			<li><a class="bmenuLink" id="bJoinBtn">관리자 가입</a></li>
			</c:if>
			
			<!-- 기업관리자 로그인 후 -->
<<<<<<< HEAD:WebContent/WEB-INF/views/company/inc/regHeader.jsp
			<li><a href="/yaneodo/company/main/register.do" class="bmenuLink"
=======
			<c:if test="${not empty email}">
			<li><a href="company_register.html" class="bmenuLink"
>>>>>>> dev:WebContent/WEB-INF/views/company/inc/mheader.jsp
				id="regCompany">기업등록</a></li>
			</c:if>

<<<<<<< HEAD:WebContent/WEB-INF/views/company/inc/regHeader.jsp


			<li><a href="/yaneodo/index.do" class="bmenuLink" id="home">야너도 홈</a></li>
=======
			<!-- 공통 -->
			<li><a href="main.html" class="bmenuLink" id="home">야너도 홈</a></li>
>>>>>>> dev:WebContent/WEB-INF/views/company/inc/mheader.jsp
			<div style="clear: both;"></div>
		</ul>
	</nav>
</div>