<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="/WEB-INF/views/member/inc/asset.jsp"%>

<link rel="stylesheet" href="/yaneodo/css/member/header.css">

<style>

</style>
</head>
<body>
	
	<!-- ########## 상단 헤더 시작 -->
	<%@include file="/WEB-INF/views/member/inc/header.jsp"%>
	<!-- ########## 상단 헤더 끝 -->
	
	        <div id="content">
            <div id="submenu"><h1>검색어</h1></div>

        <div id="searchCompany">

            <h3 style="font-size: 15px; float: left;">회사<span>14</span></h3>
            <div class="arrowsSm" style="float: left;">
            </div>
            <div style="clear: both;"></div>

            <ul id="companyList" style="list-style: none;">
                <li class="clist">
                    <div>
                        <img src="snow.jpg" style="float: left;">
                        <h2>${"#name"}</h2>
                    </div>
                </li>
                <li class="clist">
                    <div>
                        <img src="snow.jpg" style="float: left;">
                        <h2>${"#name"}</h2>
                    </div>
                </li>
                <div style="clear: both;"></div>
            </ul>
        </div>


        <div id="searchPosition">

            <h3 style="font-size: 15px;">포지션<span>56</span></h3>

            <ul id="positionList" style="list-style: none;">
                <li class="plist" style="float: left;">
                    <div><img src="snow.jpg" class="ppic"></div>
                    <div class="desc">${"#job"}</div>
                    <div class="desc sm">${"#name"}</div>
                </li>
                <li class="plist" style="float: left;">
                    <div><img src="snow.jpg" class="ppic"></div>
                    <div class="desc">${"#job"}</div>
                    <div class="desc sm">${"#name"}</div>
                </li>
                <li class="plist" style="float: left;">
                    <div><img src="snow.jpg" class="ppic"></div>
                    <div class="desc">${"#job"}</div>
                    <div class="desc sm">${"#name"}</div>
                </li>
                <li class="plist" style="float: left;">
                    <div><img src="snow.jpg" class="ppic"></div>
                    <div class="desc">${"#job"}</div>
                    <div class="desc sm">${"#name"}</div>
                </li>

                <div style="clear: both;"></div>
            </ul>
        </div>

    </div>
	
	

	<script>
	
	</script>
</body>
</html>