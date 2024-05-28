<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="ko">

<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<meta content="" name="description">
<meta content="" name="keywords">
</head>
<body>

	<section class="section">
			<div class="row">

				<div class="col-lg-9">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title"></h5>

							<!-- Table with hoverable rows -->
							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">아이디</th>
										<th scope="col">이름</th>
										<th scope="col">성별</th>
										<th scope="col">생년월일</th>
										<th scope="col">이메일</th>
										<th scope="col">연락처</th>
										<th scope="col">주소</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="list" items="${memberList}">
										<tr>
											<td>${list.MId}</td>
											<td><a href="mView?mId=${list.MId}">${list.MName}</a></td>
											<td>${list.MGender}</td>
											<td>${list.MBirth}</td>
											<td>${list.MEmail}</td>
											<td>${list.MPhone}</td>
											<td>${list.MAddr}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- End Table with hoverable rows -->
							<!-- Disabled and active states -->
							<nav aria-label="...">
								<ul class="pagination" style="margin: 0 auto 10px;">
									<!-- 이전 -->
									<c:if test="${paging.page <= 1}">
										<li class="page-item disabled">
											<a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
										</li>
									</c:if> 
									<c:if test="${paging.page > 1}">
										<li class="page-item">
											<a class="page-link" href="mList?page=${paging.page-1}&limit=${paging.limit}">이전</a>
										</li>
									</c:if> 
									
									<!-- 페이지 번호 -->
									<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
										<c:if test="${paging.page == i}">
											<li class="page-item active" aria-current="page">
												<a class="page-link" href="#">${i}</a>
											</li>
										</c:if>
										
										<c:if test="${paging.page != i}">
											<li class="page-item">
												<a class="page-link" href="mList?page=${i}&limit=${paging.limit}">${i}</a>
											</li>
										</c:if>
										
									</c:forEach>
							
									
									<!-- 다음 -->
									<c:if test="${paging.page >= paging.maxPage}">
										<li class="page-item disabled">
											<a class="page-link" href="#" tabindex="-1" aria-disabled="true">다음</a>
										</li>
									</c:if> 
									<c:if test="${paging.page < paging.maxPage}">
										<li class="page-item">
											<a class="page-link" href="mList?page=${paging.page+1}&limit=${paging.limit}">다음</a>
										</li>
									</c:if> 
								</ul>
							</nav>
							<!-- End Disabled and active states -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
</body>
</html>