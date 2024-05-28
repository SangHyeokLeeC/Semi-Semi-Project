<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	href="resources/assets/assets/css/owl.carousel.min.css">
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

<title>로그인 - Untree.co</title>
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
						<h1 class="mb-0">로그인</h1>
						<p class="text-white">기존 계정으로 로그인하여 저희와 함께하는 여정을 계속하세요!</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 로그인 섹션 -->
	<form action="login" method="post" enctype="multipart/form-data">
	<div class="untree_co-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 mx-auto">
						<div class="row">
							<div class="col-12 mb-4">
								<div class="form-group">
									<label for="example-text-input" class="col-form-label">아이디</label>
									<input class="form-control" type="text"  name="mId" />
								</div>
							</div>
							<div class="col-12 mb-4">
								<div class="form-group">
									<label for="example-search-input" class="col-form-label">비밀번호</label>
									<input class="form-control" type="password"  name="mPw">
								</div>
							</div>
						</div>
						<button type="submit" class="btn btn-primary btn-block">로그인</button>
				</div>
			</div>
		</div>
	</div>
</form>
	<!-- 알림 메시지 표시 -->
	<c:if test="${not empty message}">
    	<script>
     	   alert("${message}");
    	</script>
	</c:if>
	</br>

	<!-- 콜 투 액션 섹션 -->
	<div class="py-5 cta-section" style="background-color : rgb(105,152,171)">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-12">
					<h2 class="mb-2 text-white">여행을 더 쉽게 계획하세요. 궁금한 점 있으면 언제든
						문의하세요.</h2>
					<p class="mb-4 lead text-white text-white-opacity">Plan your
						trip easier. Feel free to contact us if you have any questions.</p>
					<p class="mb-0">
						<a href="contact.html"
							class="btn btn-outline-white text-white btn-md font-weight-bold"
							style="background-color : rgb(26,55,77)">문의하기</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터 섹션 -->
	<div class="site-footer">
		<%@ include file="footer.jsp"%>
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
