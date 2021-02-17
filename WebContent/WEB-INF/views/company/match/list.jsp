<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/company/inc/asset.jsp"%>
<link rel="stylesheet" href="/yaneodo/css/company/match/list.css">
<style>
</style>
</head>
<body>

	<!-- ########## 상단 헤더 시작 -->
	<%@include file="/WEB-INF/views/company/inc/header.jsp"%>
	<!-- ########## 상단 헤더 끝 -->

	<div id="container">
		<!-- search -->
		<div id="section-search">
			<div id="search">
				<div class="row">
					<div class="title">찾고 있는 인재의 직무를 설정하고 검색할 수 있습니다</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<select class="form-control search-slt"
							id="exampleFormControlSelect1">
							<option>웹 개발자</option>
							<option>Example one</option>
							<option>Example one</option>
							<option>Example one</option>
							<option>Example one</option>
							<option>Example one</option>
							<option>Example one</option>
						</select>
					</div>
					<div class="col-md-7">
						<input type="text" class="form-control search-slt"
							placeholder="검색어를 입력하세요">
					</div>
					<div class="col-md-2 ">
						<button type="button" class="btn btn-primary btn-search ">검색</button>
					</div>
				</div>

				<div class="row">
					<div class="col-md-3 col-md-offset-9 ">
						<input type="radio" name="gender" value="male" class="radio-item">
						<label for="male">이력서 있음</label> <input type="radio" name="gender"
							value="female" class="radio-item"> <label for="female">최신순</label>
						<input type="radio" name="gender" value="other" class="radio-item">
						<label for="other">열람순</label>
					</div>
				</div>
			</div>
		</div>
		<!-- search 끝 -->



		<!-- sidemenu -->
		<div id="side-matchup">
			<div class="sideGroup">
				<div>
					<input type="button" value="서비스 결제하기"
						class="btn btn-primary btn-middle">
				</div>
				<ul>
					<li class="side-list-item side-list-item-selected"
						onclick="location.href='search.html';">목록전체</li>
					<li class="side-list-item">요청 후 받은 이력서</li>
					<li class="side-list-item">찜한 목록</li>
					<li class="side-list-item">미열람 목록</li>
					<li class="side-list-item">열람한 목록</li>
					<li class="side-list-item">면접 제안한 목록</li>
				</ul>
			</div>
		</div>
		<!-- sidemenu 끝 -->


		<!-- search-reasult -->
		<div id="search-reasult">
			<div class="container">
				<div class="row">
					<div class="col-md-2 left-item">
						<div class="pic">
							<img src="/yaneodo/images/company/man_01.png" alt="">
						</div>
						<!-- <div>번호</div> -->

					</div>
					<div class="col-md-10 right-item">
						<div>
							프론트엔드 개발자<span>서버 개발자/ 웹 개발자/ Node.js 개발자</span>
						</div>
						<div>
							신입 | 코코아톡 <span>(2개월)</span>
							</sapn>
						</div>
						<div>
							<span>이런 생각을 합니다 자존감은 높이고, 자존심은 낮추려 합니다...</span>
						</div>
						<div>
							한국대학교 <span>컴퓨터 공학과</span>
						</div>
						<div class="row">
							<button class="btn btn-default col-md-offset-8">찜하기</button>
							<input type="button" class="btn btn-primary col-md-offset-0"
								data-toggle="modal" data-target="#myModal" value="이력서 미리보기">
						</div>

					</div>
				</div>
			</div>



			<div class="container">
				<div class="row">
					<div class="col-md-2 left-item">
						<div class="pic">
							<img src="/yaneodo/images/company/man_02.png" alt="">
						</div>
						<!-- <div>번호</div> -->

					</div>
					<div class="col-md-10 right-item">
						<div>
							프론트엔드 개발자<span>서버 개발자/ 웹 개발자/ Node.js 개발자</span>
						</div>
						<div>
							신입 | 코코아톡 <span>(2개월)</span>
							</sapn>
						</div>
						<div>
							<span>이런 생각을 합니다 자존감은 높이고, 자존심은 낮추려 합니다...</span>
						</div>
						<div>
							한국대학교 <span>컴퓨터 공학과</span>
						</div>
						<div class="row">
							<button class="btn btn-default col-md-offset-8">찜하기</button>
							<button class="btn btn-primary col-md-offset-0">이력서 미리보기</button>
						</div>

					</div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-md-2 left-item">
						<div class="pic">
							<img src="/yaneodo/images/company/man_02.png" alt="">
						</div>
						<!-- <div>번호</div> -->

					</div>
					<div class="col-md-10 right-item">
						<div>
							프론트엔드 개발자<span>서버 개발자/ 웹 개발자/ Node.js 개발자</span>
						</div>
						<div>
							신입 | 코코아톡 <span>(2개월)</span>
							</sapn>
						</div>
						<div>
							<span>이런 생각을 합니다 자존감은 높이고, 자존심은 낮추려 합니다...</span>
						</div>
						<div>
							한국대학교 <span>컴퓨터 공학과</span>
						</div>
						<div class="row">
							<button class="btn btn-default col-md-offset-8">찜하기</button>
							<button class="btn btn-primary col-md-offset-0">이력서 미리보기</button>
						</div>

					</div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-md-2 left-item">
						<div class="pic">
							<img src="/yaneodo/images/company/man_02.png" alt="">
						</div>
						<!-- <div>번호</div> -->

					</div>
					<div class="col-md-10 right-item">
						<div>
							프론트엔드 개발자<span>서버 개발자/ 웹 개발자/ Node.js 개발자</span>
						</div>
						<div>
							신입 | 코코아톡 <span>(2개월)</span>
							</sapn>
						</div>
						<div>
							<span>이런 생각을 합니다 자존감은 높이고, 자존심은 낮추려 합니다...</span>
						</div>
						<div>
							한국대학교 <span>컴퓨터 공학과</span>
						</div>
						<div class="row">
							<button class="btn btn-default col-md-offset-8">찜하기</button>
							<button class="btn btn-primary col-md-offset-0">이력서 미리보기</button>

						</div>

					</div>
				</div>
			</div>

			<!-- 페이지네이션 -->
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
		<div style="clear: both;"></div>

	</div>

	<!-- Modal -->
	<div class="modal modal-center fade" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog modal-center modal-60size " role="document">
			<div class="modal-content modal-60size">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">이력서 미리보기</h4>
				</div>
				<div class="modal-body first-body">
					<div class="title">박OO</div>
					<div class="subtitle">
						이메일 : <span class="text masking">test@test.com</span>
					</div>
					<div class="subtitle">
						연락처 : <span class="text masking">010-1234-5678</span>
					</div>
					<div class="text">
						<span>착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은
							이상의 보배를 능히 품으며</span><span class="masking">그들의 이상은 아름답고 소담스러운 열매를
							맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의</span>
					</div>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3 subtitle">경력</div>
						<div class="col-md-9">
							<div class="subtitle">
								<div>
									<span>쌍용교육센터</span>
								</div>
								<div style="text-align: right;">
									<span>2015.4 ~ 현재까지</span>
								</div>
							</div>
							<div class="text">교육 팀장</div>
							<div class="text">
								<span>착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은
									이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라
									청춘을 ! 그들의착목한는 곳이 원대하고 그들은 피가</span>
								<spa class="masking" n>더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의
								보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 !
								그들의</span>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<span class="modal-footer-text">상세이력 확인시, 열람권이 1회 차감됩니다</span>
					<button type="button" class="btn btn-info">이력서 상세보기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


	<!-- ########## 상단 헤더 시작 -->
	<%@include file="/WEB-INF/views/company/inc/footer.jsp"%>
	<!-- ########## 상단 헤더 끝 -->

	<script>
		
	</script>
</body>
</html>