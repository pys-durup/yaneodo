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
    

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {packages:['corechart']});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ["Element", "Density", { role: "style" } ],
      ["a타입", 153, "#E08B95"],
      ["b타입", 152, "silver"],
      ["c타입", 215, "gold"],
      ["d타입", 452, "color: #e5e4e2"]
    ]);

    var view = new google.visualization.DataView(data);
    view.setColumns([0, 1,
                     { calc: "stringify",
                       sourceColumn: 1,
                       type: "string",
                       role: "annotation" },
                     2]);

    var options = {
      title: "오늘",
      width: 600,
      height: 400,
      bar: {groupWidth: "40%"},
      legend: { position: "none" },
    };
    var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
    chart.draw(view, options);
}
</script>
<style>

   #outline {
            width: 1110px;
            margin : -10px auto;
            height: 900px;
        }

        #tbl {
            width: 600px;
            height: 40px;
            text-align: center;
            margin : 90px auto;
        }
        
        th, td { 
            border-bottom: 2px solid #ccc;
            text-align: center;            
        }

        #dateSelect div, #dateSelect input {
            float : right;
            height: 30px;
        }

        #dateSelect input {
            margin-top: 10px; 
            width: 155px;
        } 

        #columnchart_values {
            margin-left: 100px;
            margin-top: -50px;
        }

        #tbd tr:hover {
            color: #999;
            cursor:pointer;
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
			<%@include file="/WEB-INF/views/admin/inc/sidemenu.jsp" %>
			</div>
		
			         <div id="content">

            <div id="dateSelect">
                
                <input type="date" id="datePicker" value="2021-02-15">
                <div>날짜 선택 : </div> 
            </div>

            <table id=tbl>
                <thead>
                    <tr>
                        <th>기간</th>
                        <th>a타입</th>
                        <th>b타입</th>
                        <th>c타입</th>
                        <th>d타입</th>
                        <th>총 수입</th>
                    </tr>
                </thead>
                <tbody id="tbd">
                    <tr>
                        <td>오늘</td>
                        <td>153</td>
                        <td>152</td>
                        <td>215</td>
                        <td>452</td>
                        <td>1,280,000</td>
                    </tr>
                    <tr>
                        <td>어제</td>
                        <td>125</td>
                        <td>135</td>
                        <td>301</td>
                        <td>397</td>
                        <td>2,540,000</td>
                    </tr>
                    <tr>
                        <td>이번주</td>
                        <td>851</td>
                        <td>765</td>
                        <td>1210</td>
                        <td>3105</td>
                        <td>41,100,000</td>
                    </tr>
                    <tr>
                        <td>이번달</td>
                        <td>3542</td>
                        <td>3325</td>
                        <td>5052</td>
                        <td>1,4211</td>
                        <td>125,480,000</td>
                    </tr>
                </tbody>
            </table>

            <div id="columnchart_values" style="width: 900px; height: 500px;"></div>
  
        </div>

        </div>
       
	
	<!-- footer -->
	<div id="footer" >
	<%@include file="/WEB-INF/views/admin/form/footer.jsp" %>
	</div>
	
<script>
    
	$("#tbd").click(function() {
       alert("선택한 행의 수치로 차트바꾸기");
   	});



</script>
</body>
</html>