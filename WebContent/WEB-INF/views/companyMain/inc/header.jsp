<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="cheaderContainer">
	<nav id="rightmenu">
		<div id="logo">yaneoDO</div>
		<ul>
			<!-- 기업관리자 로그인 전 -->
			<li><a class="bmenuLink" id="bLoginBtn">채용담당자 로그인</a></li>
			<li><a class="bmenuLink" id="bJoinBtn">관리자 가입</a></li>

			<!-- 기업관리자 로그인 후 -->
			<li><a href="company_register.html" class="bmenuLink"
				id="regCompany">기업등록</a></li>



			<li><a href="main.html" class="bmenuLink" id="home">야너도 홈</a></li>
			<div style="clear: both;"></div>
		</ul>
	</nav>
</div>