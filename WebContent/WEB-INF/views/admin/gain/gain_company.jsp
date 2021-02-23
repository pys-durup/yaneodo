<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수익 관리</title>
<%@include file="/WEB-INF/views/admin/inc/asset.jsp" %>

<link rel="stylesheet" href="/yaneodo/css/admin/admin.css">
<link rel="stylesheet" href="/yaneodo/css/admin/matchup_admin.css">
    

<style>

  #outline {
            width: 1105px;
            margin : -10px auto;
        }

        #tbl {
            width: 850px;
            height: 40px;
            text-align: center;
            margin : 90px auto;
        }
        
        th, td { 
            border-bottom: 2px solid #ccc;
            text-align: center;            
        }

        #search {
            width: 250px;
            float : right;
        }

        .searchbar {
            height: 30px;
            display:inline-block;
            float: left;
            line-height: 5px;
        }

	
	
</style>

</head>
<body>
	<!-- header -->
	<div id="header">
	<%@include file="/WEB-INF/views/admin/form/header.jsp" %>
	</div>
	<div style="clear:both;"></div>
	
	<div id = "outline">
	
			<div id="leftSide" style="float:left; background-color: white;">
			<%@include file="/WEB-INF/views/admin/inc/sidemenu.jsp" %>
			</div>
		
         <div id="content">

            <form action="" id="search">
                <input type="text" class="searchbar" placeholder=" 이름">
                <input type="button" value="검색" class="searchbar">
            </form>

            <table id=tbl>
                <thead>
                    <tr>
                        <th>순서</th>
                        <th>이름</th>
                        <th>a타입</th>
                        <th>b타입</th>
                        <th>c타입</th>
                        <th>d타입</th>
                        <th>사용한 열람 횟수</th>
                        <th>잔여 열람 가능 횟수</th>
                    </tr>
                </thead>
                <tbody id="tbd">
                    <tr>
                        <td>1</td>
                        <td>박세인</td>
                        <td>1</td>
                        <td>1</td>
                        <td>1</td>
                        <td>0</td>
                        <td>1,6412</td>
                        <td>2,5516</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>홍길동</td>
                        <td>2</td>
                        <td>3</td>
                        <td>3</td>
                        <td>1</td>
                        <td>2,8155</td>
                        <td>2,8422</td>
                    </tr>
                </tbody>
            </table>

  
        </div>

    </div>

	
	<!-- footer -->
	<div id="footer" >
	<%@include file="/WEB-INF/views/admin/form/footer.jsp" %>
	</div>
	
	    <script>

        var box;
        var box2;
        var forinfo = document.getElementById("forinfo");
        var flag = false;

        $(window).click(function() {

            
            if(flag) {

                $(".box").remove();
                
                flag=false;
            }
    
        });

        $(".getname").click(function() {
            //alert("면접제안 회원, 채용 회원 보기 만들기");
            
            event.cancelBubble = true;
            if (flag) {
                $(".box").remove();
            }
            

            box = document.createElement("div");

            box.className = "box";
            box.style.left = event.clientX + "px";
            box.style.top = event.clientY + "px";
            
            forinfo.appendChild(box);
            box.innerHTML = "<a href='http://www.naver.com'>면접제안 회원보기</a>";
            
            flag = true;
            //alert(flag);
        
            box2 = document.createElement("div");

            box2.className = "box";
            box2.style.left = event.clientX + "px";
            box2.style.top = event.clientY+29 + "px";
            
            forinfo.appendChild(box2);
            box2.innerHTML = "<a href='http://www.naver.com'>채용 회원 보기</a>";


        });


    
    </script>
</body>
</html>