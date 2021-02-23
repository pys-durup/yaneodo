<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/member/inc/asset.jsp" %>
<!-- 적용CSS -->
<link rel="stylesheet" href="/yaneodo/css/member/member-main.css">
<link rel="stylesheet" href="/yaneodo/css/member/member-menu.css">
<link rel="stylesheet" href="/yaneodo/css/member/resume.css">
<style>

</style>
</head>
<body>
<%@include file="/WEB-INF/views/member/inc/header.jsp" %>
	   <div id="resume-app" class="react-container background-white" >
        <div class="container" >
            <div id="resume-detail" class="" >
                <div class="resume-toolbar" >
                    <!-- <div class="resume-select-lang ko">
                        <i class="icon-ic-language" ></i>
                        <select class="resume-lang">
                            <option selected="" value="ko">한국어</option>
                            <option value="ja">日本語</option>
                            <option value="tw">繁體中文</option>
                            <option value="en">English</option>
                        </select>
                        <i class="icon-arrow_bottom_fill"></i>
                    </div> -->
                    <div class="other-btns">
                        <button class="border-gray btn btn-default" type="button" >
                            <i class="icon-download"></i>
                        </button>
                    </div>
                </div>
                <div class="resume-basic-info" >
                    <div class="resume-basic-header">
                        <div class="resume-input-form-group">
                            <input class="resume-input resume_title" type="text" maxlength="100" placeholder="이력서 제목(필수)" name="resume_title" value="Hyeseung Cho 5" >
                        </div>
                    </div>
                    <div class="resume-input-form-group" >
                        <input class="resume-input name" type="text" maxlength="100" placeholder="이름(필수)" name="name" value="Hyeseung Cho" >
                    </div>
                    <div class="resume-input-form-group" >
                        <input class="resume-input email" type="text" maxlength="120" placeholder="이메일(필수)" name="email" value="jhs9214@gmail.com">
                    </div>
                    <div class="resume-input-form-group"><input class="resume-input mobile" type="text" maxlength="200" placeholder="연락처(필수) ex) 010-0000-0000" name="mobile" value="+821093889048">
                    </div>
                </div>
                <div class="resume-about-info">
                    <div class="resume-about-header" >간단 소개글</div>
                    <div class="resume-input-form-group">
                        <div class="dynamic-textarea">
                            <textarea style="height:34px;" class="resume-input about" maxlength="4000" placeholder="간단한 자기소개를 통해 이력서를 돋보이게 만들어보세요. (5~10줄 권장)"></textarea>
                            
                            <textarea class="textarea-clone" readonly="" style="top: 0px; left: 0px; width: 900px; padding: 0px; font-size: 16px; line-height: 22.8571px; font-weight: 400; position: absolute; visibility: hidden; z-index: -9999; height: 0px;">간단한 자기소개를 통해 이력서를 돋보이게 만들어보세요. (3~5줄 권장)</textarea>
                        </div>
                    </div>
                </div>
                <div class="resume-lists" >
                    <div class="resume-list careers">
                        <div class="resume-list-header" >
                            <span>경력</span>
                        </div>
                        <div class="resume-list-body" id="careerBody">
                            <button class="btn-add btn btn-default" type="button" id="careerAdd">+ 추가</button>
                        </div>
                    </div>
                    <div class="resume-list educations"><div class="resume-list-header">
                        <span>학력</span>
                    </div>
                    <div class="resume-list-body" id="educationBody">
                        <button class="btn-add btn btn-default" type="button" id="educationAdd">+ 추가</button>
                    </div>
                </div>
                <div class="resume-list activities">
                    <div class="resume-list-header">
                        <span>자격증</span>
                    </div>
                    <div class="resume-list-body" id="certifiBody">
                        <button class="btn-add btn btn-default" type="button" id="certifiAdd" >+ 추가</button>
                    </div>
                </div>
                <div class="resume-list activities">
                    <div class="resume-list-header">
                        <span>수상</span>
                    </div>
                    <div class="resume-list-body" id="awardBody">
                        <button class="btn-add btn btn-default" type="button" id="awardAdd">+ 추가</button>
                    </div>
                </div>
                <div class="resume-list activities">
                    <div class="resume-list-header" >
                        <span>대외활동 및 교육</span>
                    </div>
                    <div class="resume-list-body" id="trainingBody">
                        <button class="btn-add btn btn-default" type="button" id="trainingAdd">+ 추가</button>
                    </div>
                </div>
                <div class="resume-list activities">
                    <div class="resume-list-header">
                        <span>해외연수</span>
                    </div>
                    <div class="resume-list-body" id="abroadBody">
                        <button class="btn-add btn btn-default" type="button" id="abroadAdd">+ 추가</button>
                    </div>
                </div>
                <div class="resume-list language_certs">
                    <div class="resume-list-header" >
                        <span>외국어</span>
                    </div>
                    <div class="resume-list-body" id="languageBody">
                        <button class="btn-add btn btn-default" type="button" id="languageAdd">+ 추가</button>
                    </div>
                </div>
                <div class="resume-list activities">
                    <div class="resume-list-header">
                        <span>취업우대사항</span>
                    </div>
                    <div class="resume-list-body" id="specialBody">
                        <button class="btn-add btn btn-default" type="button" id="specialAdd">+ 추가</button>
                    </div>
                </div>
                <div class="resume-list links">
                    <div class="resume-list-header">
                        <span>포트폴리오</span>
                    </div>
                    <div class="resume-list-body" id="portfolioBody">
                        <button class="btn-add btn btn-default" type="button" id="portfolioAdd">+ 추가</button>
                    </div>
                </div>
            </div>
            <div class="resume-toolbar fixed-bottom" >
                <div class="save-btns">
                    <div>
                        <button class="border-primary btn btn-default" type="button">임시 저장</button>
                    </div>
                    <div>
                        <button class="btn btn-primary" type="button" >작성 완료</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

    //경력추가
    $(function(){
       var maxAppend =1;
    $("#careerAdd").click (function(){


        if ($("#careerBody").children().length > 5) {

            return; 
        }


    var templete = "<ul id='no"+maxAppend+"' class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'><div class='start-time'><div class='form-group'><input name='startYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='startMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div><div class='end-time'><span class='delimiter'>-</span><div class='form-group'><input name='endYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='endMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div></div><div class='form-group'><div class='checkbox'><label class=''><input type='checkbox' label='현재 재직중' onchange='delEndTime("+maxAppend+")'><span>현재 재직중</span></label></div></div></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='회사명'></form></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='부서명/직책' name='title'></div><div class='dynamic-textarea'><textarea style='height: 114px; width: 710px; margin-top:10px' class='resume-input description' placeholder='상세 업무 내용과 성과를 기입해주세요'></textarea></div></div><button id='btnNo"+maxAppend+"' class='btn-delete btn' onclick='delTest("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
 
    $("#careerBody").append(templete);
  
        maxAppend++;

        if ($("#careerBody").children().length > 5) {
            $("#careerAdd").attr("disabled",true);
        }
    });


    });

    //경력삭제
    function delTest(no) {
        $("#careerBody #no" + no).remove();
        $("#careerAdd").attr("disabled",false);
    }

    //경력 현재 재직중
    function delEndTime(no) {

       
            $("#careerBody #no" + no + " .end-time").toggle();
       

    }
//----------------------------------------------------학력추가메뉴
$(function(){
       var maxAppend =1;
    $("#educationAdd").click (function(){

        console.log($("#educationBody").children().length);


        if ($("#educationBody").children().length > 3) {
            return; 
        } 


        var templete = "<ul id='eno"+maxAppend+"' class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'><div class='start-time'><div class='form-group'><input name='startYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='startMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div><div class='end-time'><span class='delimiter'>-</span><div class='form-group'><input name='endYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='endMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div></div><div class='form-group'><div class='checkbox'><label class=''><input type='checkbox' label='현재 재학중' onchange='edelEndTime("+maxAppend+")'><span>현재 재학중</span></label></div></div></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='학교명'></form></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='학위' name='title1'><input class='resume-input title' type='text' maxlength='255' placeholder='전공' name='title2'><input class='resume-input title' type='text' maxlength='255' placeholder='졸업현황(졸업/자퇴/기타)' name='title3'></div></div></div><button id='ebtnNo"+maxAppend+"' class='btn-delete btn' onclick='delEducation("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
 
        $("#educationBody").append(templete);
  
        maxAppend++;


        if ($("#educationBody").children().length > 3) {
            $("#educationAdd").attr("disabled",true);
        } 
    });

});
   
    //학력
    function delEducation(no) {
        $("#educationAdd").attr("disabled",false);
        $("#educationBody #eno" + no).remove();
   
    }

    //현재 재학중

    function edelEndTime(no) {

        //alert(no);
       
            $("#educationBody #eno" + no + " .end-time").toggle();
      
        
    }


//---------------------자격증

$(function(){
       var maxAppend =1;
    $("#certifiAdd").click(function(){


        if ($("#certifiBody").children().length > 5) {
            return; 
        }


    var templete = "<ul id='cerno"+maxAppend+"'class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'><div class='start-time'> <div class='form-group'><input name='startYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='startMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span><span><span>.</span><div class='form-group'><input name='startDay' type='text' maxlength='2' class='month form-control' placeholder='DD' value=''></div></span></div></div></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='자격증명'></form></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='등급및점수' name='title4'></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='발행기관' name='title5'></div></div></div><button id='ebtnNo"+maxAppend+"' class='btn-delete btn' onclick='delCertifi("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"

    $("#certifiBody").append(templete);
  
        maxAppend++;

        if ($("#certifiBody").children().length > 5) {
            $("#certifiAdd").attr("disabled",true);
 
        }

    
    });

});
   
    //자격증 추가메뉴 삭제
    function delCertifi(no) {
        $("#certifiBody #cerno" + no).remove();
        $("#certifiAdd").attr("disabled",false);
    }


//---------------------------------수상


$(function(){
       var maxAppend =1;
    $("#awardAdd").click(function(){


        if ($("#awardBody").children().length > 5) {

            return; 
        }


    var templete = "<ul id='awardNo"+maxAppend+"'class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'><div class='start-time'> <div class='form-group'><input name='startYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='startMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span><span><span>.</span><div class='form-group'><input name='startDay' type='text' maxlength='2' class='month form-control' placeholder='DD' value=''></div></span></div></div></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='수상명'></form></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='발행기관' name='title6'></div></div></div><button id='awardBtnNo"+maxAppend+"' class='btn-delete btn' onclick='delAward("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
    

    $("#awardBody").append(templete);
  
        maxAppend++;

        if ($("#awardBody").children().length > 5) {
            $("#awardAdd").attr("disabled",true);
           
        }
    
    });

});
   
    //수상 추가메뉴 삭제
    function delAward(no) {
        $("#awardBody #awardNo" + no).remove();
        $("#awardAdd").attr("disabled",false);
    }





//----------------------------------------대외활동 및 교육
$(function(){
       var maxAppend =1;
    $("#trainingAdd").click (function(){


        if ($("#trainingBody").children().length > 5) {

            return; 
        }


    var templete = "<ul id='trainingNo"+maxAppend+"' class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'><div class='start-time'><div class='form-group'><input name='startYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='startMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div><div class='end-time'><span class='delimiter'>-</span><div class='form-group'><input name='endYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='endMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div></div><div class='form-group'><div class='checkbox'><label class=''><input type='checkbox' label='현재 진행중' onchange='tdelEndTime("+maxAppend+")'><span>현재 진행중</span></label></div></div></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='활동명'></form></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='종류' name='title7'><input class='resume-input title' type='text' maxlength='255' placeholder='기관' name='title8'></div></div></div><button id='tbtnNo"+maxAppend+"' class='btn-delete btn' onclick='delTraining("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
 
    $("#trainingBody").append(templete);
  
        maxAppend++;
        if ($("#trainingBody").children().length > 5) {
            $("#trainingAdd").attr("disabled",true);
        
        }
    });
    
  
});
   
    //대외활동 및 교육
    function delTraining(no) {
        $("#trainingBody #trainingNo" + no).remove();
        $("#trainingAdd").attr("disabled",false);
    }

    //현재 진행중

    function tdelEndTime(no) {

        $("#trainingBody #trainingNo" + no + " .end-time").toggle();
    }




    //----------------------------------------해외연수
$(function(){
       var maxAppend =1;
    $("#abroadAdd").click (function(){


        if ($("#abroadBody").children().length > 5) { 
            return; 
        }


    var templete = "<ul id='abroadNo"+maxAppend+"' class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'><div class='start-time'><div class='form-group'><input name='startYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='startMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div><div class='end-time'><span class='delimiter'>-</span><div class='form-group'><input name='endYear' type='text' maxlength='4' class='year form-control' placeholder='YYYY' value=''></div><span><span>.</span><div class='form-group'><input name='endMonth' type='text' maxlength='2' class='month form-control' placeholder='MM' value=''></div></span></div></div><div class='form-group'><div class='checkbox'><label class=''><input type='checkbox' label='현재 진행중' onchange='abDelEndTime("+maxAppend+")'><span>현재 진행중</span></label></div></div></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='해외연수명'></form></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='나라' name='title9'><input class='resume-input title' type='text' maxlength='255' placeholder='비고' name='title10'></div></div></div><button id='aBtnNo"+maxAppend+"' class='btn-delete btn' onclick='delAbroad("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
 
    $("#abroadBody").append(templete);
  
        maxAppend++;

        if ($("#abroadBody").children().length > 5) {
            $("#abroadAdd").attr("disabled",true);

        }

    });

});
   
    //해외연수
    function delAbroad(no) {
        $("#abroadBody #abroadNo" + no).remove();
        $("#abroadAdd").attr("disabled",false);
    }

    //현재 진행중
    //var flag =true;
    function abDelEndTime(no) {

        $("#abroadBody #abroadNo" + no + " .end-time").toggle();
       
    }

    


    //---------------------------------외국어


$(function(){
       var maxAppend =1;
    $("#languageAdd").click(function(){


        if ($("#languageBody").children().length > 3) {
            return; 
        }


    var templete = "<ul id='languageNo"+maxAppend+"'class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='언어'></form></div><div class='resume-input-form-group'><select class='form-control' style='margin-top: 10px;'><option>일상 회화</option><option>비즈니스 회화</option><option>유창함</option></select></div></div></div><button id='languageBtnNo"+maxAppend+"' class='btn-delete btn' onclick='delLanguage("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
    

    $("#languageBody").append(templete);
  
        maxAppend++;
        if ($("#languageBody").children().length > 3) {
            $("#languageAdd").attr("disabled",true);
        }
    
    });

});
   
    //외국어 추가메뉴 삭제
    function delLanguage(no) {
        $("#languageBody #languageNo" + no).remove();
        $("#languageAdd").attr("disabled",false);
    }


    //---------------------------------취업 우대사항
    $(function(){
       var maxAppend =1;
    $("#specialAdd").click(function(){


        if ($("#specialBody").children().length > 3) {
            return; 
        }


    var templete = "<ul id='specialNo"+maxAppend+"'class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'></div></div><div class='col-sm-9'><div class='search-input-box resume-input-form-group'><form action='.'><input type='search' class='resume-input company_name' placeholder='우대사항'></form></div><div class='resume-input-form-group'><input class='resume-input title' type='text' maxlength='255' placeholder='비고' name='title11'></div></div></div><button id='specialBtnNo"+maxAppend+"' class='btn-delete btn' onclick='delSpecial("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
    

    $("#specialBody").append(templete);
  
        maxAppend++;

        if ($("#specialBody").children().length > 3) {
            $("#specialAdd").attr("disabled",true);
        }
    
    });

});
   
    //우대사항 추가메뉴 삭제
    function delSpecial(no) {
        $("#specialBody #specialNo" + no).remove();
        $("#specialAdd").attr("disabled",false);
    }

//---------------------------------포트폴리오
     $(function(){
       var maxAppend =1;
    $("#portfolioAdd").click(function(){


        if ($("#portfolioBody").children().length > 3) {
            return; 
        }


    var templete = "<ul id='portfolioNo"+maxAppend+"'class='list-group sortable-list careers'><li class='list-group-item sortable-item careers'><div class='portlet-handler'><div class='handler'></div></div><div class='career-item clearfix'><div class='col-sm-3'><div class='period'><div class='datetime'></div></div><div class='col-sm-9'><div class='resume-input-form-group'><input class='resume-input title' type='url' maxlength='255' placeholder='http://' name='title12'></div><div class='resume-input-form-group'><input class='resume-input title' type='file' maxlength='255' name='title13' style='width: 300px;'></div></div></div><button id='portfolioBtnNo"+maxAppend+"' class='btn-delete btn' onclick='delPortfolio("+maxAppend+");'><i class='icon-close'></i></button></div></li></ul>"
  
    

    $("#portfolioBody").append(templete);
  
        maxAppend++;

        if ($("#portfolioBody").children().length > 3) {
            $("#portfolioAdd").attr("disabled",true);
        }
    
    });

});
   
    //포트폴리오 추가메뉴 삭제
    function delPortfolio(no) {
        $("#portfolioBody #portfolioNo" + no).remove();
        $("#portfolioAdd").attr("disabled",false);
    }

</script>
</body>
</html>
