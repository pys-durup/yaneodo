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
   <div class="container">
        <div class="title">지원 현황</div>
        <div class="content">
            <!-- 메뉴 -->
            <div class="aside-nav-group">
                <div class="aside-nav-header">지원</div>
                <div id="applied" class="aside-nav-item-selected">지원한 포지션</div>
                <div id="writing" class="aside-nav-item">작성중<div class="aside-nav-label">0</div></div>
            </div>


            <div id="appliedPosition" class="appliedPosition">
                <div id="status-items" class="status-items">
                    <a class="status-link" href="#"> <dl><dt>0</dt><dd>전체</dd></dl></a>
                    <a class="status-link" href="#"> <dl><dt>0</dt><dd>지원 완료</dd></dl></a>
                    <a class="status-link" href="#"> <dl><dt>0</dt><dd>서류 통과</dd></dl></a>
                    <a class="status-link" href="#"> <dl><dt>0</dt><dd>최종 합격</dd></dl></a>
                    <a class="status-link" href="#"> <dl><dt>0</dt><dd>불합격</dd></dl></a>
                </div>

                <div class="status-company">
                    <div class="status-check">
                        <span>총 1건</span> 
                        <div id="status-search">
                        <span class="glyphicon glyphicon-search"></span><input type="text" placeholder="회사/지원자명 검색">
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                    <table id="statusTable" class="table table-striped ">
                        <tr>
                            <th>지원 회사</th>
                            <th>지원 포지션</th>
                            <th>작성일</th>
                            <th>진행상태</th>
                        </tr>
                        <tr class="tableSel">
                            <td>카카오</td>
                            <td>앱개발</td>
                            <td>2020-12-30</td>
                            <td>불합격</td>
                        </tr>

                        <!-- <tr>
                            <td colspan="5" style="text-align: center; padding-top: 60px; color:#ccc;"> 요청하신 검색자료가 없습니다.</td>
                        </tr> -->

                </div>
            </div>
        </div>
    </div>    
<script>

   $("#writing").click(function(){
        $("#status-items").css("display","none");
        $("#writing").addClass("aside-nav-item-selected");
        $("#writing").removeClass("aside-nav-item");
        $("#applied").removeClass("aside-nav-item-selected");
        $("#applied").addClass("aside-nav-item");
   });
    
   $("#applied").click(function(){
        $("#status-items").css("display","block");
        $("#writing").addClass("aside-nav-item");
        $("#writing").removeClass("aside-nav-item-selected");
        $("#applied").removeClass("aside-nav-item");
        $("#applied").addClass("aside-nav-item-selected");
   });
    

</script>
</body>
</html>