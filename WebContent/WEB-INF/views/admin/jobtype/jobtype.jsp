<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직무 관리</title>

<%@include file="/WEB-INF/views/admin/inc/asset.jsp" %>
<link rel="stylesheet" href="/yaneodo/css/admin/admin.css">
<link rel="stylesheet" href="/yaneodo/css/admin/jquery-ui.css">

<script src="/yaneodo/js/jquery-1.12.4.js"></script>
<script src="/yaneodo/js/jquery-ui.js"></script>


<style>
#tbl {
	width: 600px;
	height: 40px;
	text-align: center;
	margin: 90px auto;
}

th, td {
	border-bottom: 2px solid #ccc;
	text-align: center;
}

#tbl {
	width: 600px;
}

#jobtype {
	float: left;
	margin-right: 10px;
}

#ctlBtn {
	float: right;
	margin: 20px 50px 0px 10px;
}

#btn {
	margin-right: 5px;
}

.title {
	height: 35px;
	width: 250px;
}

.one, .two, .three {
	float: left;
	text-align: center;
}

.one {
	width: 100px;
}

.two {
	width: 400px;
}

.three {
	width: 200px;
}

#list1 li {
	list-style: none;
	padding-left: 0px;
	width: 750px;
}

#list1 li::after {
	content: "";
	display: block;
	clear: both;
}

#list1 {
	margin-left: -20px;
	margin-top: 0px;
}

#subframe {
	width: 800px;
	height: 700px;
	/* border : 1px solid black; */
	overflow-y: scroll;
}

#subframe::-webkit-scrollbar {
	display: none;
}

#outline {
     width: 1110px;
     height:910px;
     margin : -10px auto;
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
			<%@include file="/WEB-INF/views/admin/form/leftSide.jsp"%>
		</div>

		<div id="content">

			<div id="jobtype">직무 종류 관리</div>
			
			<form method="POST" action="">
				<div id="ctlBtn">
					<input id="btnadd" type="button" value="추가하기" class="btn btn-primary">
					<input type="submit" id="btn" class="btn btn-primary" value="저장하기">
				</div>
				<div style="clear: both;"></div>

				<div id="subframe">
					<ul id="list1">
						<li class="ui-state-disabled">
							<div class="one"></div>
							<div class="two">직무종류</div>
							<div class="three">관리</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="DevOps/시스템 관리자">
							</div>
							<div class="three">
								<input type="button" class="btn btns btn-primary" value="삭제">
							</div></li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="데이터 사이언티스트">
							</div>
							<div class="three">
								<input type="button"  class="btn btns btn-primary" value="삭제">
							</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="C,C++ 개발자">
							</div>
							<div class="three">
								<input type="button" class="btn btns btn-primary" value="삭제">
							</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="시스템, 네트워크 관리자">
							</div>
							<div class="three">
								<input type="button"  class="btn btns btn-primary" value="삭제">
							</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="개발 매니저">
							</div>
							<div class="three">
								<input type="button" class="btn btns btn-primary" value="삭제">
							</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="빅데이터 엔지니어">
							</div>
							<div class="three">
								<input type="button"  class="btn btns btn-primary" value="삭제">
							</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="PHP 개발자">
							</div>
							<div class="three">
								<input type="button"  class="btn btns btn-primary" value="삭제">
							</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="기술지원">
							</div>
							<div class="three">
								<input type="button"class="btn btns btn-primary" value="삭제">
							</div>
						</li>
						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="웹 퍼블리셔">
							</div>
							<div class="three">
								<input type="button" class="btn btns btn-primary" value="삭제">
							</div>
						</li>

						<li>
							<div class="one"></div>
							<div class="two">
								<input type="text" class="title" value="임베디드 개발자">
							</div>
							<div class="three">
								<input type="button" class="btn btns btn-primary" value="삭제">
							</div>
						</li>

					</ul>
				</div>

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
          box.innerHTML = "<div class='one'></div><div class='two'><input type='text' class='title' value=''></div> <div class='three'><input type='button' id='btn' class='btn btns btn-primary' value='삭제'></div>";
          
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