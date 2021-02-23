<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태그 관리</title>

<%@include file="/WEB-INF/views/admin/inc/asset.jsp" %>
<link rel="stylesheet" href="/yaneodo/css/admin/admin.css">
<link rel="stylesheet" href="/yaneodo/css/admin/jquery-ui.css">

<script src="/yaneodo/js/jquery-1.12.4.js"></script>
<script src="/yaneodo/js/jquery-ui.js"></script>


<style>

 		#outline {
            width: 1105px;
            margin : -10px auto;
        }

        
        #jobtype {
            float: left;
            margin-right: 10px;
        }
        
        #ctlBtn {
            float: right;
            margin: 20px 50px 0px 10px;
        }

        .btnq {
            margin-right: 5px;
        }

        .title {
            height: 35px;
            width : 250px;
        }

        .one, .two, .three {
            float: left;
            text-align : center;
        }
        .one {
            width : 100px;
            
        }

        .two {
           
            width : 400px;
        }

        .three {
            width: 200px;
            
        }

        #list1 li {
            list-style: none;
            padding-left:0px;
            width: 750px;
           
        }
        #list1 li::after {
            content: "";
            display: block;
            clear: both;
        }
        
        #list1 {
            margin-left: 0px;
            margin-top: -40px;
        }
        
}
</style>

</head>
<body>
	<!-- header -->
	<div id="header">
		<%@include file="/WEB-INF/views/admin/form/header.jsp"%>
	</div>
	<div style="clear: both;"></div>

	<div id="outline">

		<div id="leftSide" style="float: left; background-color: white;">
			<%@include file="/WEB-INF/views/admin/inc/sidemenu.jsp" %>
		</div>

		<div id="content">

            <div id="jobtype">태그 카테고리 관리</div>
            
            <form method="" action="">

            <div id="ctlBtn">
            	<input type="button" id="btnadd" class="btnq btn btn-primary" value="추가하기">
            	<input type="button"  class="btnq btn btn-primary" value="저장하기">
            </div>
            <div style="clear: both;"></div>


            <ul id="list1">
                <li class="ui-state-disabled">
                    <div class="one">태그카테고리</div>
                    <div class="two">태그이름</div>
                    <div class="three">관리</div>
                </li>
                <li>
                    <div class="one">인원성장률</div>
                    <div class="two"><input type="text" class="title" value="#인원성장"></div>
                   <div class="three">
                       <input type="button" class="btns btn btn-primary" value="삭제">
                   </div>
                </li>
                <li>
                    <div class="one">업계연봉수준</div>
                    <div class="two"><input type="text" class="title" value="#연봉상위1%"></div>
                    <div class="three">
                       <input type="button" class="btns btn btn-primary" value="삭제">
                   </div>
                </li>
                <li>
                    <div class="one">투자</div>
                    <div class="two"><input type="text" class="title" value="#누적투자율100억이상"></div>
                    <div class="three">
                       <input type="button" class="btns btn btn-primary" value="삭제">
                   </div>
                </li>
                <li>
                    <div class="one">퇴사율</div>
                    <div class="two"><input type="text" class="title" value="#퇴사율5%이하"></div>
                    <div class="three">
                       <input type="button" class="btns btn btn-primary" value="삭제">
                   </div>
                </li>
                <li>
                    <div class="one">인원수</div>
                    <div class="two"><input type="text" class="title" value="#50명이하"></div>
                    <div class="three">
                       <input type="button" class="btns btn btn-primary" value="삭제">
                   </div>
                </li>
                <li>
                    <div class="one">근무/휴가</div>
                    <div class="two"><input type="text" class="title" value="#야근없음"></div>
                    <div class="three">
                       <input type="button" class="btns btn btn-primary" value="삭제">
                   </div>
                </li>
                <li>
                    <div class="one">기업문화</div>
                    <div class="two"><input type="text" class="title" value="#대기업"></div>
                    <div class="three">
                        <input type="button" class="btns btn btn-primary" value="삭제">
                    </div>
                </li>
                <li>
                    <div class="one">편의시설</div>
                    <div class="two"><input type="text" class="title" value="#주차"></div>
                    <div class="three">
                        <input type="button" class="btns btn btn-primary" value="삭제">
                    </div>
                </li>
            </ul>

		</form>
       
        </div>
	</div>
	<div style="clear:both;"></div>


	<!-- footer -->
	<div id="footer">
		<%@include file="/WEB-INF/views/admin/form/footer.jsp"%>
	</div>

	<script>
        
	  $("#list1").sortable();

	  

      var list1 = document.getElementById("list1");
      var bar;

      
      
      $("#btnadd").click(function() {
          // alert();
          box = document.createElement("li");

          box.className = "box";
          box.innerHTML = "<div class='one'><select><option>" + 1+"</option></select></div><div class='two'><input type='text' class='title' value=''></div> <div class='three'><input type='button' id='btn' class='btn btns btn-primary' value='삭제'></div>";
          
          // box.innerHTML = "테스트";
          list1.appendChild(box);

      });
      
      $(window).click(function() {

          $(".btns").click(function () {
              $(this).parent().parent().remove();
          });   
      });


    
    </script>
</body>
</html>