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

        #outline {
            width: 1105px;
            margin : -10px auto;
        }

      

        #dateSelect div, #dateSelect input {
            float : right;
            height: 30px;
            margin-right: 10px;

        }
            

        #dateSelect input {
            margin-top: 10px; 
            margin-right: 50px;
            width: 155px;
        } 

        #columnchart_values {
            margin-left: 0px;
            margin-top: 30px;
            float: left;
            /* border: 1px solid black; */
            width: 500px;
        }

        .count {
            height: 20px;
            /* border: 1px solid black; */
            margin-left: 50px;
        }

        #text {
            /* border: 1px solid black; */
            float: left;
            margin-top : 150px;
            width : 300px;
        }




        
    </style>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ["Element", "Density", { role: "style" } ],
          ["오늘", 131, "#E08B95"],
          ["어제", 275, "silver"],
          ["이번주", 1086, "gold"]
        ]);
    
        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1,
                         { calc: "stringify",
                           sourceColumn: 1,
                           type: "string",
                           role: "annotation" },
                         2]);
    
        var options = {
          title: "",
          width: 500,
          height: 400,
          bar: {groupWidth: "40%"},
          legend: { position: "none" },
        };
        var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
        chart.draw(view, options);
    }
    </script>

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
		
			 <div id="content">

            <div id="dateSelect">
                
                <input type="date" id="datePicker" value="2021-02-15">
                <div>날짜 선택 : </div> 
            </div>
            <div style="clear: both;"></div>

           <div id="text">
               <div class="count">오늘 매칭 횟수 : <span>131</span>회</div>
               <div class="count">어제 매칭 횟수 : <span>275</span>회</div>
               <div class="count">이번주 매칭 횟수 : <span>1086</span>회</div>
           </div>

            <div id="columnchart_values" style="width: 500px; height: 300px;"></div>
  
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