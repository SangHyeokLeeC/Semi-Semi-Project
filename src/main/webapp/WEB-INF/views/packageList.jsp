<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <title>기본페이지</title>
  <style>
    /* 패키지 테이블 스타일 */
    .package-table {
      margin-top: 20px;
      width: 100%;
      border-collapse: collapse;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    
    .package-table th, .package-table td {
      text-align: center;
      vertical-align: middle;
      padding: 15px;
      border: 1px solid #ddd;
    }
    
    .package-table th {
      background-color: #343a40;
      color: #fff;
      text-transform: uppercase;
    }
    
    .package-table td {
      background-color: #ffffff;
    }
    
    .package-table img {
      border-radius: 8px;
      transition: transform 0.2s;
      width: 100%;
      height: auto;
    }
    
    .package-table img:hover {
      transform: scale(1.1);
    }
    
    .package-table .table-header {
      background-color: #495057;
    }
    
    .package-table .table-body tr:nth-child(even) {
      background-color: #e9ecef;
    }
    
    .package-table .table-body tr:hover {
      background-color: #adb5bd;
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

	<!-- 사이드바 섹션 -->
  <%@ include file="sidebar.jsp" %>

  <!-- 히어로 섹션 -->
	<div class="hero hero-inner" style="background-color : rgb(105,152,171)">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 mx-auto text-center">
          <div class="intro-wrap">
            <h1 class="mb-0">여행 패키지</h1>
            <p class="text-white">편리하고 특별한 여행을 위한 다양한 서비스를 제공합니다.</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 테이블 섹션 -->
  <div class="container mt-5">
    <h2>여행 패키지 목록</h2>
    <form action="pSearch" method="GET">
		<!-- 검색 카테고리 -->
		<select name="category">
			<option value="PNAME">패키지 이름</option>
			<option value="PCOUNTRY">지역</option>
		</select>

		<!-- 검색어 -->
		<input type="text" name="keyword" />

		<!-- 검색버튼 -->
		<input type="submit" value="검색" />

	</form>
	<c:if test="${pages ne 0}">
		<select id="limit">
			<option value="5">게시글수</option>
			<option value="5">5개씩</option>
			<option value="10">10개씩</option>
			<option value="20">20개씩</option>
		</select>
	</c:if>
    <table class='table table-striped package-table'>
    	<thead class='table-header'>
    		<tr>
    			<th>이미지</th>
    			<th>패키지 이름</th>
    			<th>지역</th>
    			<th>총별점</th>
    			<th>조회수</th>
    		</tr>
    	</thead>
    	<tbody class='table-body'>
    		<c:forEach var="item" items="${list}">
    			<tr>
    				<td>
    					<a href="detailList?pname=${item.pname}" class="d-block mb-3">
    						<img src="${item.pimage}" width="100px"/>
    					</a>
    				</td>
    				<td>${item.pname}</td>
    				<td>${item.pcountry}</td>
    				<td>${item.pscope}</td>
    				<td>${item.phit}</td>
    			</tr>
    		</c:forEach>
    	</tbody>
    </table>
  </div>
  
	<!-- Alignment start -->
	<c:if test="${pages ne 0}">
		<div class="col-lg-12 col-md-6 mt-5" style="width:0 auto; margin : 0 auto;">
			<div class="card">
			    <div class="card-body">
			        <nav aria-label="Page navigation example">
			            <ul class="pagination justify-content-center">
			            	<!-- 이전 -->
							<li>
								<c:if test="${paging.page <= 1}">
									<a class="page-link">[이전]</a>
								</c:if>
								<c:if test="${paging.page > 1}">
									<a href="packages?page=${paging.page-1}&limit=${paging.limit}" class="page-link">[이전]</a>
								</c:if>
							</li>
							   
							<!-- 페이지 처리 -->
							<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
								<li class="page-item">
									<c:if test="${paging.page == i}">
										<a class="page-link">${i}</a>
									</c:if>
									<c:if test="${paging.page != i}">
										<a class="page-link" href="packages?page=${i}&limit=${paging.limit}">${i}</a>
									</c:if>
								</li>
							</c:forEach>
							
							<!-- 다음 -->
							<li class="page-item">
							    <c:if test="${paging.page >= paging.maxPage}">
									<a class="page-link">[다음]</a>
								</c:if>
								<c:if test="${paging.page < paging.maxPage}">
									<a class="page-link" href="packages?page=${paging.page+1}&limit=${paging.limit}">[다음]</a>
								</c:if>
		                    </li>
		                </ul>
		            </nav>
		        </div>
		    </div>
		</div>
	</c:if><!-- Alignment end -->

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
  <!-- 스크립트 -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script>
	$("#limit").change(()=>{
		let limit = $('#limit').val();
		location.href=`packages?limit=` + limit;
	});
	</script>
</body>
</html>