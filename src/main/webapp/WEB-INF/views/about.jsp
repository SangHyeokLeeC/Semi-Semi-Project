<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	<title>사이트 소개 - Untree.co</title>
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
						<h1 class="mb-0">사이트 소개</h1>
						<p class="text-white">
							저희 사이트는 최고의 여행 경험을 제공하기 위해 노력합니다. <br /> 다양한 여행 정보와 팁을 통해 여러분의
							여행을 더욱 특별하게 만들어 드립니다.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 소개 섹션 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="owl-single dots-absolute owl-carousel">
						<img src="resources/assets/images/서종범갤러리/주산지국립공원공단.jpg" alt="Untree.co의 무료 HTML 템플릿"
							class="img-fluid rounded-20"> <img
							src="resources/assets/images/서종범갤러리/순천만습지.jpg" alt="Untree.co의 무료 HTML 템플릿"
							class="img-fluid rounded-20"> <img
							src="resources/assets/images/서종범갤러리/백령도.jpg" alt="Untree.co의 무료 HTML 템플릿"
							class="img-fluid rounded-20"> <img
							src="resources/assets/images/서종범갤러리/명동대성당.jpg" alt="Untree.co의 무료 HTML 템플릿"
							class="img-fluid rounded-20"> <img
							src="resources/assets/images/서종범갤러리/대전엑스포다리.jpg" alt="Untree.co의 무료 HTML 템플릿"
							class="img-fluid rounded-20">
					</div>
				</div>
				<div class="col-lg-5 pl-lg-5 ml-auto">
					<h2 class="section-title mb-4">서비스 소개</h2>
					<p>다양한 서비스가 준비되어 있습니다. 여행을 더욱 편안하게게 즐길 수 있도록 <br>최선을 다하겠습니다. 지금
						바로 더 많은 정보를 확인해보세요!</p>
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
				</div>
			</div>
		</div>
	</div>

	<!-- 팀 섹션 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-6 text-center">
					<h2 class="section-title mb-3 text-center">팀</h2>
					<p>우리는 혁신과 열정을 바탕으로 한 팀입니다. 각자의 전문성을 최대한 발휘하여 고객에게 최고의 가치를 제공합니다. 끊임없이 성장하며 새로운 도전을 즐기는 우리는 언제나 최고의 결과를 추구합니다."</p>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3 mb-4">
					<div class="team">
						<img src="resources/assets/images/팀원_사진/김보겸.jpg" alt="이미지"
							class="img-fluid mb-4 rounded-20">
						<div class="px-3">
							<h3 class="mb-0">kim bo gyeom</h3>
							<p>공동 창립자 &amp; CEO</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 mb-4">
					<div class="team">
						<img src="resources/assets/images/팀원_사진/이상혁.jpg" alt="이미지"
							class="img-fluid mb-4 rounded-20">
						<div class="px-3">
							<h3 class="mb-0">Lee sang hyeok</h3>
							<p>공동 창립자 &amp; President</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 mb-4">
					<div class="team">
						<img src="resources/assets/images/팀원_사진/하진철.jpg" alt="이미지"
							class="img-fluid mb-4 rounded-20">
						<div class="px-3">
							<h3 class="mb-0">Ha Jin Choel</h3>
							<p>부장 &amp; Executive Manager</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 mb-4">
					<div class="team">
						<img src="resources/assets/images/팀원_사진/서종범.jpg" alt="이미지"
							class="img-fluid mb-4 rounded-20">
						<div class="px-3">
							<h3 class="mb-0">Seo Jong Beom</h3>
							<p>과장 &amp; Korea Army Native</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 mb-4">
					<div class="team">
						<img src="resources/assets/images/팀원_사진/이시연.jpg" alt="이미지"
							class="img-fluid mb-4 rounded-20">
						<div class="px-3">
							<h3 class="mb-0">Lee Si yeon</h3>
							<p>대리 &amp; Assistant Manager</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 mb-4">
					<div class="team">
						<img src="resources/assets/images/팀원_사진/교수_황인철.png" alt="이미지"
							class="img-fluid mb-4 rounded-20">
						<div class="px-3">
							<h3 class="mb-0">Hwang In Cheol</h3>
							<p>특별 고문 / 자문 &amp; Auditor</p>
						</div>
					</div>
				</div>

				<div class="col-lg-3 mb-4">
					<div class="team">
						<img src="resources/assets/images/팀원_사진/유기민.jpg" alt="이미지"
							class="img-fluid mb-4 rounded-20">
						<div class="px-3">
							<h3 class="mb-0">Yoo Ki Min</h3>
							<p>특별 고문 / 자문 &amp; Auditor</p>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>

	<!-- 추천 섹션 -->
	<div class="untree_co-section testimonial-section mt-5 bg-white">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-center">
					<h2 class="section-title text-center mb-5">추천사</h2>

					<div class="owl-single owl-carousel no-nav">
						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/추천사/joebiden.png" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">Joe Biden</h3>
							<blockquote>
								<p>
									&ldquo; 길나들이고를 통하여 즐거운 국내여행을 즐길 수 있었습니다. <br>저희 미합중국
									United States of America은 길나들이고와의 협업을 통해 <br>개발도상국에서
									선진국으로의 도약을 꿈꾸고있습니다.&rdquo; <br>-미합중국 제 46대 대통령-
								</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/추천사/칭기즈칸.png" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">칭기즈 칸</h3>
							<blockquote>
								<p>
									&ldquo;1231년도 쯤에 조선을 침략할때 자주 이용했었는데, 유명한 관광지 훼손하는데 길나들이고의 정보
									공유가 많은 도움이 되었습니다. <br>다음에도 이용하고 싶어요!&rdquo; <br> -몽골
									제국의 초대 카간-
								</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/추천사/칸예웨스트.png" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">kanye west</h3>
							<blockquote>
								<p>
									&ldquo;작사 작곡을 하다가 막힐때 my wife kim kardashian과 함께 travel을 하고는 <br>했는데요.
									이때 길나들이고를 use하여 always happy하게 travel을 <br>할 수 있었습니다.
									Thank you! bro! yeah! &rdquo;<br> -음악의 신-
								</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/추천사/빠니보틀.png" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">빠니보틀</h3>
							<blockquote>
								<p>
									&ldquo;해당 홈페이지를 통해 여행다닌지 어언 7년차네요 .. 많은일이 있었습니다만 ,<br>제가
									이렇게 까지 성장할수 있게된데에는 길나들이고를 사용하여<br> 여행을 했던것이 아주 큰 도움이 되었던것
									같습니다. &rdquo;<br> -217만 여행 유튜버-
								</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="resources/assets/images/추천사/하츄핑.png" alt="이미지" class="img-fluid">
							</figure>
							<h3 class="name">하츄핑</h3>
							<blockquote>
								<p>
									&ldquo;지구를 지키다 가끔 삶이 고단하여 휴식을 취하고 싶을때 해당 홈페이지<br> 길나들이고를
									주로 사용하곤 합니다..,, <br>무거운 인형탈을 벗고 당당히 아이들의 앞에 <br>설 수
									있는 기회가 하루빨리 왔으면 좋겠습니다 . &rdquo;<br> -티니핑 주연-
								</p>
							</blockquote>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- 비디오 섹션 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row justify-content-between align-items-center">

				<div class="col-lg-6">
					<figure class="img-play-video">
						<a id="play-video" class="video-play-button"
							href="https://www.youtube.com/watch?v=mwtbEGNABWU" data-fancybox>
							<span></span>
						</a>
						<img src="resources/assets/images/서종범갤러리/투어.jpg" alt="이미지"
							class="img-fluid rounded-20">
					</figure>
				</div>

				<div class="col-lg-5">
					<h2 class="section-title text-left mb-4">Tour 비디오를 확인하세요</h2>
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

	<!-- 콜 투 액션 섹션 -->
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

</body>

</html>