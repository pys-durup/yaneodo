<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매치업 관리</title>
<%@include file="/WEB-INF/views/admin/inc/asset.jsp" %>

<link rel="stylesheet" href="/yaneodo/css/admin/admin.css">
<link rel="stylesheet" href="/yaneodo/css/admin/matchup_admin.css">
    

<style>

	
	
</style>

</head>
<body>
	<!-- header -->
	<div id="header">
	<%@include file="/WEB-INF/views/admin/form/header.jsp" %>
	</div>
	<div style="clear:both;"></div>
	
	<div id = outline>
	
			<div id="leftSide" style="float:left; background-color: white;">
			<%@include file="/WEB-INF/views/admin/form/leftSide.jsp" %>
			</div>
		
			<div id="content" style="float:left;">
	            <form action="" id="search">
	                <input type="text" class="searchbar" placeholder=" 이름">
	                <input type="button" value="검색" class="searchbar">
	            </form>
	
	            <table id=tbl>
	                <thead>
	                    <tr>
	                        <th>순서</th>
	                        <th>이름</th>
	                        <th>사용한 열람 횟수</th>
	                        <th>면접제안</th>
	                        <th>면접성사</th>
	                        <th>진행중</th>
	                        <th>채용</th>
	                        <th>채용률</th>
	                    </tr>
	                </thead>
	                <tbody id="tbd">
	                    <tr>
	                        <td>1</td>
	                        <td>박세인</td>
	                        <td>164</td>
	                        <td>53</td>
	                        <td>47</td>
	                        <td>12</td>
	                        <td>15</td>
	                        <td>17%</td>
	                    </tr>
	                    <tr>
	                        <td>2</td>
	                        <td>홍길동</td>
	                        <td>281</td>
	                        <td>85</td>
	                        <td>85</td>
	                        <td>30</td>
	                        <td>34</td>
	                        <td>23%</td>
	                    </tr>
	                </tbody>
	            </table>
	
	           
	        </div>
	
	    </div>
    
    </div>
	

	
	<!-- footer -->
	<div id="footer" >
	<%@include file="/WEB-INF/views/admin/form/footer.jsp" %>
	</div>
	
	<script>
	
	</script>
</body>
</html>