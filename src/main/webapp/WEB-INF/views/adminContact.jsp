<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect"
	href="https://resources/assets/fonts.googleapis.com">
<link rel="preconnect" href="https://resources/assets/fonts.gstatic.com"
	crossorigin>
<link
	href="https://resources/assets/fonts.googleapis.com/resources/assets/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="resources/assets/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="resources/assets/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="resources/assets/fonts/icomoon/style.css">
<link rel="stylesheet"
	href="resources/assets/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="resources/assets/css/daterangepicker.css">
<link rel="stylesheet" href="resources/assets/css/aos.css">
<link rel="stylesheet" href="resources/assets/css/style.css">

<!-- 추가된 css -->
<link rel="stylesheet"
	href="resources/assets/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/assets/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/assets/assets/css/themify-icons.css">
<link rel="stylesheet" href="resources/assets/assets/css/metisMenu.css">
<link rel="stylesheet"
	href="resources/assets/assets/css/slicknav.min.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="resources/assets/assets/css/typography.css">
<link rel="stylesheet"
	href="resources/assets/assets/css/default-css.css">
<link rel="stylesheet" href="resources/assets/assets/css/styles.css">
<link rel="stylesheet" href="resources/assets/assets/css/responsive.css">
<!-- modernizr css -->
<script src="resources/assets/assets/js/vendor/modernizr-2.8.3.min.js"></script>

<title>문의확인</title>

</head>

<body>

	<!-- 모바일 메뉴 -->
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<%@ include file="sidebar.jsp"%>

	<!-- 히어로 섹션 -->
	<div class="hero hero-inner" style="background-color : rgb(105,152,171)">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 mx-auto text-center">
					<div class="intro-wrap">
						<h1 class="mb-0">문의확인</h1>
						<p class="text-white">사용자의 문의를 확인할 수 있는 관리자 공간입니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 문의 섹션 -->
		<section class="section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-11">
					<div class="card2 mb-5">
						<div class="card-body">
							<div class="pt-4 pb-4">
								<!-- Search Form -->
								<form action="bSearch" method="GET">
									<div class="row">
										
								<!-- Table -->
								<table class="table table-hover mt-4">
									<thead>
										<tr>
											<th scope="col">번호</th>									
											<th scope="col">이름</th>
											<th scope="col">이메일</th>
											<th scope="col">내용</th>
											<th scope="col">처리유무</th>											
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${boardList}">
											<tr>
												<td>${list.BNum}</td>
												<td><a href="bView?bNum=${list.BNum}">${list.BTitle}</a></td>
												<td>${list.BWriter}</td>
												<td>${list.BDate}</td>
												<td>${list.BHit}`	</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- 푸터 섹션 -->
	<div class="site-footer">
		<%@ include file="footer.jsp"%>
	</div>

	<div class="inner dark">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-8 mb-3 mb-md-0 mx-auto">
					<p>
						저작권 &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						. 모든 권리 보유. &mdash; 인천일보아카데미의 조장 의견 없조에서 제작
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- 스크립트 -->
	<script src="resources/assets/js/jquery-3.4.1.min.js"></script>
	<script src="resources/assets/js/popper.min.js"></script>
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/owl.carousel.min.js"></script>
	<script src="resources/assets/js/jquery.animateNumber.min.js"></script>
	<script src="resources/assets/js/jquery.waypoints.min.js"></script>
	<script src="resources/assets/js/jquery.fancybox.min.js"></script>
	<script src="resources/assets/js/aos.js"></script>
	<script src="resources/assets/js/moment.min.js"></script>
	<script src="resources/assets/js/daterangepicker.js"></script>
	<script src="resources/assets/js/bootstrap.bundle.min.js"></script>
	<script src="resources/assets/js/typed.js"></script>

	<script src="resources/assets/js/custom.js"></script>


	<!-- 추가된 js -->
	<script src="resources/assets/assets/js/scripts.js"></script>
</body>

</html>

