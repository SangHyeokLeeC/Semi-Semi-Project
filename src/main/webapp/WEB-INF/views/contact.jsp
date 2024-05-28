<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
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

    <title>문의하기</title>

    <style>
        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
        .valid-message {
            color: blue;
            font-size: 12px;
            margin-top: 5px;
        }
        .input-error {
            border-color: red;
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

    <%@ include file="sidebar.jsp"%>

    <!-- 히어로 섹션 -->
    <div class="hero hero-inner" style="background-color: rgb(105, 152, 171)">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 mx-auto text-center">
                    <div class="intro-wrap">
                        <h1 class="mb-0">문의하기</h1>
                        <p class="text-white">여긴 항상 열려 있는 공간입니다. 궁금한 점은 언제든지 저희에게 문의해 주세요.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 문의 섹션 -->
    <div class="untree_co-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <form action="contact" method="post" enctype="multipart/form-data" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label class="text-black" for="IName">이름</label>
                                    <input type="text" name ="IName" class="form-control" id="IName">
                                    <p id="checkFname" class="error-message"></p>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="text-black" for="IContents">전달 내용</label>
                            <textarea name="IContents" class="form-control" id="IContents" cols="30" rows="5"></textarea>
                            <p id="checkMessage" class="error-message"></p>
                        </div>
                        <div class="form-group">
                            <label class="text-black" for="IMail">이메일 주소</label>
                            <input type="email" name="IMail" class="form-control" id="IMail">
                            <p id="checkEmail" class="error-message"></p>
                        </div>
                        <div class="form-group">
                            <label class="radio"for="ICheck">해결 완료</label>
                            <input type="checkbox" name="ICheck" class="form-control" id="ICheck">
                            <p id="checkMessage" class="error-message"></p>
                        </div>

                        <input type="submit"  class="btn btn-primary" value="보내기"/>
                    </form>
                </div>
                <div class="col-lg-5 ml-auto">
                    <div class="quick-contact-item d-flex align-items-center mb-4">
                        <span class="flaticon-house"></span>
                        <address class="text">학익동 663-1번지 5층 남구 인천광역시 KR</address>
                    </div>
                    <div class="quick-contact-item d-flex align-items-center mb-4">
                        <span class="flaticon-phone-call"></span>
                        <address class="text">032-876-3332</address>
                    </div>
                    <div class="quick-contact-item d-flex align-items-center mb-4">
                        <span class="flaticon-mail"></span>
                        <address class="text">mail@example.com</address>
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
                                    &ldquo; 길나들이고를 통하여 즐거운 국내여행을 즐길 수 있었습니다. <br>저희 미합중국 United States of America은 길나들이고와의 협업을 통해 <br>개발도상국에서 선진국으로의 도약을 꿈꾸고있습니다.&rdquo; <br>-미합중국 제 46대 대통령-
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
                                    &ldquo;1231년도 쯤에 조선을 침략할때 자주 이용했었는데, 유명한 관광지 훼손하는데 길나들이고의 정보 공유가 많은 도움이 되었습니다. <br>다음에도 이용하고 싶어요!&rdquo; <br> -몽골 제국의 초대 카간-
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
                                    &ldquo;작사 작곡을 하다가 막힐때 my wife kim kardashian과 함께 travel을 하고는 <br>했는데요. 이때 길나들이고를 use하여 always happy하게 travel을 <br>할 수 있었습니다. Thank you! bro! yeah! &rdquo;<br> -음악의 신-
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
                                    &ldquo;해당 홈페이지를 통해 여행다닌지 어언 7년차네요 .. 많은일이 있었습니다만 ,<br>제가 이렇게 까지 성장할수 있게된데에는 길나들이고를 사용하여<br> 여행을 했던것이 아주 큰 도움이 되었던것 같습니다. &rdquo;<br> -217만 여행 유튜버-
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
                                    &ldquo;지구를 지키다 가끔 삶이 고단하여 휴식을 취하고 싶을때 해당 홈페이지<br> 길나들이고를 주로 사용하곤 합니다..,, <br>무거운 인형탈을 벗고 당당히 아이들의 앞에 <br>설 수 있는 기회가 하루빨리 왔으면 좋겠습니다 . &rdquo;<br> -티니핑 주연-
                                </p>
                            </blockquote>
                        </div>

                    </div>

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
        document.getElementById('contactForm').addEventListener('submit', function (event) {
            let valid = true;

            let fname = document.getElementById('IName');
            let email = document.getElementById('IMail');
            let message = document.getElementById('IContents');

            let checkFname = document.getElementById('checkFname');
            let checkEmail = document.getElementById('checkEmail');
            let checkMessage = document.getElementById('checkMessage');

            // 이름 검사
            if (!fname.value.trim()) {
                valid = false;
                checkFname.textContent = "이름을 입력해주세요.";
                fname.classList.add("input-error");
            } else {
                checkFname.textContent = "";
                fname.classList.remove("input-error");
            }

            // 이메일 유효성 검사
            let emailRegEx = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;
            if (!email.value.trim()) {
                valid = false;
                checkEmail.textContent = "이메일 주소를 입력해주세요.";
                email.classList.add("input-error");
            } else if (!emailRegEx.test(email.value)) {
                valid = false;
                checkEmail.textContent = "유효한 이메일 주소를 입력해주세요.";
                email.classList.add("input-error");
            } else {
                checkEmail.textContent = "";
                email.classList.remove("input-error");
            }

            // 메시지 검사
            if (!message.value.trim()) {
                valid = false;
                checkMessage.textContent = "전달 내용을 입력해주세요.";
                message.classList.add("input-error");
            } else {
                checkMessage.textContent = "";
                message.classList.remove("input-error");
            }

            if (!valid) {
                event.preventDefault();
            }
        });

        document.querySelectorAll('.form-control').forEach(element => {
            element.addEventListener('focus', () => {
                element.classList.remove('input-error');
            });
        });
    </script>
</body>

</html>
