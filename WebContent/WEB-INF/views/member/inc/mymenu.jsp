     <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    
            <div class="title">MY야너두</div>
            <div id="customerInfo">
                <div id="customer">
                   
                    <dl id="info">
                      
                        <label for="customerPhoto" type="button" style="margin-top: -50px; margin-bottom: -30px;"> 
                            <div id="photoPic" class="photoPic">
                            <input id="photo" type="hidden" value="${photo}">
                            	<div id="cameraIcon"> 
                                    <span class="glyphicon glyphicon-camera" style="margin-top: 5px;"></span>
                                </div>
                            </div>
                        </label>
                        
                            <input type="file" id="customerPhoto" style="display: none;">
                           
                        <dt id="name">${name}<small>(${nickName})</small></dt>
                        <dd id="eamil">${email}</dd>
                        <dd id="tel">${phone}</dd>
                    </dl>
                    <span id="edit" class="edit">
                        <a id ="editInfo" class="editInfo" href="/yaneodo/member/myyaneodo/customer_edit.do">기본정보 수정</a>
                    </span>
                </div>
                
                <div class="secondMenu">
                        <a class="mMenus" href="/yaneodo/member/status/match_status.do"><span>원해요</span> <strong>${want}</strong></a>
                        <a class="mMenus" href="/yaneodo/member/status/match_status.do"><span>열람</span> <strong>${read}</strong></a>
                        <a class="mMenus" href="/yaneodo/member/status/match_status.do"><span>받은 제안</span> <strong>${match}</strong></a>
                </div>
                <div id="account">
                    <a href="/yaneodo/member/myyaneodo/account.do">계정설정</a>
                </div>
            </div>
		<script>
		$("#photoPic").css("background-image","url('/yaneodo/images/member/"+ $("#photo").val()+"')");
		</script>