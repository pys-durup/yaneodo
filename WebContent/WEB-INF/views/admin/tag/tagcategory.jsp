<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태그 관리</title>

<%@include file="/WEB-INF/views/admin/inc/asset.jsp" %>
<link rel="stylesheet" href="/yaneodo/css/admin/admin.css">
<link rel="stylesheet" href="/yaneodo/css/jquery-ui.css">

<script src="/yaneodo/js/jquery-1.12.4.js"></script>
<script src="/yaneodo/js/jquery-ui.js"></script>


<style>

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
			<%@include file="/WEB-INF/views/admin/inc/sidemenu.jsp" %>
		</div>

		<div id="content">

            <div id="jobtype">태그 카테고리 관리</div>
			
			<div id="ctlBtn">
					<input id="btnadd" type="button" value="추가하기" class="btn btn-primary">
				</div>
				<div style="clear: both;"></div>


            <ul id="list1">
                <li class="ui-state-disabled">
                    <div class="one">순서</div>
                    <div class="two">태그카테고리</div>
                    <div class="three">관리</div>
                </li>
                <c:forEach items="${list}" var="dto" >
						<li>
						<form method="POST" action="/yaneodo/admin/jobtype/jobtypeupdate.do">
							<div class="one" >${dto.seq}</div>
							<div class="two">
								<input type="text" name="jobtype" class="title" value="${dto.tagtitle}">
							</div>
							<div class="three">
							
								<input type="hidden" name="tagtitleseq" value="${dto.seq}">
								<input type="hidden" name="tagtitlecount" value="basic">
								<input type="submit" class="btn btns btn-primary" value="저장">
							</div>
						</form>
						</li>
						</c:forEach>
                <li>
                    <div class="one"></div>
                    <div class="two"><input type="text" class="title" value="업계연봉수준"></div>
                   <div class="three">
                        <input type="button" id="btn" class="btns btn btn-primary" value="삭제">
                    </div>
                </li>
        	</ul>

        </div>
	</div>
	<div style="clear:both;"></div>


	<!-- footer -->
	<div id="footer">
		<%@include file="/WEB-INF/views/admin/form/footer.jsp"%>
	</div>

	<script>
        
	var list1 = document.getElementById("list1");
    var bar;
    let num = ${list.size()+1};

    
    
    $("#btnadd").click(function() {
        // alert();
        box = document.createElement("li");

        box.className = "box";
        box.innerHTML = "<form method='POST' action='/yaneodo/admin/tag/tagcategory.do'><div class='one'>"+ (num++) +"</div><div class='two'><input type='text' name='jobtype' class='title' value=''></div> <div class='three'><input type='hidden' name='jobseq' value='"+ num +"'><input type='hidden' name='jobcount' value='add'><input type='submit' id='btn' class='btn btns btn-primary' value='저장'></div></form>";
        
        // box.innerHTML = "테스트";
        list1.appendChild(box);

    });


    
    </script>
</body>
</html>