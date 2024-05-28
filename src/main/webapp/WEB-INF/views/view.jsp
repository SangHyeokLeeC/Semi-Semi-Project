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

<title>내정보 - Untree.co</title>

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

.profile-container {
    margin-top: 20px;
}
.profile-image {
    text-align: center;
}
.profile-image img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
}
.profile-details {
    display: flex;
    flex-direction: column;
    justify-content: center;
}
.profile-details .detail-item {
    margin-bottom: 10px;
}
hr {
    border: 0;
    border-top: 1px dashed #ccc;
    margin: 20px 0;
    width: 100%;
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
						<h1 class="mb-0">내정보</h1>
						<p class="text-white">
							"내정보를 통해 모든 중요한 데이터를 안전하게 저장하고, 필요할 때 빠르게 접근하세요.</br> 편리한 정보 관리와 강화된
							보안을 동시에 제공합니다."
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 회원정보 섹션 -->
	<section class="section profile-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-8">
					<div class="card">
						<div class="card-body pt-3">

							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered" role="tablist">
								<li class="nav-item" role="presentation">
									<button class="btn nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview" aria-selected="true"
										role="tab">회원정보</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="btn nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-edit" aria-selected="false"
										role="tab" tabindex="-1">회원수정</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="btn nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-settings" aria-selected="false"
										role="tab-1" tabindex="-1">회원탈퇴</button>
								</li>
							</ul>
							<br/>

							<div class="tab-content pt-2">
								<div class="tab-pane fade profile-overview active show"
									id="profile-overview" role="tabpanel">
									
									<div class="card-body profile-card pt-4">
										<img src="./resources/profile/${view.MProfileName}"
											alt="Profile" class="rounded-circle">
										<h2>${view.MId}</h2>
									<hr>
									<br/>

									<div class="col-lg-8 profile-details">
									<h5 class="card-title">Profile Details</h5>
						                <div class="detail-item"><strong>이름:</strong> ${view.MName}</div>
										<div class="detail-item"><strong>생년월일:</strong> ${view.MBirth}</div>
										<div class="detail-item"><strong>성별:</strong> ${view.MGender}</div>
										<div class="detail-item"><strong>이메일:</strong> ${view.MEmail}</div>
										<div class="detail-item"><strong>연락처:</strong> ${view.MPhone}</div>
										<div class="detail-item"><strong>주소:</strong> ${view.MAddr}</div>
					        	    </div>
          
									</div>
								</div>
								
								<!-- 회원 수정 -->
								<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

									<!-- Profile Edit Form -->
									<form action="mModify" method="post"
										enctype="multipart/form-data">

										<!-- 비밀번호 -->
										<div class="row mb-3">
											<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호</label>
											<div class="col-sm-10">
												<input type="password" name="mPw" id="mPw"
													class="form-control" />
												<p id="check2"></p>
											</div>
										</div>

										<!-- 비밀번호 확인 -->
										<div class="row mb-3">
											<label for="inputPassword" class="col-sm-2 col-form-label">비밀번호
												확인</label>
											<div class="col-sm-10">
												<input type="password" id="checkPw" class="form-control" />
												<p id="check3"></p>
											</div>
										</div>

										<!-- 이름 -->
										<div class="row mb-3">
											<label for="inputText" class="col-sm-2 col-form-label">이름</label>
											<div class="col-sm-10">
												<input type="text" name="mName" class="form-control"
													placeholder="${view.MName}" />
											</div>
										</div>

										<!-- 생년월일 -->
										<div class="row mb-3">
											<label for="inputDate" class="col-sm-2 col-form-label">생년월일</label>
											<div class="col-sm-10">
												<input type="date" name="mBirth" class="form-control">
											</div>
										</div>

										<!-- 성별 -->
										<fieldset class="row mb-3">
											<legend class="col-form-label col-sm-2 pt-0">성별</legend>
											<div class="col-sm-10">

												<div class="form-check">
													<input class="form-check-input" type="radio" name="mGender"
														id="mGender1" value="남자"> <label
														class="form-check-label" for="mGender1"> 남자 </label>
												</div>

												<div class="form-check">
													<input class="form-check-input" type="radio" name="mGender"
														id="mGender2" value="여자"> <label
														class="form-check-label" for="mGender2"> 여자 </label>
												</div>

											</div>
										</fieldset>

										<!-- 이메일 -->
										<div class="row mb-3">
											<label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
											<div class="col-sm-10">
												<input type="email" name="mEmail" class="form-control"
													placeholder="${view.MEmail}" />
											</div>
										</div>

										<!-- 연락처 -->
										<div class="row mb-3">
											<label for="inputText" class="col-sm-2 col-form-label">연락처</label>
											<div class="col-sm-10">
												<input type="text" name="mPhone" class="form-control"
													placeholder="${view.MPhone}" />
											</div>
										</div>


										<!-- 주소 -->
										<div class="row mb-3">
											<label for="inputText" class="col-sm-2 col-form-label">주소</label>
											<div class="col-md-6">
												<div class="input-group">
													<input type="text" name="addr1" id="sample6_postcode"
														class="form-control" placeholder="우편번호"> 
														<input type="button" onclick="sample6_execDaumPostcode()"
														class="btn btn-secondary" value="주소찾기">
												</div>
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputText" class="col-sm-2 col-form-label"></label>
											<div class="col-md-6">
												<input type="text" name="addr2" id="sample6_address" 
													class="form-control" placeholder="주소" required="">
											</div>
										</div>
										<div class="row mb-3">
											<label for="inputText" class="col-sm-2 col-form-label"></label>
											<div class="col-md-6">
												<input type="text" name="addr3" id="sample6_detailAddress"
													class="form-control" placeholder="상세주소" required="">
											</div>
										</div>

										<!-- 프로필 사진 -->
										<div class="row mb-3">
											<label for="inputNumber" class="col-sm-2 col-form-label">프로필
												사진</label>
											<div class="col-sm-10">
												<input class="form-control" type="file" id="mProfile"
													name="mProfile"> <br />
												<img src="./resources/profile/${view.MProfileName}"
													id="preview" width="150px" alt="Profile" class="rounded-circle"/>
											</div>
										</div>

										<!-- 수정 버튼 -->
										<div class="row mb-3">
											<div class="col-sm-10" style="text-align: center;">
												<input type="hidden" name="mId" value="${view.MId}" /> <input
													type="hidden" name="mProfileName"
													value="${view.MProfileName}" />
												<button type="submit" class="btn btn-primary">수정</button>
											</div>
										</div>

									</form>
									<!-- End Profile Edit Form -->

								</div>
								
								<!-- 회원 탈퇴 -->
								<div class="tab-pane fade pt-3" id="profile-settings">

									<div class="text-center">
										<button id="delete" class="btn btn-primary">회원 탈퇴</button>
									</div>

								</div>

								<div class="tab-pane fade pt-3" id="profile-change-password">
									<!-- Change Password Form -->
									<form>

										<div class="row mb-3">
											<label for="currentPassword"
												class="col-md-4 col-lg-3 col-form-label">Current
												Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="password" type="password" class="form-control"
													id="currentPassword">
											</div>
										</div>

										<div class="row mb-3">
											<label for="newPassword"
												class="col-md-4 col-lg-3 col-form-label">New
												Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="newpassword" type="password"
													class="form-control" id="newPassword">
											</div>
										</div>

										<div class="row mb-3">
											<label for="renewPassword"
												class="col-md-4 col-lg-3 col-form-label">Re-enter
												New Password</label>
											<div class="col-md-8 col-lg-9">
												<input name="renewpassword" type="password"
													class="form-control" id="renewPassword">
											</div>
										</div>

										<div class="text-center">
											<button type="submit" class="btn btn-primary">Change
												Password</button>
										</div>
									</form>
									<!-- End Change Password Form -->

								</div>

							</div>

							<div class="social-icons">
								<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-linkedin"></i></a>
							</div>
						</div>
					</div>
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
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	

	<script>
        let mId = $('#mId');
        let check1 = $('#check1');
        let checked1 = false;

        let mPw = $('#mPw');
        let check2 = $('#check2');

        let checkPw = $('#checkPw');
        let check3 = $('#check3');
        
        let mProfile = $('#mProfile');
    	let preview = $('#preview');

        mId.keyup(() => {
            $.ajax({
                type: "POST",
                url: "idCheck",
                data:
                {
                    "mId": mId.val()
                },
                dataType: "text",
                success: function (result) {
                    if (result == "OK") {
                        check1.html(mId.val() + "는 사용 가능한 아이디");
                        check1.css("color", "blue");
                        checked1 = true;
                    } else {
                        check1.html(result + "는 사용중인 아이디");
                        check1.css("color", "red");
                    }

                },
                error: function () {
                    alert('idCheck함수 통신 실패!');
                }

            });
        });


        mPw.keyup(() => {
            let pwVal = mPw.val();

            let num = pwVal.search(/[0-9]/);
            let eng = pwVal.search(/[a-z]/);
            let spe = pwVal.search(/[`~!@#$%^&*|\\\'\":;\/?]/);
            let spc = pwVal.search(/\s/);

            check2.css("color", "red");

            if (spc != -1) {
                check2.html("공백없이 입력");
            } else if (pwVal.length < 8 || pwVal.length > 16) {
                check2.html("비밀번호는 8자리에서 16자리로 입력");
            } else if (num == -1 || eng == -1 || spe == -1) {
                check2.html("영문, 숫자, 특수문자를 혼합해서 입력");
            } else {
                check2.html("사용가능한 비밀번호");
                check2.css("color", "blue");
            }

        });

        checkPw.keyup(() => {
            if (mPw.val() == checkPw.val()) {
                check3.html("비밀번호 일치");
                check3.css("color", "blue");
            } else {
                check3.html("비밀번호 불일치");
                check3.css("color", "red");
            }
        });
        
        mProfile.on("change", (event)=>{
    		let file = event.target.files[0];
    		
    		let reader = new FileReader();
    		reader.onload = (e) => {
    			preview.attr("src", e.target.result);
    		}
    		
    		reader.readAsDataURL(file);
    	});

        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    var addr = '';
                    var extraAddr = '';

                    if (data.userSelectedType === 'R') {
                        addr = data.roadAddress;
                    } else {
                        addr = data.jibunAddress;
                    }

                    if (data.userSelectedType === 'R') {
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraAddr += data.bname;
                        }
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                    }

                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
        
        $("#delete").click(()=>{
        	
        	if(confirm('정말 탈퇴하시겠습니까?')){
        		location.href="Delete?mId=${view.MId}&mProfileName=${view.MProfileName}";	
        	}
    		
    	});
    </script>
</body>
</html>
