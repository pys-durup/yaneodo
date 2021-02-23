 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
     <!-- header -->
     <div id="headerContainer">
        <nav id="nav">
            <ul>
                <li id="logo"><img src="" id="logo">yaneoDO</li>
                <li><a class="menuLink" href="#">탐색</a></li>
                <li><a class="menuLink" href="#">직무별연봉</a></li>
                <li><a class="menuLink" href="/yaneodo/member/resume/resume_list.do">이력서</a></li>
                <li><a class="menuLink" href="#">매치업</a></li>
                <li><a class="menuLink" href="#">코딩테스트</a></li>
                <li><a class="menuLink" href="#">커뮤니티</a></li>
                <li><button type="button" class="searchButton"><span class="glyphicon glyphicon-search"></span></button></li>
                <li><a class="menuLink2" id="alarm"><img src="">알람</a></li>
                <li style="margin-bottom: -10px;"> 
                    <input id="myYaneodo-menu" type="button" class="searchButton headerPhoto" style="background-image: url('/yaneodo/images/member/man_01.png')">
                   	
                    
                </li>
                <li><a class="menuLink2" id="bservice">기업서비스</a></li>   
                <div style="clear: both;"></div>              
            </ul>
        </nav>
        <div id="myMenu-container" class="container" style="display: none;">
        <ul id="myMenu">
            <li class="">
                <a href="/yaneodo/member/myyaneodo/myyaneodo.do" class="" ><span>MY 야너두</span></a>
            </li>
            <li class="">
                <a href="/yaneodo/member/profile/profile.do" class="" ><span>프로필</span></a>
            </li>
            <li class="">
                <a href="/yaneodo/member/status/applied_status.do" class="" data-lnb-kind="applications"><span>지원 현황</span></a>
            </li>
            <li class="">
                <a href="/yaneodo/member/status/match_status.do" class="" data-lnb-kind="offersReceived"><span>제안받기 현황</span></a>
            </li>
            <li class="">
                <a href="/profile/likes" class="" data-lnb-kind="likes"><span>좋아요</span></a>
            </li>
            <li class="">
                <a href="/profile/bookmarks" class="" data-lnb-kind="bookmarks"><span>북마크</span></a>
            </li>
            <li>
                <a href="/logout" class="is-logout">로그아웃</a>
            </li>
        </ul>
        </div>
    </div>

    <script>
    var flag=false;

    $("#myYaneodo-menu").click(function(){
        if(flag==true){
            $("#myMenu-container").hide();
             $("#myYaneodo-menu").removeClass("borderLine");

            //  $(window).click(function(){
            //     $("#myMenu-container").css("display","none");
            //       $("#myYaneodo-menu").removeClass("borderLine");
            //       flag=false;
            //     });
    
             flag=false;
        } else {
        $("#myMenu-container").show();
        $("#myYaneodo-menu").addClass("borderLine");
        flag=true;

        }

        event.cancelBubble=true;
       
    });
 

    $(window).click(function(){
        $("#myMenu-container").hide();
         $("#myYaneodo-menu").removeClass("borderLine");
         flag=false;
        
    });

    </script>