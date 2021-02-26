<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<%@include file="/WEB-INF/views/member/inc/asset.jsp"%>

<link rel="stylesheet" href="/yaneodo/css/company/main/main.css">
<link rel="stylesheet" href="/yaneodo/css/company/main/header.css">
<link rel="stylesheet" href="/yaneodo/css/company/main/register.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>


<style>
</style>
</head>
<body>

	<!-- ########## 상단 헤더 시작 -->
	<%@include file="/WEB-INF/views/company/inc/regHeader.jsp"%>
	<!-- ########## 상단 헤더 끝 -->

	<form method="POST" action="/yaneodo/company/main/registerok.do" enctype="multipart/form-data" id="companyJoin">
		<div class="box" id="title">
			<p>회사 정보를 등록해 주세요.</p>
			<p>야너도는 추천인/후보자들에게 좋은 일자리를 제공하기 위해, 다음 정보를 리뷰하여 회사등록을 승인하고 있습니다.</p>
		</div>
		<div class="subbox" style="width: 750px;">
			<label for="inputAddress">회사이름*</label> <input type="text"
				class="form-control" id="name" name="name" placeholder="회사 이름"
				required>
		</div>

		<div class="box">
			<div class="withFloat subbox" style="width: 350px;">
				<label for="inputState">국가*</label> <select class="form-control"
					id="country" name="country">
					<option selected>한국</option>
					<option disabled>대만</option>
					<option>싱가폴</option>
					<option>일본</option>
					<option>홍콩</option>
					<option>기타</option>
				</select>
			</div>
			<div class="withFloat subbox" style="width: 350px;">
				<label for="inputState">지역*</label> <select class="form-control"
					id="region" name="region">
					<option selected>서울</option>
					<option>부산</option>
					<option>대구</option>
					<option>인천</option>
					<option>광주</option>
					<option>대전</option>
					<option>울산</option>
					<option>세종</option>
					<option>경기</option>
					<option>강원</option>
					<option>충북</option>
					<option>충남</option>
					<option>전북</option>
					<option>전남</option>
					<option>경북</option>
					<option>경남</option>
					<option>제주</option>
				</select>
			</div>
		</div>


		<div class="subbox" style="width: 750px;">
			<label for="address">대표 주소*</label> <input type="text"
				class="form-control" id="address" name="address"
				placeholder="대표 주소 입력" required>
		</div>


		<div class="box">
			<div class="withFloat subbox" style="width: 350px;">
				<label for="regNum">사업자 등록 번호*</label> <input type="text"
					class="form-control" id="regNum" name="regNum"
					placeholder="'-'제외 10자리" required>
			</div>
			<div class="withFloat subbox" style="width: 350px;">
				<label for="sales">매출액/투자금액*(승인기준: 매출액/투자유치 5억원 이상)*</label> <input
					type="text" class="form-control" id="sales" name="sales"
					placeholder="매출액 / 투자금액 입력 (단위: 억원)" required>
			</div>
		</div>


		<div class="box">
			<div class="withFloat subbox" style="width: 350px;">
				<label for="industry">산업군*</label> <select class="form-control"
					id="industry" name="industry">
					<option selected>IT/컨텐츠</option>
				</select>
			</div>
			
			<div class="withFloat subbox" style="width: 350px;">
				<label for="employeeNum">직원수(승인기준: 팀원 10명 이상)*</label> 
				<input type="text" class="form-control" id="employeeNum" name="employeeNum" required>
			</div>
		</div>


		<div class="subbox" style="width: 750px;">
			<label for="introduction">회사/서비스 소개 (1,300자 제한)*</label>
			<textarea class="form-control" id="introduction" name="introduction"
				style="height: 200px; resize: none;" placeholder="회사 정보 입력" required></textarea>
		</div>                  


		<div class="box">
			<div class="withFloat subbox" style="width: 350px;">
				<label for="establishment">설립연도*</label> <select
					class="form-control" id="establishment" name="establishment">
					<option selected>ex)2012년</option>
				</select>
			</div>
			<div class="withFloat subbox" style="width: 350px;">
				<label for="email">정보수신 이메일*</label> <input type="text"
					class="form-control" id="email" name="email" required>
			</div>
		</div>


		<div class="box">
			<div class="withFloat subbox" style="width: 350px;">
				<label for="webAddress">웹사이트 주소*</label> <input type="text"
					class="form-control" id="webAddress" name="webAddress" required>
			</div>
	
			<div class="withFloat subbox" style="width: 350px; backgound: transparent; border: none; padding:7px, 10px;">
				<label for="photo">대표사진</label>
				<input type="file" id="photo" name="photo" placeholder="Picture" class="form-control">
			</div>
		</div>

		<div class="subbox" style="width: 750px;">
			<label for="terms">기업회원 이용약관</label>
			<textarea class="form-control" id="terms"
				style="height: 200px; resize: none; overflow-y: scroll;">제 1 조 (목적)
                본 약관은 주식회사 원티드랩 (이하 "회사")이 운영하는 "서비스"를 이용함에 있어 "회사"와 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.
                
                제 2 조 (용어의 정의)
                이 약관에서 사용하는 용어의 정의는 아래와 같다.
                1. "사이트"라 함은 회사가 서비스를 "회원"에게 제공하기 위하여 컴퓨터 등 정보 통신 설비를 이용하여 설정한 가상의 영업장 또는 회사가 운영하는 아래 웹사이트를 말한다.</textarea>
		</div>

		<hr>


		<div class="form-check subbox">
			<input class="form-check-input" type="checkbox" id="checked"
				name="checked" value="checked"> 이용약관 및 야나도 기업회원 가입에 동의합니다.
			<button type="submit" class="btn btn-primary" id="submit">제출하기</button>
		</div>


	</form>




	<script>
		
	    var establishment = document.getElementById("establishment");
	
	    for (var i = 1900; i <= 2021; i++) {
	        var op = new Option();
	        op.value = i;
	        op.text = i + "년";
	        establishment.options.add(op);
	    }
	    
	    
	    /* 입력한 정보 유효성 검사 */
		$("#companyJoin").submit(function(evt) {

			if ($("#name").length > 5) {
				alert("기업명은 15자 이내로 입력해주세요.");
				$("#managerName").focus();
				evt.preventDefault();
				return false;
			}           
	
			
			if ($("#address").length > 30) {
				alert("주소는 30자 이내로 입력해주세요.");
				$("#address").focus();
				evt.preventDefault();
				return false;		
			}
		

			if ($("#regNum").val().trim().replace(/-/gi, "").length > 10) {
				alert("사업자 등록 번호는 '-' 제외 10자입니다.");
				$("#regNum").focus();
				evt.preventDefault();
				return false;
			}
			
	
			if ($("#introduction").val().length > 1300) {
				alert("회사/서비스소개는 1300자 이내로 입력해주세요.");
				$("#introduction").focus();
				evt.preventDefault();
				return false;
			}
			
			
			if ($("#webAddress").val().length > 50) {
				alert("웹사이트 주소는 50자 이내로 입력해주세요.");
				$("#webAddress").focus();
				evt.preventDefault();
				return false;
			}
	
			if (!$("#checked").prop('checked')) {
				alert("이용약관 및 야나도 기업회원 가입에 동의해주세요.");
				evt.preventDefault();
				return false;
			}
	
		});
	    

    
	</script>
</body>
</html>