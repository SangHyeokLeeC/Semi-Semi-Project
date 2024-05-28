<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 내비게이션 -->
<nav class="site-nav">
	<div class="container">
		<div class="site-navigation">
			<div class="page-container">
				<div class="nav-btn pull-left">
					<span> </span> <span> </span> <span> </span>
				</div>

				<a href="index.html" class="logo m-0">Tour <span
					class="text-primary">.</span></a>

				<ul
					class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<li class="active"><a href="index.html">홈</a></li>
					<li><a href="services">서비스</a></li>
					<li><a href="about">소개</a></li>
					<li><a href="contact">문의하기</a></li>
					<c:choose>

						<c:when test="${loginId ne null}">
							<li class="nav-item dropdown pe-3"><a
								class="nav-link nav-profile d-flex align-items-center pe-0"
								href="#" data-bs-toggle="dropdown"> 
								<div style="text-align: center;">
								<img src="./resources/profile/${loginProfile}" alt="Profile" class="rounded-circle" width="40" height="40" > 
								</div>
								<span class="d-none d-md-block dropdown-toggle ps-2">${loginId}</span>
									
							</a>
								<ul
									class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
									<li class="dropdown-header">
										<h6>${loginName}</h6>
									</li>
									<li>
										<hr class="dropdown-divider">
									</li>

									<li><a class="dropdown-item d-flex align-items-center"
										href="mView?mId=${loginId}"> <i class="bi bi-person"></i> <span>내정보</span>
									</a></li>


									<li><a class="dropdown-item d-flex align-items-center"
										href="mLogout"> <i class="bi bi-box-arrow-right"></i> <span>로그아웃</span>
									</a></li>

								</ul></li>
						</c:when>

						<c:otherwise>
							<li class="nav-item dropdown pe-3"><a
								class="nav-link nav-profile d-flex align-items-center pe-0"
								href="#" data-bs-toggle="dropdown"> <span
									class="d-none d-md-block dropdown-toggle ps-2">로그인</span>

							</a>

								<ul
									class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">


									<li><a class="dropdown-item d-flex align-items-center"
										href="join"> <i class="bi bi-person"></i> <span>회원가입</span>
									</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>

									<li><a class="dropdown-item d-flex align-items-center"
										href="login"> <i class="bi bi-gear"></i> <span>로그인</span>
									</a></li>

								</ul></li>
						</c:otherwise>


					</c:choose>
				</ul>

				<!-- 사이드바 시작 -->
				<div class="sidebar-menu" style="background-color: rgb(26, 55, 77);">
					<div class="main-menu">
						<div class="slimScrollDiv"
							style="position: relative; overflow: hidden; width: auto; height: 833px;">
							<div class="menu-inner"
								style="overflow: hidden; width: auto; height: 833px;">
								<nav>
									<ul class="metismenu" id="menu">
										<c:choose>
											<c:when test="${loginId eq null}">
												<li><a href="index"><i class="ti-layout-sidebar-left"></i><span>홈으로</span></a></li>		
												<li><a href="login"><i class="fa fa-table"></i> <span>로그인</span></a></li>
												<li><a href="join"><i class="ti-receipt"></i><span>회원가입</span></a></li>
												<li><a href="about"><i class="ti-palette"></i><span>소개</span></a></li>
												<li><a href="services"><i class="ti-map-alt"></i><span>서비스</span></a></li>
											    <li><a href="packages"><i class="ti-receipt"></i><span>상품페이지</span></a></li>
												<li><a href="elements"><i class="ti-pie-chart"></i><span>자주하는 질문</span></a></li>
												<li><a href="contact"><i class="ti-slice"></i><span>문의하기</span></a></li>
											</c:when>
											<c:when test="${loginId eq 'admin'}">
											<li><a href="list"><i class="ti-slice"></i><span>회원목록</span></a></li>
											<li><a href="adminContactList"><i class="ti-slice"></i><span>관리자게시판</span></a></li>
											
											</c:when>
											<c:otherwise>
												<li><a href="index"><i
														class="ti-layout-sidebar-left"></i><span>홈으로</span></a></li>
												<li><a href="mView?mId=${loginId}"><i class="ti-slice"></i><span>내정보</span></a></li>
												<li><a href="about"><i class="ti-palette"></i><span>소개</span></a></li>
												<li><a href="services"><i class="ti-map-alt"></i><span>서비스</span></a></li>
												<li><a href="packages"><i class="ti-receipt"></i><span>상품페이지</span></a></li>
												<li><a href="contact"><i class="ti-slice"></i><span>문의하기</span></a></li>
												<li><a href="elements"><i class="ti-pie-chart"></i><span>자주하는 질문</span></a></li>
												<li><a href="logout"><i class="ti-receipt"></i><span>로그아웃</span></a></li>
											</c:otherwise>
										</c:choose>
									</ul>

								</nav>
							</div>
							<div class="slimScrollBar"
								style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 833px;"></div>
							<div class="slimScrollRail"
								style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
						</div>
					</div>
				</div>
				<!-- 사이드바 끝 -->

			</div>
		</div>
	</div>
</nav>