<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="resources/assets/assets/css/owl.carousel.min.css">
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

    <title>회원가입 - Untree.co</title>

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
        /* 토글 버튼의 스타일 정의 */
        .toggle-container {
            display: flex;
            justify-content: left;
            margin-top: 10px;
        }
        .toggle-button {
            background-color: #f1f1f1;
            border: 1px solid #ccc;
            border-radius: 20px;
            cursor: pointer;
            font-size: 16px;
            margin: 0 5px;
            padding: 10px 20px;
            text-align: center;
            width: 100px;
        }
        .toggle-button.selected {
            background-color: #007bff;
            color: white;
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
    <div class="hero hero-inner" style="background-color : rgb(105,152,171)">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 mx-auto text-center">
                    <div class="intro-wrap">
                        <h1 class="mb-0">회원가입</h1>
                        <p class="text-white">여기서 새로운 계정을 만드세요. 저희와 함께하는 여정을 시작하세요!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 회원가입 섹션 -->
    <form id="signupForm" action="join" method="post" enctype="multipart/form-data" novalidate>

        <div class="untree_co-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">

                        <div class="row">
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mId" class="col-form-label">아이디</label>
                                    <input class="form-control" type="text" id="mId" name="mId" required>
                                    <p id="check1" class="error-message"></p>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mPw" class="col-form-label">비밀번호</label>
                                    <input class="form-control" type="password" id="mPw" name="mPw" required>
                                    <p id="check2" class="error-message"></p>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="checkPw" class="col-form-label">비밀번호 확인</label>
                                    <input class="form-control" type="password" id="checkPw" required>
                                    <p id="check3" class="error-message"></p>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mName" class="col-form-label">이름</label>
                                    <input class="form-control" type="text" name="mName" id="mName" required>
                                    <p id="checkName" class="error-message"></p>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mBirth" class="col-form-label">생년월일</label>
                                    <input class="form-control" type="date" name="mBirth" required>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mGender" class="col-form-label">성별</label><br>
                                    <div class="toggle-container">
                                        <div class="toggle-button" id="maleButton">남자</div>
                                        <div class="toggle-button" id="femaleButton">여자</div>
                                    </div>
                                    <input type="hidden" id="mGender" name="mGender" required>
                                    <p id="checkGender" class="error-message"></p>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mEmail" class="col-form-label">이메일</label>
                                    <div style="display: flex; align-items: center;">
                                        <input class="form-control" type="text" id="emailPrefix" placeholder="example" style="width: 50%;" required>
                                        <select id="emailDomain" class="form-control" style="width: 50%; margin-left: 10px;" required>
                                            <option value="">도메인 선택</option>
                                            <option value="@gmail.com">@gmail.com</option>
                                            <option value="@naver.com">@naver.com</option>
                                            <option value="@nate.com">@nate.com</option>
                                            <option value="@daum.net">@daum.net</option>
                                            <option value="@hanmail.net">@hanmail.net</option>
                                            <option value="custom">직접 입력</option>
                                        </select>
                                    </div>
                                    <input type="text" id="customDomain" placeholder="직접 입력" class="form-control mt-2" style="display: none;">
                                    <input type="hidden" id="mEmail" name="mEmail">
                                    <p id="checkEmail" class="error-message"></p>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mPhone" class="col-form-label">연락처</label>
                                    <input class="form-control" type="text" name="mPhone" placeholder="'-' 없이 입력하세요." required>
                                    <p id="checkPhone" class="error-message"></p>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="sample6_postcode" class="col-form-label">주소</label><br>
                                    <input class="form-control" type="text" name="addr1" id="sample6_postcode" placeholder="우편번호" style="width: 79%; display: inline-block;" required>
                                    <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="width: 20%; display: inline-block; height: 44px;">
                                    <input class="form-control" type="text" name="addr2" id="sample6_address" placeholder="주소" required>
                                    <input class="form-control" type="text" name="addr3" id="sample6_detailAddress" placeholder="상세주소" required>
                                </div>
                            </div>
                            <div class="col-12 mb-4">
                                <div class="form-group">
                                    <label for="mProfile" class="col-form-label">프로필 사진</label><br>
                                    <input type="file" name="mProfile" required><br>
                                    <p id="checkProfile" class="error-message"></p>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">회원가입</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    </br>
    <!-- 콜 투 액션 섹션 -->
    <div class="py-5 cta-section" style="background-color : rgb(105,152,171)">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <h2 class="mb-2 text-white">여행을 더 쉽게 계획하세요. 궁금한 점 있으면 언제든 문의하세요.</h2>
                    <p class="mb-4 lead text-white text-white-opacity">Plan your trip easier. Feel free to contact us if you have any questions.</p>
                    <p class="mb-0">
                        <a href="contact.html" class="btn btn-outline-white text-white btn-md font-weight-bold" style="background-color : rgb(26,55,77)">문의하기</a>
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
    <script src="resources/assets/assets/js/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
    <script src="resources/assets/js/bootstrap.bundle.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        let mId = $('#mId');
        let check1 = $('#check1');
        let checked1 = false;

        let mPw = $('#mPw');
        let check2 = $('#check2');

        let checkPw = $('#checkPw');
        let check3 = $('#check3');

        let mName = $('#mName');
        let checkName = $('#checkName');

        // 아이디 유효성 검사
        mId.keyup(() => {
            if (mId.val().length >= 8) {
                $.ajax({
                    type: "POST",
                    url: "idCheck",
                    data: {
                        "mId": mId.val()
                    },
                    dataType: "text",
                    success: function (result) {
                        if (result == "OK") {
                            check1.html(mId.val() + "는 사용 가능한 아이디입니다.");
                            check1.removeClass("error-message").addClass("valid-message");
                            checked1 = true;
                        } else {
                            check1.html(result + "는 사용 중인 아이디입니다.");
                            check1.removeClass("valid-message").addClass("error-message");
                            checked1 = false;
                        }
                    },
                    error: function () {
                        alert('idCheck 함수 통신 실패!');
                    }
                });
            } else {
                check1.html("아이디는 8글자 이상이어야 합니다.");
                check1.removeClass("valid-message").addClass("error-message");
                checked1 = false;
            }
        });

        // 비밀번호 유효성 검사
        mPw.keyup(() => {
            let pwVal = mPw.val();

            let num = pwVal.search(/[0-9]/);
            let eng = pwVal.search(/[a-z]/);
            let spe = pwVal.search(/[`~!@#$%^&*|\\\'\":;\/?]/);
            let spc = pwVal.search(/\s/);

            check2.removeClass("valid-message").addClass("error-message");

            if (spc != -1) {
                check2.html("공백 없이 입력해주세요.");
            } else if (pwVal.length < 8 || pwVal.length > 16) {
                check2.html("비밀번호는 8자리에서 16자리로 입력해주세요.");
            } else if (num == -1 || eng == -1 || spe == -1) {
                check2.html("영문, 숫자, 특수문자를 혼합해서 입력해주세요.");
            } else {
                check2.html("사용 가능한 비밀번호입니다.");
                check2.removeClass("error-message").addClass("valid-message");
            }

        });

        // 비밀번호 확인 유효성 검사
        checkPw.keyup(() => {
            if (mPw.val() == checkPw.val()) {
                check3.html("비밀번호가 일치합니다.");
                check3.removeClass("error-message").addClass("valid-message");
            } else {
                check3.html("비밀번호가 일치하지 않습니다.");
                check3.removeClass("valid-message").addClass("error-message");
            }
        });

        // 이름 유효성 검사
        mName.keyup(() => {
            let nameVal = mName.val();
            let nameRegEx = /^[가-힣a-zA-Z]+$/; // 한글 또는 영문만 허용

            if (nameRegEx.test(nameVal)) {
                checkName.html(" ");
                checkName.removeClass("error-message").addClass("valid-message");
            } else {
                checkName.html("이름에는 특수문자, 공백, 숫자를 사용할 수 없습니다.");
                checkName.removeClass("valid-message").addClass("error-message");
            }
        });

        // 주소 검색 함수
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

        document.addEventListener('DOMContentLoaded', () => {
            let emailPrefix = document.querySelector('#emailPrefix');
            let emailDomain = document.querySelector('#emailDomain');
            let customDomain = document.querySelector('#customDomain');
            let mEmail = document.querySelector('#mEmail');
            let checkEmail = document.querySelector('#checkEmail');

            // 이메일 도메인 선택 시 동작
            emailDomain.addEventListener('change', () => {
                if (emailDomain.value === 'custom') {
                    customDomain.style.display = 'block';
                } else {
                    customDomain.style.display = 'none';
                    updateEmailField();
                }
            });

            emailPrefix.addEventListener('keyup', () => {
                updateEmailField();
            });

            customDomain.addEventListener('keyup', () => {
                updateEmailField();
            });

            // 이메일 필드 업데이트 함수
            function updateEmailField() {
                let domain = emailDomain.value === 'custom' ? customDomain.value : emailDomain.value;
                let emailVal = emailPrefix.value + domain;
                mEmail.value = emailVal;
                validateEmail(emailVal);
            }

            // 이메일 유효성 검사
            function validateEmail(emailVal) {
                let emailRegEx = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/; // 도메인 형식 포함
                let specialCharRegEx = /[`~!#$%^&*|\\'\":;\/?]/; // 특수문자 검사 (@ 제외)
                let koreanCharRegEx = /[ㄱ-ㅎㅏ-ㅣ가-힣]/; // 한글 검사
                let spaceRegEx = /\s/; // 공백 검사

                if (emailRegEx.test(emailVal) && !specialCharRegEx.test(emailVal) && !koreanCharRegEx.test(emailVal) && !spaceRegEx.test(emailVal)) {
                    checkEmail.textContent = "유효한 이메일입니다.";
                    checkEmail.className = "valid-message";
                } else {
                    checkEmail.textContent = "이메일에는 특수문자, 공백, 한글을 포함할 수 없습니다.";
                    checkEmail.className = "error-message";
                }
            }
        });

        // 전화번호 유효성 검사
        document.addEventListener('DOMContentLoaded', () => {
            let mPhone = document.querySelector('input[name="mPhone"]');
            let checkPhone = document.querySelector('#checkPhone');

            mPhone.addEventListener('keyup', () => {
                let phoneVal = mPhone.value;
                let validPhoneRegEx = /^[0-9]{10,11}$/;  // 10자리 또는 11자리 숫자
                let nonDigitRegEx = /[^0-9]/; // 숫자가 아닌 문자 포함 여부

                if (nonDigitRegEx.test(phoneVal)) {
                    checkPhone.textContent = "숫자만 입력하세요.";
                    checkPhone.className = "error-message";
                } else if (phoneVal.length >= 11) {
                    if (phoneVal.length >= 12) {
                        checkPhone.textContent = "유효하지 않은 연락처입니다. 12자리 이상의 숫자를 입력하세요.";
                        checkPhone.className = "error-message";
                    } else if (validPhoneRegEx.test(phoneVal)) {
                        checkPhone.textContent = "유효한 연락처입니다.";
                        checkPhone.className = "valid-message";
                    } else {
                        checkPhone.textContent = "유효하지 않은 연락처입니다. 이동전화 10자리 또는 11자리 숫자를 입력하세요.";
                        checkPhone.className = "error-message";
                    }
                } else {
                    checkPhone.textContent = "";
                }
            });
        });

        // 폼 제출 시 유효성 검사
        document.getElementById('signupForm').addEventListener('submit', function (event) {
            let valid = true;
            let form = this;

            if (!checked1) {
                valid = false;
                check1.textContent = "아이디를 확인해주세요.";
                check1.className = "error-message";
            }

            if (!form.mId.value) {
                valid = false;
                form.mId.classList.add("input-error");
            } else {
                form.mId.classList.remove("input-error");
            }

            if (!form.mPw.value) {
                valid = false;
                form.mPw.classList.add("input-error");
            } else {
                form.mPw.classList.remove("input-error");
            }

            if (form.mPw.value !== form.checkPw.value) {
                valid = false;
                form.checkPw.classList.add("input-error");
            } else {
                form.checkPw.classList.remove("input-error");
            }

            if (!form.mName.value) {
                valid = false;
                form.mName.classList.add("input-error");
            } else {
                form.mName.classList.remove("input-error");
            }

            if (!form.mBirth.value) {
                valid = false;
                form.mBirth.classList.add("input-error");
            } else {
                form.mBirth.classList.remove("input-error");
            }

            if (!form.mGender.value) {
                valid = false;
                document.querySelector('#checkGender').textContent = "성별을 선택해주세요.";
                document.querySelector('#checkGender').classList.add("error-message");
            } else {
                document.querySelector('#checkGender').textContent = "";
                document.querySelector('#checkGender').classList.remove("error-message");
            }

            if (!emailPrefix.value || (!emailDomain.value && !customDomain.value) || !mEmail.value) {
                valid = false;
                emailPrefix.classList.add("input-error");
                emailDomain.classList.add("input-error");
                if (emailDomain.value === 'custom') {
                    customDomain.classList.add("input-error");
                }
            } else {
                emailPrefix.classList.remove("input-error");
                emailDomain.classList.remove("input-error");
                customDomain.classList.remove("input-error");
            }

            if (!form.mPhone.value) {
                valid = false;
                form.mPhone.classList.add("input-error");
            } else {
                form.mPhone.classList.remove("input-error");
            }

            if (!form.addr1.value || !form.addr2.value || !form.addr3.value) {
                valid = false;
                form.addr1.classList.add("input-error");
                form.addr2.classList.add("input-error");
                form.addr3.classList.add("input-error");
            } else {
                form.addr1.classList.remove("input-error");
                form.addr2.classList.remove("input-error");
                form.addr3.classList.remove("input-error");
            }

            if (!form.mProfile.value) {
                valid = false;
                form.mProfile.classList.add("input-error");
            } else {
                form.mProfile.classList.remove("input-error");
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

        // 성별 토글 버튼 동작
        document.addEventListener('DOMContentLoaded', () => {
            let maleButton = document.querySelector('#maleButton');
            let femaleButton = document.querySelector('#femaleButton');
            let genderInput = document.querySelector('#mGender');

            maleButton.addEventListener('click', () => {
                maleButton.classList.add('selected');
                femaleButton.classList.remove('selected');
                genderInput.value = '남자';
            });

            femaleButton.addEventListener('click', () => {
                femaleButton.classList.add('selected');
                maleButton.classList.remove('selected');
                genderInput.value = '여자';
            });
        });
    </script>
</body>
</html>
