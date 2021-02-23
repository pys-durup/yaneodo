<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="/WEB-INF/views/jobnotice/inc/asset.jsp"%>

<!-- 적용CSS -->
<link rel="stylesheet" href="/yaneodo/css/member/member-main.css">
<link rel="stylesheet" href="/yaneodo/css/member/customer2.css">

</head>

<style>

#section {
        margin: 0px auto;
        margin-top: -3px;
        width: 1050px;
    }

    #job-notice, #new, #theme {
        width: 1050px;
        margin-bottom: 100px;
    }

    .companyPic {
        width: 230px;
        height: 190px;
        border-radius: 5px;
        margin-bottom: 10px;
        cursor: pointer;
    
    }

    .themePic {
        width: 522px;
        height: 190px;
        background-image: url("/images/cat03.jpg");
        border-radius: 5px;
        margin-bottom: 10px;
        cursor: pointer;
    }

    #job-notice .details, #new .details {               
        margin-top: 10px;
        margin-right: 22px;
        float: left;
    }

    #theme .details {           
        margin-top: 10px;
        margin-right: 22px;
        float: left;
    }

    #container .title {
        font-family: Jal_Onuel;
        font-size: 20px;
        position: relative;
        left: 0px;
        top: 0px;
        margin: 0;
        margin-bottom: 10px;
        font-weight: normal;
    }

    .desc {
        font-family: Jal_Onuel;
        font-size: 15px;
        /* padding-top: 5px; */
        padding-left: 10px;
    }

    .sm {
        font-size: 13px;
    }
    .sm2 {
        color:#AAA;
        font-size: 13px;
    }

    
    /* 직무별 검색 */

    #job-division {
        margin-bottom: 30px;
        padding-bottom: 20px;
        border-bottom: 1px solid #CCC;
    }
    .job-type {
        width: 100px;
        height: 60px;
        border-radius: 5px;
        margin-right: 10px;
        opacity: 0.8;
        /* background-color: rgb(70, 49, 49); */
        /* background-image: url("../images/wall33.jpg"); */
      
       
    }

    #search {
        margin-top: 30px;
        margin-bottom: 30px;
    }

    #search .form-control {
        width: 100px;
        display: inline-block;
        margin-right: 20px;
    }



</style>


<body>

	<!-- 상단헤더 -->
	<%@include file="/WEB-INF/views/member/inc/header.jsp" %>
	<!-- 상단헤더 -->


    <div id="container">


    <div id="job-division">

        <div class=title><a>전체</a></div>

        <div>
            <input type="button" class="btn btn-default
             job-type" value="서버 개발자" >
            <input type="button" class="btn btn-default job-type" value="웹 개발자" >
            <input type="button" class="btn btn-default job-type" value="프론트엔드">
            <input type="button" class="btn btn-default job-type" value="자바" >
        </div>
    </div>


    <div id="search">
        <div>
            <select id="search-tag" class="form-control">
                <option>태그검색</option>
                <option>업계연봉수준</option>
                <option>인원</option>
                <option>복지</option>
            </select>

            <select id="search-location" class= "form-control">
                <option> 지역검색</option>
                <option>강남</option>
                <option>구로</option>
                <option>가산</option>
            </select>
        </div>
    </div>
    

    <div id="section">    
        <div id="job-notice">

           	<c:forEach items="${list}"  var="dto">
           	
               <div class="details">
                   <a href="p03_jobinfo.html">
                   <div><img src="/images/cat03.jpg" class="companyPic"></div>
                   <div class="desc">${dto.job }</div>
                   <div class="desc sm">${dto.companySeq}</div>
                   <div class="desc sm2">${dto.place}</div>
                   </a>
               </div>
               
           </c:forEach>
           
               <div style="clear: both;"></div>
        </div>

    </div>

    <script>


    </script>
</body>
</html>
