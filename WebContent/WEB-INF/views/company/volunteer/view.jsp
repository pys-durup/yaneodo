<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/company/inc/asset.jsp"%>
<link rel="stylesheet" href="/yaneodo/css/company/volunteer/view.css">
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
						onclick="location.href='layout.html';">전체보기</li>
					<li class="side-list-item">Android developer</li>
					<li class="side-list-item">IOS developer</li>
					<li class="side-list-item" onclick="location.href='matchup.html';">매치업</li>
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


		<div id="content">
			<div class="view-info">
				<div class="container">
					<div class="row make-line">
						<div class="col-md-8 title ">
							<div class="col-md-3 pic">
								<img src="/project/views/image/man_01.png" alt="">
							</div>

							<div class="col-md-3 name">
								<sapn>박OO</sapn>
							</div>
							<div class="col-md-1">
								<span class="label label-warning tag">매치업</span>
							</div>

						</div>
						<div class="col-md-4">
							<input type="button" class="btn btn-primary" value="보낸 제안 확인">
						</div>
					</div>

					<div class="row">
						<div class="col-md-2 subtitle">타임라인</div>
						<div class="col-md-9 subtitle">
							<p>매칭 : 2021-01-17, 09:25</p>
							<p>제안 : 2021-01-17, 11:25</p>
						</div>
					</div>
				</div>
			</div>


			<div class="view-resume">
				<div class="view-resume-header">
					<div class="title">이력서 & 첨부파일</div>
					<div>
						<span class="glyphicon glyphicon-file"></span> 원티드 이력서
					</div>
				</div>
				<div class="view-resume-container">
					<div class="view-resume-body">
						<div class="title">박OO</div>
						<div class="subtitle">
							이메일 : <span class="text ">test@test.com</span>
						</div>
						<div class="subtitle">
							연락처 : <span class="text ">010-1234-5678</span>
						</div>
						<p>착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를
							능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의</p>
						<div class="make-line"></div>
						<div>경력</div>
						<div>Lorem ipsum dolor sit amet consectetur adipisicing
							elit. Voluptatum repudiandae totam temporibus iusto rerum modi
							repellat dolorum earum reiciendis corrupti dolores, ea dicta
							officiis qui quaerat vitae quia? Unde, omnis iure exercitationem
							reiciendis repellat est illum quidem dicta explicabo voluptatum?
							Et dicta dolorem aliquid a cum earum aut necessitatibus quaerat
							corrupti similique autem, consequatur tempore asperiores
							doloremque accusantium est? Ex est mollitia ipsa nostrum debitis
							nisi harum. Explicabo natus dolorum officiis assumenda quod, quam
							nobis sint a sapiente pariatur ullam, asperiores voluptatibus.
							Iure corrupti molestiae animi error, maiores eveniet ipsam.
							Excepturi reprehenderit cum possimus eos placeat ad sequi
							repellat odio?</div>
						<div class="make-line"></div>
						<div>추가...</div>
						<div>Lorem ipsum dolor sit amet consectetur, adipisicing
							elit. Incidunt labore illo sequi natus cupiditate. Tenetur earum
							sapiente neque laboriosam nihil magnam aut cupiditate repudiandae
							sed odio nulla consequuntur adipisci error natus molestiae, cum
							reiciendis officiis voluptas fugiat! Quam earum autem nam fugiat?
							Perspiciatis est debitis magnam impedit laudantium accusantium
							praesentium neque quo harum qui nemo, iste iusto veritatis
							tempore asperiores aut cumque excepturi ut molestias libero
							quibusdam eius, voluptatem voluptates? Quo sapiente, explicabo
							cum quae ut earum, deserunt, accusantium delectus quaerat velit
							fugiat quasi non ducimus placeat enim dolore sint eum quas
							eveniet voluptate ipsam dolorum voluptatum. Porro, nihil veniam.</div>
					</div>
					<div class="masking">후보자가 제안을 수락할 경우 이름, 연락처, 이메일을 확인할 수 있습니다
					</div>

				</div>
			</div>
		</div>
		<div style="clear: both;"></div>

	</div>


	<!-- ########## 하단 푸터 시작 -->
	<%@include file="/WEB-INF/views/company/inc/footer.jsp"%>
	<!-- ########## 하단 푸터 끝 -->

	<script>

	</script>
</body>
</html>