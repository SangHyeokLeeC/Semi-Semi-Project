<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap"
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

<title>문의 상세보기 - Untree.co</title>

<style>
.profile-section {
	text-align: center;
	margin-top: 30px;
	padding: 20px;
	background-color: #f9f9f9;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.profile-section .profile-card {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 20px;
	background-color: white;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 20px;
}

.profile-section img {
	border-radius: 50%;
	width: 150px;
	height: 150px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.profile-section h2 {
	margin-top: 10px;
	color: #333;
}

.profile-section table {
	margin-top: 20px;
	width: 100%;
	text-align: left;
	border-collapse: collapse;
}

.profile-section td {
	padding: 10px 0;
	border-bottom: 1px solid #ddd;
}

.profile-section .social-icons {
	margin-top: 20px;
}

.profile-section .social-icons a {
	margin: 0 10px;
	color: #333;
	transition: color 0.3s;
}

.profile-section .social-icons a:hover {
	color: #007bff;
}

.profile-section .card-title {
	font-size: 1.5rem;
	font-weight: bold;
	margin-bottom: 20px;
	color: #555;
}

.nav-tabs .nav-link.active {
	background-color: #007bff;
	color: white;
	border-radius: 5px;
}

.nav-tabs .nav-link {
	border: 1px solid #ddd;
	border-radius: 5px;
	margin-right: 5px;
}

.hero {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 200px;
}

.tab-content {
	margin-top: 20px;
}

.tab-pane {
	display: flex;
	justify-content: center;
}

.card {
	width: 100%;
	max-width: 800px;
}
</style>
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
	<jsp:include page="sidebar.jsp" />

	<!-- 히어로 섹션 -->
	<div class="hero hero-inner"
		style="background-color: rgb(105, 152, 171)">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 mx-auto text-center">
					<div class="intro-wrap">
						<h1 class="mb-0">문의상세보기</h1>
						<p class="text-white">
							"문은정보를 통해 모든 중요한 데이터를 안전하게 저장하고, 필요할 때 빠르게 접근하세요.</br> 편리한 정보 관리와 강화된
							보안을 동시에 제공합니다."
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section class="section" style="background-color: #f8f9fa;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="card-body p-5 rounded"
						style="background-color: #fff1d0;">
						<h5 class="card-title text-center text-uppercase mb-4"
							style="color: #3d405b;">작성자: ${view.IName}</h5>
						<h6 class="card-subtitle mb-4 text-center" style="color: #5e6572;">문의내용:
							${view.IContents}</h6>
						<p class="card-text text-muted text-center">
							<small> 해결완료: ${view.ICheck}</small>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 콜 투 액션 섹션 -->
	<div class="py-5 cta-section">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-12">
					<h2 class="mb-2 text-white">여행을 더 쉽게 계획하세요. 궁금한 점 있으면 언제든
						문의하세요.</h2>
					<p class="mb-4 lead text-white text-white-opacity">Plan your
						trip easier. Feel free to contact us if you have any questions.</p>
					<p class="mb-0">
						<a href="contact.html"
							class="btn btn-outline-white text-white btn-md font-weight-bold">문의하기</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- 푸터 섹션 -->
	<div class="site-footer">
		<jsp:include page="footer.jsp" />
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
	<script src="resources/assets/js/typed.js"></script>

	<script src="resources/assets/js/custom.js"></script>

	<!-- 추가된 js -->
	<script src="resources/assets/assets/js/scripts.js"></script>
	<script src="resources/assets/js/bootstrap.bundle.min.js"></script>

	
</body>
</html>
