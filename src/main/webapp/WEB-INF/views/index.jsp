<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap4" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap" rel="stylesheet">

	<!-- 스타일시트 연결 -->
	<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/assets/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/assets/css/jquery.fancybox.min.css">
	<link rel="stylesheet" href="resources/assets/fonts/icomoon/style.css">
	<link rel="stylesheet" href="resources/assets/fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="resources/assets/css/daterangepicker.css">
	<link rel="stylesheet" href="resources/assets/css/aos.css">
	<link rel="stylesheet" href="resources/assets/css/style.css">
  
  <!-- 추가된 css -->
  <link rel="stylesheet" href="resources/assets/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/assets/assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="resources/assets/assets/css/themify-icons.css">
  <link rel="stylesheet" href="resources/assets/assets/css/metisMenu.css">
  <link rel="stylesheet" href="resources/assets/assets/css/slicknav.min.css">
  <!-- amchart css -->
  <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
  <!-- others css -->
  <link rel="stylesheet" href="resources/assets/assets/css/typography.css">
  <link rel="stylesheet" href="resources/assets/assets/css/default-css.css">
  <link rel="stylesheet" href="resources/assets/assets/css/styles.css">
  <link rel="stylesheet" href="resources/assets/assets/css/responsive.css">
  <!-- modernizr css -->
  <script src="resources/assets/assets/js/vendor/modernizr-2.8.3.min.js"></script>
<title>길나들이고 - Untree.co</title>
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

	<%@ include file="sidebar.jsp" %>

	<!-- 히어로 섹션 -->
	<div class="hero">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="intro-wrap">
						<h1 class="mb-5">
							<span class="d-block">즐거운 여행을</span> <span class="typed-words"></span>에서
							시작하세요
						</h1>

						<div class="row">
							<div class="col-12">
								<form class="form">
									<div class="row mb-2">
										<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
											<select name="" id="" class="form-control custom-select">
												<option value="">전체</option>
												<option value="">서울</option>
												<option value="">경기도</option>
												<option value="">인천</option>
												<option value="">강원도</option>
												<option value="">대구</option>
												<option value="">광주</option>
												<option value="">부산</option>
												<option value="">제주도</option>
											</select>
										</div>
										<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-5">
											<input type="text" class="form-control" name="daterange"
												placeholder="날짜 선택">
										</div>
										<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-3">
											<input type="text" class="form-control" placeholder="인원수">
										</div>

									</div>
									<div class="row align-items-center">
										<div class="col-sm-12 col-md-6 mb-3 mb-lg-0 col-lg-4">
											<input type="submit" class="btn btn-primary btn-block"
												value="검색">
										</div>
										<div class="col-lg-8">
											<label class="control control--checkbox mt-3"> <span
												class="caption">검색 저장</span> <input type="checkbox"
												checked="checked" />
												<div class="control__indicator"></div>
											</label>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="slides">
						<img src="resources/assets/images/서종범갤러리/남산타워.jpg" alt="이미지" class="img-fluid active"> 
					    <img src="resources/assets/images/서종범갤러리/광명동굴.jpg" alt="이미지" class="img-fluid"> 
						<img src="resources/assets/images/서종범갤러리/연수구-송도-센트럴파크.jpg" alt="이미지" class="img-fluid">
						<img src="resources/assets/images/서종범갤러리/남이섬.jpg" alt="이미지" class="img-fluid">
						<img src="resources/assets/images/서종범갤러리/앞산해넘이전망대.jpg" alt="이미지" class="img-fluid">
						<img src="resources/assets/images/서종범갤러리/우치공원동물원.jpg" alt="이미지" class="img-fluid">
						<img src="resources/assets/images/서종범갤러리/해운대.jpg" alt="이미지" class="img-fluid">
						<img src="resources/assets/images/서종범갤러리/성산일출봉.jpg" alt="이미지" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 더 많은 서비스 섹션 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-lg-6 text-center">
					<h2 class="section-title text-center mb-3">더 많은 서비스</h2>
					<p>
						다양한 서비스가 준비되어 있습니다. 여행을 더욱 편안하게게 즐길 수 있도록 <br>최선을 다하겠습니다. 지금
						바로 더 많은 정보를 확인해보세요!
					</p>
				</div>
			</div>
			<div class="row align-items-stretch">
				<div class="col-lg-4 order-lg-1">
					<div class="h-100">
						<div class="frame h-100">
							<div class="feature-img-bg h-100"
								style="background-image: url('resources/assets/images/서종범갤러리/남산타워.jpg');"></div>
						</div>
					</div>
				</div>

				<div
					class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-1">
					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-house display-4 text-primary"></span>
							<h3>아름다운 콘도</h3>
							<p class="mb-0">
								아름답고 쾌적한 숙소를 추천해드립니다.<br> 지역별 최고 평점을 받은 숙소를 엄선하여, <br>편안하고
								잊지 못할 여행을 보장합니다.
							</p>
						</div>
					</div>

					<div class="feature-1 ">
						<div class="align-self-center">
							<span class="flaticon-restaurant display-4 text-primary"></span>
							<h3>레스토랑 & 카페</h3>
							<p class="mb-0">
								현지에서 가장 인기 있는 레스토랑과 <br>카페를 추천해드립니다. 잊지 못할 <br>미식 여행을
								경험하세요.
							</p>
						</div>
					</div>
				</div>

				<div
					class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-3">
					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-mail display-4 text-primary"></span>
							<h3>쉬운 예약</h3>
							<p class="mb-0">
								쉽고 빠른 연결 서비스를 제공합니다.<br> 편리한 예약 시스템과 간편한 문의 절차로 <br>
								여행을 준비하세요.
							</p>
						</div>
					</div>

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-phone-call display-4 text-primary"></span>
							<h3>24시간 상담전화</h3>
							<p class="mb-0">24시간 상담전화 서비스로 언제든지 여행 관련 문의와 지원을 제공합니다.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- 숫자 섹션 -->
	<div class="untree_co-section count-numbers py-5">
		<div class="container">
			<div class="row">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="400">0</span>
						</div>
						<span class="caption">여행 수</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="10000">0</span>
						</div>
						<span class="caption">고객 수</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="5">0</span>
						</div>
						<span class="caption">직원 수</span>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3">
					<div class="counter-wrap">
						<div class="counter">
							<span class="" data-number="1">0</span>
						</div>
						<span class="caption">국가 수</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 인기 목적지 섹션 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7">
					<h2 class="section-title text-center">인기 목적지</h2>
				</div>
			</div>

			<div class="owl-carousel owl-3-slider">

				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/남산타워.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>남산 타워</h3>
							<span class="location">서울</span>
						</div> <img src="resources/assets/images/서종범갤러리/남산타워.jpg" alt="이미지" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/광명동굴.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>광명동굴</h3>
							<span class="location">경기</span>
						</div> <img src="resources/assets/images/서종범갤러리/광명동굴.jpg" alt="이미지" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/연수구-송도-센트럴파크.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>송도 센트럴파크</h3>
							<span class="location">인천</span>
						</div> <img src="resources/assets/images/서종범갤러리/연수구-송도-센트럴파크.jpg" alt="이미지"
						class="img-fluid">
					</a>
				</div>


				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/남이섬.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>남이섬</h3>
							<span class="location">강원도</span>
						</div> <img src="resources/assets/images/서종범갤러리/남이섬.jpg" alt="이미지" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/앞산해넘이전망대.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>앞산해넘이전망대</h3>
							<span class="location">대구</span>
						</div> <img src="resources/assets/images/서종범갤러리/앞산해넘이전망대.jpg" alt="이미지" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/우치공원동물원.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>우치공원 동물원</h3>
							<span class="location">광주</span>
						</div> <img src="resources/assets/images/서종범갤러리/우치공원동물원.jpg" alt="이미지" class="img-fluid">
					</a>
				</div>

				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/해운대.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>해운대</h3>
							<span class="location">부산</span>
						</div> <img src="resources/assets/images/서종범갤러리/해운대.jpg" alt="이미지" class="img-fluid">
					</a>
				</div>
				<div class="item">
					<a class="media-thumb" href="resources/assets/images/서종범갤러리/성산일출봉.jpg"
						data-fancybox="gallery">
						<div class="media-text">
							<h3>성산 일출봉</h3>
							<span class="location">제주도</span>
						</div> <img src="resources/assets/images/서종범갤러리/성산일출봉.jpg" alt="이미지" class="img-fluid">
					</a>
				</div>

			</div>

		</div>
	</div>

	<!-- 후기 섹션 -->
	<div class="untree_co-section testimonial-section mt-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-center">
					<h2 class="section-title text-center mb-5">후기</h2>
					<div class="owl-single owl-carousel no-nav">
					
						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/서종범갤러리/손흥민.png" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">손흥민</h3>
							<blockquote>
								<p>
									&ldquo;제 오랜 무관 동료인 헤리케인과 함께 국내여행을 할때 자주 이용하고는 합니다. 항상 좋은 경치와
									맛있는 식당으로 저희를 안내해주는 길나들이고 .. <br>정말 강추합니다 !! &rdquo;<br>-토트넘
									홋스퍼 주장-
								</p>
							</blockquote>
						</div>
						
						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/서종범갤러리/루피.jpg" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">루피</h3>
							<blockquote>
								<p>&ldquo; 소말리아 지역 부근에서 활동하는 해적입니다. 길나들이고를 이용하여 한국 영해를 침범하여
									노략질하는게 요즘 제 삶의 이유입니다. 동료들 그리고 길나들이고와 함께 꿈을 향해 나아가도록 하겠습니다.
									&rdquo;</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/서종범갤러리/오태식.jpg" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">오태식</h3>
							<blockquote>
								<p>꼭 그렇게.. 여행을 계획없이 가야만.. 속이 후련했냐! 사람이 여행을 갔으면, 행복 해질려면
									길나들이고를 이용하는게 이치라더라, 알아들었냐? &ldquo;&rdquo;</p>
							</blockquote>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 특별 제안 & 할인 섹션 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-lg-6">
					<h2 class="section-title text-center mb-3">특별 제안 및 할인</h2>
					<p>저희 사이트에서는 여러분의 여행을 더욱 즐겁게 해드리기 위해 다양한 특별 제안과 할인 혜택을 제공하고
						있습니다. 지금 예약하시면 최고의 가격으로 꿈꾸던 여행을 떠날 수 있는 기회를 놓치지 마세요!
				</div>
			</div>
			<div class="row">
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="resources/assets/images/서종범갤러리/남산타워.jpg" alt="이미지" class="img-fluid"></a> <span
							class="d-flex align-items-center loc mb-2"> 
							<span class="icon-room mr-3"></span> <span>서울</span>
							
						</span>
						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">남산타워</a>
								</h3>
							</div>

						</div>

					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="resources/assets/images/서종범갤러리/광명동굴.jpg" alt="이미지" class="img-fluid"></a> <span
							class="d-flex align-items-center loc mb-2"> <span
							class="icon-room mr-3"></span> <span>경기</span>
						</span>
						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">광명동굴</a>
								</h3>
							</div>

						</div>

					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="resources/assets/images/서종범갤러리/연수구-송도-센트럴파크.jpg" alt="이미지" class="img-fluid"></a>
						<span class="d-flex align-items-center loc mb-2"> <span
							class="icon-room mr-3"></span> <span>인천</span>
						</span>
						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">송도 센트럴파크</a>
								</h3>
							</div>

						</div>

					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
					<div class="media-1">
						<a href="#" class="d-block mb-3"><img
							src="resources/assets/images/서종범갤러리/남이섬.jpg" alt="이미지" class="img-fluid"></a> <span
							class="d-flex align-items-center loc mb-2"> <span
							class="icon-room mr-3"></span> <span>강원도</span>
						</span>

						<div class="d-flex align-items-center">
							<div>
								<h3>
									<a href="#">남이섬</a>
								</h3>
							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- 투어 비디오 섹션 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row justify-content-between align-items-center">

				<div class="col-lg-6">
					<figure class="img-play-video">
						<a id="play-video" class="video-play-button"
							href="https://www.youtube.com/watch?v=mwtbEGNABWU" data-fancybox>
							<span></span>
						</a>
						<img src="resources/assets/images/서종범갤러리/투어.png" alt="이미지"
							class="img-fluid rounded-20">
					</figure>
				</div>

				<div class="col-lg-5">
					<h2 class="section-title text-left mb-4">투어 비디오를 확인하세요</h2>
					<p>"환상적인 길나들이고에 오신 것을 환영합니다! 아름다운 풍경과 매력적인 문화가 기다리고 있는 이곳에서의
						모험을 함께 하세요.</p>

					<p class="mb-4">비디오를 통해 길나들이고의 최고의 명소와 숨겨진 보석들을 만나보세요!"</p>

					<ul class="list-unstyled two-col clearfix">
						<li>야외 레크리에이션 활동</li>
						<li>항공사</li>
						<li>렌터카</li>
						<li>크루즈 라인</li>
						<li>호텔</li>
						<li>철도</li>
						<li>여행 보험</li>
						<li>패키지 투어</li>
						<li>보험</li>
						<li>가이드북</li>
					</ul>

					<p>
						<a href="#" class="btn btn-primary">시작하기</a>
					</p>


				</div>
			</div>
		</div>
	</div>

	<!-- Call to Action 섹션 -->
	 <div class="py-5 cta-section">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2 class="mb-2 text-white">여행을 더 쉽게 계획하세요. 궁금한 점 있으면 언제든 문의하세요. </h2>
          <p class="mb-4 lead text-white text-white-opacity">Plan your trip easier. Feel free to contact us if you have
            any questions.</p>
          <p class="mb-0"><a href="booking.html"
              class="btn btn-outline-white text-white btn-md font-weight-bold">문의하기</a></p>
        </div>
      </div>
    </div>
  </div>

	<!-- 푸터 섹션 -->
	<div class="site-footer">
	    <%@ include file = "footer.jsp" %>
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
	<script>
		$(function() {
			var slides = $('.slides'),
			images = slides.find('img');

			images.each(function(i) {
				$(this).attr('data-id', i + 1);
			})

			var typed = new Typed('.typed-words', {
				strings: ["서울", " 경기도", "인천", "강원도", "대구","광주","부산","제주도"],
				typeSpeed: 80,
				backSpeed: 80,
				backDelay: 4000,
				startDelay: 1000,
				loop: true,
				showCursor: true,
				preStringTyped: (arrayPos, self) => {
					arrayPos++;
					console.log(arrayPos);
					$('.slides img').removeClass('active');
					$('.slides img[data-id="'+arrayPos+'"]').addClass('active');
				}

			});
		})
	</script>

	
	

</body>

</html>
