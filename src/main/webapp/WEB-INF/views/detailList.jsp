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
  <link rel="preconnect"
	href="https://resources/assets/fonts.googleapis.com">
<link rel="preconnect" href="https://resources/assets/fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://resources/assets/fonts.googleapis.com/resources/assets/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap">

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
            <h1 class="mb-0">기본페이지</h1>
            <p class="text-white">기본페이지 여기를 수정할 것</p>
          </div>
        </div>
      </div>
    </div>
  </div>

	<!-- 테이블 섹션 -->
	<div class="container mt-5">
		<h2>여행 상세 페이지</h2>
    	<table class='table table-striped package-table'>
	        <thead class='table-header'>
	        	<tr>
	        		<th>이미지</th>
	        		<th>패키지 이름</th>
	        		<th>지역</th>
	        		<th>조회수</th>
	        	</tr>
	        </thead>
	        <tbody class='table-body'>
		        <tr>
		        	<td><img src='${item.pimage}' width="100px"/></td>
			        <td>${item.pname}</td>
			        <td>${item.pcountry}</td>
			        <td>${item.phit}</td>
		        </tr>
		        <tr>
		        	<td colspan="4">${item.pexplain}</td>
		        </tr>
	        </tbody>
        </table>
	</div>
	
	<!-- 추천 섹션 -->
	<div class="container mt-5">
		<div style="text-align:center;">
			<div style="display:inline-block;">
				<img src="${item.pi1}" width="350px">
			</div>
			<div style="display:inline-block;">
				<img src="${item.pi2}" width="350px">
			</div>
			<div style="display:inline-block;">
				<img src="${item.pi3}" width="350px">
			</div>
		</div>
	</div>
	
	<div class="container mt-5">
		<div class="form-group">
			<textarea class="form-control" id="contents" cols="30" rows="5" style="width: 79%; float:left;"></textarea>
			<input type="button" value="댓글 등록" id="cwrite" style="width: 20%; float:right; height: 130px;"/>
		</div>
		
	</div>
	<div class="container mt-5" style="clear:both;">
		<div id="commentArea"></div>
	</div>
		
	<!-- 푸터 섹션 -->
	<div class="site-footer">
	    <%@ include file = "footer.jsp" %>
	</div>
	
	<!-- 스크립트 -->
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script>
		$('#cwrite').click(()=>{
			$.ajax({
				type : "POST",
				url : "cwrite",
				data : {
					"cpnum" : ${item.pnum},
					"cwriter" : '${loginId}',
					"ccontents" : $('#contents').val()
				},
				dataType : "json",
				success : function(list) {
					cList(list);
					$('#contents').val("");
				},
				error : function(){
					alert('댓글 등록 실패');
				}
			});
		});
	
		$.ajax({
			type : "POST",
			url : "commentList",
			data : {
				"cpnum" : ${item.pnum}
			},
			dataType : "json",
			success : function(list) {
				cList(list);
			},
			error : function(){
				alert('데이터 불러오기 실패');
				cList([]);
			}
		});
		
		function cList(list) {
			let output = "<table class='table table-striped package-table'>";
	        output += "<thead class='table-header'>";
	        output += "<tr>";
	        output += "<th>댓글 번호</th>";
	        output += "<th>댓글 내용</th>";
	        output += "<th>작성자</th>";
	        output += "<th>작성 날짜</th>";
	        output += "<th>수정 및 삭제</th>";
	        output += "</tr>";
	        output += "</thead>";
	        
	        output += "<tbody class='table-body'>";
	        for(let i in list) {
	        	output += "<tr>";
	        	output += "<td>"+list[i].cnum+"</td>";
	        	output += "<td id='controlmodify'>"+list[i].ccontents+"</td>";
	        	output += "<td>"+list[i].cwriter+"</td>";
	        	output += "<td>"+list[i].cdate+"</td>";
	        	if('${loginId}' == list[i].cwriter || '${loginId}' == 'admin') {
			        output += "<td id='modifychange'>";
			        output += "<button class='cmodify' value='" + list[i].cnum + "'>수정</button>";
			        output += "<button class='cdelete' value='" + list[i].cnum + "'>삭제</button>";
		        	output += "</td>";
	        	} else {
	        		output+="<td></td>";
	        	}
		        output += "</tr>"
	        }
	        output += "</tbody>";
	        output += "</table>";
	        $('#commentArea').html(output);
	        
	        $('.cmodify').click((e)=>{
	        	if(confirm('댓글을 수정하시겠습니까?')) {
		        	$('#controlmodify').html("<input type='text' id='contentsmodify'/>");
		        	$('#modifychange').html("<button class='commentmodify' value='" + e.target.value + "'>수정</button>");
		        	$('.commentmodify').click((e)=>{
			        	$.ajax({
			        		type : "POST",
			        		url : "detailmodify",
			        		data : {
			        			"cnum" : e.target.value,
			        			"cpnum" : ${item.pnum},
			        			"ccontents" : $('#contentsmodify').val()
			        		},
			        		dataType : "json",
			        		success : function(list) {
			        			cList(list);
			        		},
			        		error : function() {
			        			alert('수정실패');
			        		}
			        	});
			        });
	        	}
	        });
	        
	        $('.cdelete').click((e)=>{
	        	$.ajax({
	        		type : "POST",
	        		url : "detaildelete",
	        		data : {
	        			"cnum" : e.target.value,
	        			"cpnum" : ${item.pnum}
	        		},
	        		dataType : "json",
	        		success : function(list) {
	        			cList(list);
	        		},
	        		error : function() {
	        			alert('삭제 실패');
	        		}
	        	});
	        });
		}
	</script>

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
	
	
</body>
</html>