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

	<form method="POST" action="/yaneodo/company/main/join.do" id="form1">
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
					<input type="text" id="managerName" name="managerName"
						placeholder="담당자 성함" required>
				</div>

				<div id="box">
					<div class="subbox">
						<input type="text" id="managerPhone" name="managerPhone"
							placeholder="연락처" required>
					</div>

					<hr>

					<div class="subbox">
						<input type="text" id="email" name="email"
							placeholder="회사 이메일(로그인 아이디로 사용됩니다.)" required>
					</div>

					<div class="subbox">
						<input type="password" id="password" name="password"
							placeholder="6자리 이상 비밀번호" required>
					</div>


					<div class="form-check box" style="margin-left: 16px">
						<input type="checkbox" class="form-check-input" id="agree"
							name="agree" value="checked"> 개인정보 수집 및 이용 동의(필수) <a><small>자세히</small></a>
					</div>
					
					
					<div>
						<input type="submit" class="subbox" id="bJoinBtn2" value="회원가입">
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

		/* 입력한 정보 유효성 검사 */
		$("#form1").submit(function(evt) {
			
			var managerName = $("#managerName").val().trim();
			
			//이름, 닉네임 길이 확인
			if (name.length < 2 || name.length > 5) {
				alert("이름은 2자 이상 5자 이내로 입력해주세요.");
				$("#managerName").focus();
				evt.preventDefault();
				return false;
			}           
	
			for (var i = 0; i < name.length; i++) {
				if (name.charAt(i) < '가' || name.charAt(i) > '힣') {
					alert("이름은 한글로 입력해주세요.");
					$("#managerName").focus();
					evt.preventDefault();
					return false;
				}			
			}
		
			//휴대폰 번호
			if ($("#managerPhone").val().trim().replace(/-/gi, "").length > 11) {
				alert("휴대폰 번호는 '-' 제외 11자 이내로 입력해주세요.");
				$("#managerPhone").focus();
				evt.preventDefault();
				return false;
			}
			
	
			if ($("#password").val().trim().length < 6) {
				alert("비밀번호는 6자 이상 입력해주세요.");
				$("#password").focus();
				evt.preventDefault();
				return false;
			}

			
			console.log($("#agree").prop('checked'));
			
			if (!$("#agree").prop('checked')) {
				alert("개인정보 수집 및 이용에 동의해주세요.");
				evt.preventDefault();
				return false;
			}
	
		});
	
	
	
	</script>
</body>
</html>