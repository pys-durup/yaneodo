<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/member/inc/asset.jsp"%>

<style>

</style>
</head>
<body>
	
	<!-- 관리자 가입 시작 -->

	<form method="POST" action="/yaneodo/company/main/registerok.do" enctype="multipart/form-data" id="form1">
		<div id="bJoin">
			<div id="subbox">
				<div id="title">관리자 계정 만들기</div>
				<div class="glyphicon glyphicon-remove" id="bJoinClose"
					style="color: gray; float: left;"></div>
				<div style="clear: both;"></div>
			</div>

			<hr>

			<div id="box">
				<div class="subbox">
					<input type="txt" id="managerName" name="managerName"
						placeholder="담당자 성함" required>
				</div>

				<div id="box">
					<div class="subbox">
						<input type="txt" id="managerPhone" name="managerPhone"
							placeholder="연락처" required>
					</div>

					<hr>

					<div class="subbox">
						<input type="txt" id="email" name="email"
							placeholder="회사 이메일(로그인 아이디로 사용됩니다.)" required>
					</div>

					<div class="subbox">
						<input type="password" id="password" name="password"
							placeholder="6자리 이상 비밀번호" required>
					</div>


					<div>
						<input type="submit" class="subbox" id="bJoinBtn2" value="로그인">
					</div>
					<div id="subTitle">
						계정이 있으신가요? <a id="toBlogin"
							style="text-decoration: none; cursor: pointer;">관리자 로그인</a>
					</div>

				</div>
			</div>
		</div>
	</form>
	<!-- 관리자 가입 끝 -->

	<script>
	

	</script>
</body>
</html>