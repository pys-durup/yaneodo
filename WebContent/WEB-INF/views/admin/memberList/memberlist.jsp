<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <link rel="stylesheet" href="/yaneodo/css/admin/admin-main.css">
    <link rel="stylesheet" href="/yaneodo/css/admin/admin-membersection.css">

    
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
                <li><a class="menuLink2" id="mservice">관리자서비스</a></li>   
                <div style="clear: both;"></div>              
            </ul>
        </nav>
    </div>
    
    

    <div id="pageAll">
    
    	<%@include file="/WEB-INF/views/admin/inc/sidemenu.jsp" %>

        <section id="contents">
            <div id="memberManager">
                <div id="subtitle">회원 목록</div>
                <div id="select">
                    <select name="order" id="order" style="width: 120px; height: 30px; font-size: 1.0em;">
                        <option value="이름순">이름순</option>
                        <option value="가입일순">가입일순</option>
                    </select>
                </div>
            </div>
            <div>
                <table id="memberList">
                    <thead>
                        <tr>
                            <th>프로필 사진</th>
                            <th>이름</th>
                            <th>아이디</th>
                            <th>닉네임</th>
                            <th>이메일</th>
                            <th>연락처</th>
                            <th>가입날짜</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="profile"><img src="../images/man_03.png" alt="김영범"></td>
                            <td class="name">김영범</td>
                            <td class="id">abcd4501</td>
                            <td class="nick">rladudqja96</td>
                            <td class="email">abcd4501@naver.com</td>
                            <td class="tel">01044984501</td>
                            <td class="regdate">2021-02-04</td>
                        </tr>
                        <tr>
                            <td class="profile"><img src="../images/man_01.png" alt="홍길동"></td>
                            <td class="name">홍길동</td>
                            <td class="id">hong1234</td>
                            <td class="nick">honghong</td>
                            <td class="email">hong1234@naver.com</td>
                            <td class="tel">01012345678</td>
                            <td class="regdate">2021-02-05</td>
                        </tr>
                        <tr>
                            <td class="profile"><img src="../images/man_01.png" alt="홍길동"></td>
                            <td class="name">홍길동</td>
                            <td class="id">hong1234</td>
                            <td class="nick">honghong</td>
                            <td class="email">hong1234@naver.com</td>
                            <td class="tel">01012345678</td>
                            <td class="regdate">2021-02-05</td>
                        </tr>
                        <tr>
                            <td class="profile"><img src="../images/woman_01.png" alt="홍길동"></td>
                            <td class="name">호호호</td>
                            <td class="id">hohoho1234</td>
                            <td class="nick">hohohoho</td>
                            <td class="email">hohoho1234@naver.com</td>
                            <td class="tel">01045678912</td>
                            <td class="regdate">2021-02-06</td>
                        </tr>
                        <tr>
                            <td class="profile"><img src="../images/woman_02.png" alt="홍길동"></td>
                            <td class="name">헤헤헤</td>
                            <td class="id">hohoho1234</td>
                            <td class="nick">hohohoho</td>
                            <td class="email">hohoho1234@naver.com</td>
                            <td class="tel">01045678912</td>
                            <td class="regdate">2021-02-06</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div style="clear: both;"></div>

            <nav class="pagebar">
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
        </section>
    </div>
</body>
</html>