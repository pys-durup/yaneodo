<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="/WEB-INF/views/admin/inc/asset.jsp" %>
    <link rel="stylesheet" href="/yaneodo/css/admin/admin-member.css">

    
</head>
<body>
	<!-- header -->
	<div id="header">
	
		<%@include file="/WEB-INF/views/admin/form/header.jsp" %>
	
	</div>
	<div style="clear:both;"></div>
    
    <div id="pageAll">
    
    	<%@include file="/WEB-INF/views/admin/inc/sidemenu.jsp" %>

        <section id="contents">
            <div id="subtitle">회원 정보</div>
            <div id="member">
                <div><img src="../images/man_03.png" alt="남자"></div>
                <div id="member-name">이름</div>

                <br><br>

                <div class="member-info">개인 정보</div>
                <br>
                <div class="state">아이디</div>
                <div class="member-state">abcd4501</div>
                <br>
                <div class="state">닉네임</div>
                <div class="member-state">rladudqja96</div>
                <br>
                <div class="state">이메일</div>
                <div class="member-state">abcd4501@naver.com</div>
                <br>
                <div class="state">연락처</div>
                <div class="member-state">01044984501</div>
                <br>
                <div class="state">생년월일</div>
                <div class="member-state">1996-09-07</div>

                <br><br>

                <div class="member-info">활동 정보</div>
                <br>
                <div class="state">가입날짜</div>
                <div class="member-state">2021-02-04</div>
                <br>
                <div class="state">마지막 로그인</div>
                <div class="member-state">2021-02-05</div>
                <br>
                <div class="state">작성</div>
                <div class="member-count">좋아요 <span>0개</span> </div>
                <div class="member-count">게시물 <span>0개</span> </div>
                <div class="member-count">댓글 <span>0개</span> </div>

                <br><br>

                <div class="member-info">자기소개 & 이력서</div>
                <div id="member-introduce">Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum eaque dignissimos velit, tenetur architecto dolore repellendus sunt, accusantium cumque odio placeat. Perferendis nostrum eum iure ducimus doloribus unde, laudantium quasi?</div>
                <div><a href="http://naver.com">1번 이력서</a></div>
            </div>
            <div>
                <input type="button" value="목록" class="btn btn-default">
                <input type="button" value="수정" class="btn btn-primary"> 
            </div>
        </section>
    </div>
</body>
</html>