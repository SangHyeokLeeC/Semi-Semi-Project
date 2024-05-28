<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
* 템플릿 이름: Tour
* 템플릿 저자: Untree.co
* 템플릿 URI: https://untree.co/
* 라이센스: https://creativecommons.org/licenses/by/3.0/
-->
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

<title>Untree.co의 무료 여행 에이전시 부트스트랩 템플릿</title>
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

	<!-- 헤더 부분 시작 -->
	<div class="hero hero-inner">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 mx-auto text-center">
					<div class="intro-wrap">
						<h1 class="mb-0">요소</h1>
						<p class="text-white">"길나들이고는 여행 계획을 관리할 수 있는 플랫폼입니다."</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 헤더 부분 끝 -->

	<!-- 섹션 -->
	<div class="untree_co-section">
		<div class="container my-5">
			<div class="mb-5">
				<div class="owl-single dots-absolute owl-carousel">
					<img src="resources/assets/images/한국1.png"
						alt="Untree.co의 무료 HTML 템플릿" class="img-fluid"> <img
						src="resources/assets/images/한국2.png" alt="Untree.co의 무료 HTML 템플릿"
						class="img-fluid"> <img
						src="resources/assets/images/한국3.png" alt="Untree.co의 무료 HTML 템플릿"
						class="img-fluid"> <img
						src="resources/assets/images/한국4.png" alt="Untree.co의 무료 HTML 템플릿"
						class="img-fluid"> <img
						src="resources/assets/images/한국5.png" alt="Untree.co의 무료 HTML 템플릿"
						class="img-fluid">
				</div>
			</div>

			<div class="row justify-content-center">

				<div class="col-lg-4">
					<div class="custom-block" data-aos="fade-up">
						<h2 class="section-title">자주 묻는 질문</h2>
						<div class="custom-accordion" id="accordion_1">
							<div class="accordion-item">
								<h2 class="mb-0">
									<button class="btn btn-link" type="button"
										data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">홈페이지의 주요 목적은 무엇인가요?</button>
								</h2>

								<div id="collapseOne" class="collapse show"
									aria-labelledby="headingOne" data-parent="#accordion_1">
									<div class="accordion-body">"이 홈페이지는 전 세계의 아름다운 여행지를 소개하고, 여행자들에게 유용한 정보를 제공하는 것을 목적으로 합니다."</div>
								</div>
							</div>
							<!-- .accordion-item -->

							<div class="accordion-item">
								<h2 class="mb-0">
									<button class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo">홈페이지의 주요 기능은 무엇인가요?</button>
								</h2>
								<div id="collapseTwo" class="collapse"
									aria-labelledby="headingTwo" data-parent="#accordion_1">
									<div class="accordion-body">"주요 기능으로는 여행지 검색, 사용자 리뷰 및 평점 보기, 맞춤형 여행 코스 추천, 여행지 사진 및 동영상을 볼 수 있는 기능이 있습니다."</div>
								</div>
							</div>
							<!-- .accordion-item -->
							<div class="accordion-item">
								<h2 class="mb-0">
									<button class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapseThree"
										aria-expanded="false" aria-controls="collapseThree">고객 지원 또는 문의 방법은 무엇인가요?

</button>
								</h2>

								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree" data-parent="#accordion_1">
									<div class="accordion-body">"고객 지원은 홈페이지 내의 '문의하기' 섹션을 통해 제공되며, 이메일을 통해서도 질문이나 문제를 해결할 수 있습니다.
									"</div>
								</div>

							</div>
							<!-- .accordion-item -->

						</div>
					</div>
					<!-- END .custom-block -->
					<div class="custom-block" data-aos="fade-up">
						<h2 class="section-title">갤러리</h2>
						<div class="row gutter-v2 gallery">
							<div class="col-4">
								<a href="resources/assets/images/ele_갤러리/갤러리1.jpg"
									class="gal-item" data-fancybox="gal"><img
									src="resources/assets/images/ele_갤러리/갤러리1.jpg" alt="이미지"
									class="img-fluid"></a>
							</div>
							<div class="col-4">
								<a href="resources/assets/images/ele_갤러리/갤러리2.jpg"
									class="gal-item" data-fancybox="gal"><img
									src="resources/assets/images/ele_갤러리/갤러리2.jpg" alt="이미지"
									class="img-fluid"></a>
							</div>
							<div class="col-4">
								<a href="resources/assets/images/ele_갤러리/갤러리3.jpg"
									class="gal-item" data-fancybox="gal"><img
									src="resources/assets/images/ele_갤러리/갤러리3.jpg" alt="이미지"
									class="img-fluid"></a>
							</div>
							<div class="col-4">
								<a href="resources/assets/images/ele_갤러리/갤러리4.png"
									class="gal-item" data-fancybox="gal"><img
									src="resources/assets/images/ele_갤러리/갤러리4.png" alt="이미지"
									class="img-fluid"></a>
							</div>
							<div class="col-4">
								<a href="resources/assets/images/ele_갤러리/갤러리5.jpg"
									class="gal-item" data-fancybox="gal"><img
									src="resources/assets/images/ele_갤러리/갤러리5.jpg" alt="이미지"
									class="img-fluid"></a>
							</div>
							<div class="col-4">
								<a href="resources/assets/images/ele_갤러리/갤러리6.png"
									class="gal-item" data-fancybox="gal"><img
									src="resources/assets/images/ele_갤러리/갤러리6.png" alt="이미지"
									class="img-fluid"></a>
							</div>
						</div>
					</div>
					<!-- END .custom-block -->

					<div class="custom-block" data-aos="fade-up">
						<h2 class="section-title">비디오</h2>

						<a href="https://www.youtube.com/watch?v=pYzX7cqK_JQ"
							data-fancybox class="video-wrap"> <span class="play-wrap"><span
								class="icon-play"></span></span> <img
							src="resources/assets/images/배경2.png" alt="이미지"
							class="img-fluid rounded">
						</a>
					</div>
					<!-- END .custom-block -->
				</div>
				<div class="col-lg-4">
					<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
						<h2 class="section-title">양식</h2>
						<form class="contact-form bg-white">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="text-black" for="fname">이름</label> <input
											type="text" class="form-control" id="fname">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="text-black" for="lname">성</label> <input
											type="text" class="form-control" id="lname">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="text-black" for="email">이메일 주소</label> <input
									type="email" class="form-control" id="email"
									aria-describedby="emailHelp"> <small id="emailHelp"
									class="form-text text-muted">우리는 절대 당신의 이메일을 다른 사람과
									공유하지 않습니다.</small>
							</div>
							<div class="form-group">
								<label class="text-black" for="password">비밀번호</label> <input
									type="password" class="form-control" id="password">
							</div>
							<div class="form-group">
								<label class="text-black" for="message">메시지</label>
								<textarea name="" class="form-control" id="message" cols="30"
									rows="5"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">제출</button>
						</form>
					</div>

					<div class="custom-block" data-aos="fade-up">
						<h2 class="section-title">소셜 아이콘</h2>
						<ul class="list-unstyled social-icons light">
							<li><a href="#"><span class="icon-facebook"></span></a></li>
							<li><a href="#"><span class="icon-twitter"></span></a></li>
							<li><a href="#"><span class="icon-linkedin"></span></a></li>
							<li><a href="#"><span class="icon-google"></span></a></li>
							<li><a href="#"><span class="icon-play"></span></a></li>
						</ul>
					</div>
					<!-- END .custom-block -->

					<div class="custom-block" data-aos="fade-up" data-aos-delay="100">
						<div class="text-center">
							<h2 class="section-title text-center">슬라이더</h2>
						</div>
						<div class="owl-single owl-carousel no-nav">

							<div class="testimonial mx-auto">
								<figure class="img-wrap">
									<img src="resources/assets/images/person_5.jpg" alt="이미지"
										class="img-fluid">
								</figure>
								<h3 class="name">Lee Sang Hyuk</h3>
								<blockquote>
									<p>사장 &amp; president</p>
								</blockquote>
							</div>

							<div class="testimonial mx-auto">
								<figure class="img-wrap">
									<img src="resources/assets/images/person_1.jpg" alt="이미지"
										class="img-fluid">
								</figure>
								<h3 class="name">Ha Jin Choel</h3>
								<blockquote>
									<p>부장 &amp; Executive Manager</p>
								</blockquote>
							</div>

							<div class="testimonial mx-auto">
								<figure class="img-wrap">
									<img src="resources/assets/images/person_2.jpg" alt="이미지"
										class="img-fluid">
								</figure>
								<h3 class="name">Seo Jong Beom</h3>
								<blockquote>
									<p>과장 &amp; Korea Army Native</p>
								</blockquote>
							</div>

							<div class="testimonial mx-auto">
								<figure class="img-wrap">
									<img src="resources/assets/images/person_3.jpg" alt="이미지"
										class="img-fluid">
								</figure>
								<h3 class="name">Lee Si Yeon</h3>
								<blockquote>
									<p>대리 &amp; Assistant Manager</p>
								</blockquote>
							</div>

						</div>
					</div>

				</div>
			</div>

			<div class="row justify-content-center mt-5 section">

				<div class="col-lg-10">
					<div class="row mb-5">
						<div class="col text-center">
							<h2 class="section-title text-center">우리 팀</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3 mb-4">
							<div class="team">
								<img src="resources/assets/images/person_5.jpg" alt="이미지"
									class="img-fluid mb-4">
								<div class="px-3">
									<h3 class="mb-0">Lee Sang Hyuk</h3>
									<p>사장 &amp; president</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 mb-4">
							<div class="team">
								<img src="resources/assets/images/person_1.jpg" alt="이미지"
									class="img-fluid mb-4">
								<div class="px-3">
									<h3 class="mb-0">Ha Jin Choel</h3>
									<p>부장 &amp; Executive Manager</p>
								</div>
							</div>
						</div>

						<div class="col-lg-3 mb-4">
							<div class="team">
								<img src="resources/assets/images/person_2.jpg" alt="이미지"
									class="img-fluid mb-4">
								<div class="px-3">
									<h3 class="mb-0">Seo Jong Beom</h3>
									<p>과장 &amp; Korea Army Native</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 mb-4">
							<div class="team">
								<img src="resources/assets/images/person_3.jpg" alt="이미지"
									class="img-fluid mb-4">
								<div class="px-3">
									<h3 class="mb-0">Lee Si Yeon</h3>
									<p>대리 &amp; Assistant Manager</p>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>

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
						<a href="booking.html"
							class="btn btn-outline-white text-white btn-md font-weight-bold">문의하기</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- 푸터 섹션 -->
	<div class="site-footer">
		<%@ include file="footer.jsp"%>
	</div>

	<!-- 푸터 부분 끝-->

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