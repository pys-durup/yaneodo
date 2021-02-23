<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/member/inc/asset.jsp" %>
<!-- 적용CSS -->
<link rel="stylesheet" href="/yaneodo/css/member/member-main.css">
<link rel="stylesheet" href="/yaneodo/css/member/member-menu.css">
<style>

</style>
</head>
<body>

<%@include file="/WEB-INF/views/member/inc/header.jsp" %>
 <section class="container" > 
        <div class="title">프로필</div>
        <div id="customerInfo" style="height: 610px;">
            <div id="customer">
                <dl id="info">
  					<label for="customerPhoto" type="button" style="margin-top: -50px; margin-bottom: -30px;"> 
                            <div class="photoPic"" style="background-image: url('/yaneodo/images/member/man_01.png')">
                            	<div id="cameraIcon"> 
                                    <span class="glyphicon glyphicon-camera" style="margin-top: 5px;"></span>
                                </div>
                            </div>
                        </label>
                            <input type="file" id="customerPhoto" style="display: none;">
                           
                        <dt id="name">홍길동</dt>
                        <dd id="eamil">jhs9214@gmail.com</dd>
                        <dd id="tel">010-9388-9048</dd>
                    </dl>
                    <span class="edit">
                        <a class="editSel" href="/yaneodo/member/myyaneodo/myyaneodo.do">기본정보 수정</a>
                    </span>
                </div>
                
                <div class="secondMenu">
                        <a class="mMenus" href="#"><span>원해요</span> <strong>0</strong></a>
                        <a class="mMenus" href="#"><span>열람</span> <strong>0</strong></a>
                        <a class="mMenus" href="#"><span>받은 제안</span> <strong>0</strong></a>
                </div>
               
            </div>

       

        <div id="infoEditContainer">
         
            <div id="infoEdit" class="table">
                <div class="title2">기본정보 수정</span></div>

            <div class="FormBlock-content content">
                <label for="name" class="infomations"><h6>이름</h6><input id="name" type="text" autocomplete="off" value="홍길동">
                </label>
                <label for="nickName" class="infomations"><h6>별명</h6><input id="nickName" type="text" autocomplete="off" value="hsc">
                </label>
                <label for="birth" class="infomations"><h6>생년월일</h6><input id="birth" type="date" autocomplete="off" value="1992-02-14">
                </label>
                <div class="infomations"><h6>연락처</h6><div class="MobileInput-body">
                   <input id="mobile" class="MobileInput-text" type="text" placeholder="(예시) 01034567890" value="">
                        </div>
                    </div>
                </div>
                <div class="footerButton">
                    <button type="button" onclick="">확인</button>
                </div>
            </div>
            
        </div>
       
    </section>

	<script>
	
	</script>
</body>
</html>