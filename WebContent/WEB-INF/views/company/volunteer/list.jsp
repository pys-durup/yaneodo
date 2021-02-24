<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/company/inc/asset.jsp"%>
<link rel="stylesheet" href="/yaneodo/css/company/volunteer/list.css">
<style>
</style>
</head>
<body>

	<!-- ########## 상단 헤더 시작 -->
	<%@include file="/WEB-INF/views/company/inc/header.jsp"%>
	<!-- ########## 상단 헤더 끝 -->


	<div id="container">
		<!-- sidemenu -->
		<div id="side-member">
			<div class="sideGroup">
				<div class="sideName">채용중인 포지션</div>
				<ul>
					<li class="side-list-item side-list-item-selected"
						onclick="location.href=/yaneodo/company/volunteer/list.do';">전체보기</li>
					<li class="side-list-item">Android developer</li>
					<li class="side-list-item">IOS developer</li>
					<li class="side-list-item" onclick="location.href='/yaneodo/company/volunteer/list.do?isread=1';">매치업</li>
				</ul>
			</div>
			<div class="sideGroup">
				<div class="sideName">마감된 포지션</div>
				<ul>
					<li class="side-list-item">서버개발자</li>
				</ul>
			</div>

		</div>
		<!-- sidemenu 끝 -->

		<!-- content -->
		<div id="content">
			<div>전체보기</div>
			<!-- 정보 nav -->
			<div id="info">
				<ul class="nav nav-tabs nav-justified">
					<li role="presentation" class="active"><a href="#">신규(1182)</a></li>
					<li role="presentation"><a href="#">서류통과(0)</a></li>
					<li role="presentation"><a href="#">최종합격(1)</a></li>
					<li role="presentation"><a href="#">불합격(623)</a></li>
					<li role="presentation"><a href="#">기간만료(0)</a></li>
				</ul>
			</div>

			<!-- 검색 -->
			<div id="search">
				<div class="input-group">
					<input class="form-control" placeholder="검색" /> <span
						class="input-group-addon">찾기</span>
				</div>
			</div>

			<!-- 지원자 리스트 -->
			<div id="list">
				<table class="table table-bordered">
					<c:forEach items="${list}" var="dto">
					<tr>
						<td>
							<div class="item">
								<div class="leftItem listItem">
									<input type="checkbox">
								</div>
								<div class="leftItem listItem star">
									<c:if test="${dto.isdibs.equals('1')}">
									<span class="glyphicon glyphicon-star-empty"></span>
									</c:if>
									<c:if test="${dto.isdibs.equals('0')}">
									<span class="glyphicon glyphicon-star"></span>
									</c:if>
								</div>
								<div class="leftItem listItem pic">
									<img src="/yaneodo/images/company/man_01.png" alt="">
								</div>
								<div class="itemContent listItem" onclick="location.href='/yaneodo/company/volunteer/view.do'">
									<div class="contentNum">${dto.pseq}</div>
									<div class="contentTitle">${dto.name}&nbsp;&nbsp;${dto.job}</div>
								</div>
								<!-- 태그 위치 -->
								<div class="rightItem listItem">
									<c:if test="${dto.isread.equals('1')}">
										<span class="label label-info">매치업</span>
									</c:if>
								</div>
								<div style="clear: both;"></div>
							</div>
						</td>
					</tr>
					</c:forEach>
					
				</table>
			</div>

			<div class="col-md-offset-9">
				<input style="margin-left: 58px;" type="button" id="interview"
					value="면접일정 제안하기" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">
			</div>



			<!-- paging -->
			<div id="paging">
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- content 끝 -->

	</div>
	<div style="clear: both;"></div>

	<!-- Modal -->
	<div class="modal modal-center fade" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog modal-center modal-70size " role="document">
			<div class="modal-content modal-70size">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">면접일정 제안하기</h4>
				</div>
				<div class="modal-body">
					<div class="modal-body-title">제안 메세지</div>
					<div>
						<textarea class="form-control" rows="8"></textarea>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="modal-body-title">면접 일시</div>
							<input type="text" class="form-control">
						</div>
						<div class="col-md-6">
							<div class="modal-body-title">담당자 연락처</div>
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="modal-body-title">면접 장소</div>
					<input type="text" class="form-control">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">일정 제안하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



	<!-- ########## 상단 푸터 시작 -->
	<%@include file="/WEB-INF/views/company/inc/footer.jsp"%>
	<!-- ########## 상단 푸터 끝 -->

	<script>

	</script>
</body>
</html>