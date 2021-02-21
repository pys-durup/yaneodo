<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="/WEB-INF/views/community/inc/asset.jsp"%>

    
    <style>


  
        tr>th, td {
            text-align: center;
          
        }
    
        tr>th {
            background-color: #EEE;
        }
    
        #tbl1 {
            font-size: 16px;    
            border-bottom: 1px solid #DDD;
            margin-top: 70px;
        }
    
        button {
            float: right;
        }


    </style>
    


</head>
<body>
    

    <div id="headerContainer">
        <nav id="nav">
            <ul>
                <li id="logo"><img src="" id="logo">yaneoDO</li>
                <li><a class="menuLink" href="#">탐색</a></li>
                <li><a class="menuLink" href="#">직무별연봉</a></li>
                <li><a class="menuLink" href="#">이력서</a></li>
                <li><a class="menuLink" href="#">매치업</a></li>
                <li><a class="menuLink" href="#">코딩테스트</a></li>
                <li><a class="menuLink" href="#">커뮤니티</a></li>
                <li><a class="menuLink2" id="search"><img src="">검색</a></li>
                <li><a class="menuLink2" id="alarm"><img src="">알람</a></li>
                <li><a class="menuLink2" id="photo"><img src="">사진</a></li>
                <li><a class="menuLink2" id="bservice">기업서비스</a></li>   
                <div style="clear: both;"></div>              
            </ul>
        </nav>
    </div>



    <div id="container">


        <!-- SIDE MENU -->
        <div id="side">
            <div class="sideGroup">
                <div class="sideName">커뮤니티</div>
                <ul> 
                    <!-- <li class="side-list-item side-list-item-selected" onclick="location.href='layout.html';"> 전체보기 </li> -->
                    <li class="side-list-item">개발자 Q&A</li>
                    <li class="side-list-item side-list-item-selected">자유게시판</li>
                    <!-- <li class="side-list-item" onclick="location.href='matchup.html';">매치업</li> -->
                </ul>
            </div>
    
            
        </div>


        <!-- CONTENT -->


        <div id="content">

            <div class="title">
                자유게시판 
                <small>Board</small>
            </div>

            <table id="tbl1" class="table table-condensed">
                <tr>
                    <th style="width:50px">번호</th>
                    <th style="width:300px">글제목</th>
                    <th style="width:50px">작성자</th>
                    <th style="width:50px">작성일</th>
                    <th style="width:50px">조회수</th>
                </tr>
                <tr>
                    <td>5</td>
                    <td>수업 방식이 좀 안 맞는 것 같습니다.</td>
                    <td>홍길동</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>다들 어떤가요?</td>
                    <td>아무개</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>이직 준비합니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>프로그램 처음 시작합니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>티비에서 봤습니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>티비에서 봤습니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>티비에서 봤습니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>티비에서 봤습니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>티비에서 봤습니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>티비에서 봤습니다.</td>
                    <td>작성자</td>
                    <td>2021.02.16</td>
                    <td>0</td>
                </tr>
                
            </table>


    
            <button class="btn btn-default" onclick="location.href='p05_board-write.html'">
                <span class="glyphicon glyphicon-pencil"></span>
                글쓰기
            </button>
    


            <div style="clear: both;"></div>




     

            <!-- 페이징 -->
            <div id="paging">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                    <li>
                        <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    </ul>
                </nav>
            </div>

  




         </div>

    
         

      





    </div>
</body>
</html>