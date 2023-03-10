<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<!-- <link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/bulma.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main/main.css">

<title>${pageContext.request.contextPath}</title>

</head>
<!-- 헤더 넣는 js코드 -->
<!--
<script type="text/javascript">
	$(document).ready(function() {
		$("#headers").load("/main/header.jsp"); //헤더 인클루드
		$("#footers").load("footer.jsp"); //푸터부분 인클루드
	});
</script>
-->
<body>
	<div class="wrapper">
		<!-- 헤더 넣는 jsp 코드() -->
		<jsp:include page="header/header.jsp" flush="false"/>
		<%-- <jsp:include page="/header/header-after.jsp" flush="false" /> --%>
		
		<main>
		<header class="main-banner" style="padding-top: 75px">
			<jsp:include page="banner/banner.jsp" flush="false" />
		</header>
			<article class="home-container">
				<section class="home-buttons columns is-relative">
					<div class="home-button-wrapper column is-one-quarter">
						<a href="${pageContext.request.contextPath} ${empty sessioScope.userId ? '/login.member' : '/profile.mypage'}">
							<button>
								<img alt="" src="${pageContext.request.contextPath}/static/img/main/banking-64.png">
								<span>보유 저축</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a href="${pageContext.request.contextPath}/boardList.board">
							<button>
								<img alt="" src="${pageContext.request.contextPath}/static/img/main/community-64.png">
								<span>저축 게시판</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a href="${pageContext.request.contextPath}/boardList.boardFree">
							<button>
								<img alt="" src="${pageContext.request.contextPath}/static/img/main/learn_owl-64.png">
								<span>꿀팁 게시판</span>
							</button>
						</a>
					</div>
					<div class="home-button-wrapper column is-one-quarter">
						<a href="${pageContext.request.contextPath} ${empty sessioScope.userId ? '/login.member' : '/modifyOk.mypage'}">
							<button>
								<img alt="" src="${pageContext.request.contextPath}/static/img/main/profile_man-64.png">
								<span>계정 설정</span>
							</button>
						</a>
					</div>
				</section>

				<section class="expert-section-wrapper">
					<a href="#"
						class="is-flex is-justify-content-center"
						style="background: #F3F5F9; border-radius: 8px;">
						<img
						src="https://media.a-ha.io/aha-qna/assets/web/membership/band/membership_main_desktop.png"
						class="membership-desktop-img is-hidden-touch">
					</a>
					<!--  -->
					<a href="#"
						class="is-flex is-justify-content-center"
						style="background: #F3F5F9; border-radius: 8px;">
						
						<img
						src="https://media.a-ha.io/aha-qna/assets/web/membership/band/membership_main_mobile.png"
						class="membership-mobile-img is-hidden-desktop">
					</a>
				</section>

				<section class="home-section">
					<h4 class="home-section-title title is-5">저축 Q&A</h4>
					<h5 class="home-section-subtitle subtitle is-6">금융 관련 질문을 해봐요</h5>
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="categoryCard-wrapper">
										<a href="${pageContext.request.contextPath}/boardList.board?keyword=통장" class="categoryCard is-align-content-center">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/bank-64.png">
										</a> <span class="is-align-content-center">통장</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="categoryCard-wrapper">
										<a href="${pageContext.request.contextPath}/boardList.board?keyword=적금" class="categoryCard">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/bank-saving-64.png">
										</a> <span>적금</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a href="${pageContext.request.contextPath}/boardList.board?keyword=금리" class="categoryCard">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/interest_rate-64.png">
										</a> <span>금리</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a href="${pageContext.request.contextPath}/boardList.board?keyword=대출" class="categoryCard">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/loan-64.png">
										</a> <span>대출</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a href="${pageContext.request.contextPath}/boardList.board?keyword=환율" class="categoryCard">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/exchange_rate_won_to_dollar-64.png">
										</a> <span>환율</span>
									</div>
								</div>
							</article>
						</div>


					</div>
				</section>
				<section class="home-section">
					<h4 class="home-section-title title is-5">자유 Q&A</h4>
					<h5 class="home-section-subtitle subtitle is-6">우리들의 지식을 자유롭게
						나눠요</h5>
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard" href="${pageContext.request.contextPath}/boardList.boardFree?tag=생활꿀팁">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/vision_eye_idea-64.png">
										</a> <span>생활꿀팁</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard" href="${pageContext.request.contextPath}/boardList.boardFree?tag=청소">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/home_cleaning-64.png">
										</a> <span>청소</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard" href="${pageContext.request.contextPath}/boardList.boardFree?tag=세탁">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/laundry_icon-64.png">
										</a> <span>세탁</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard" href="${pageContext.request.contextPath}/boardList.boardFree?tag=자동차">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/car1-64.png">
										</a> <span>자동차</span>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="">
										<a class="categoryCard" href="${pageContext.request.contextPath}/boardList.boardFree?tag=등산">
											<img alt="" src="${pageContext.request.contextPath}/static/img/main/mountain_adventure-64.png">
										</a> <span>등산</span>
									</div>
								</div>
							</article>
						</div>
					</div>
				</section>
				<!-- 아래쪽 내용들은 다 home-section으로 묶임 -->
				<section class="home-section">
					<header class="home-section-title home-section-hotQuestion title is-5 ">
						<h4 class="home-section-title-content">모두가 궁금해하는 질문</h4>
						<span class="home-section-hotQuestion-time">${readRankingsTime += '기준'}</span>
					</header>
					
					<!-- 첫번째 줄 -->
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<c:forEach var="board" items="${readRankings}">
								<article class="home-section-categoryCard tile is-child">
									<div class="">
										<div class="questionListCardSmall">
											<a class="categoryCard" href="${pageContext.request.contextPath += '/boardDetail.board?boardId='} ${board.boardId}">
												<div>
													<span class="questionListCardSmall-numbering">${i += '.'}</span>
													<span class="questionListCardSmall-content">자동차 배터리가 자주 방전되는데 이유가 뭔가요</span>
												</div>
											</a>
											<div>
												<span>${board.tag}</span>
											</div>
										</div>
									</div>
								</article>
							</c:forEach>
							<!-- <article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="questionListCardSmall">
										<a class="categoryCard">
											<div>
												<span class="questionListCardSmall-numbering">01.</span>
												<span class="questionListCardSmall-content">자동차 배터리가 자주 방전되는데 이유가 뭔가요</span>
											</div>
										</a>
										<div>
											<span>자동차</span>
										</div>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="questionListCardSmall">
										<a class="categoryCard">
											<div>
												<span class="questionListCardSmall-numbering">01.</span>
												<span class="questionListCardSmall-content">자동차 배터리가 자주 방전되는데 이유가 뭔가요</span>
											</div>
										</a>
										<div>
											<span>자동차</span>
										</div>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="questionListCardSmall">
										<a class="categoryCard">
											<div>
												<span class="questionListCardSmall-numbering">01.</span>
												<span class="questionListCardSmall-content">자동차 배터리가 자주 방전되는데 이유가 뭔가요</span>
											</div>
										</a>
										<div>
											<span>자동차</span>
										</div>
									</div>
								</div>
							</article> -->
						</div>
					</div>
				</section>
				
				<section class="home-section" style="margin-bottom: 40px;">
					<header class="home-section-title home-section-hotQuestion title is-5 ">
						<h4 class="home-section-title-content">인기 많은 게시글</h4>
						<span class="home-section-hotQuestion-time">${likeRankingsTime += '기준'}</span>
					</header>
					
					<!-- 첫번째 줄 -->
					<div class="home-section-categoryCards tile is-ancestor">
						<div class="home-section-categoryCards-wrapper tile is-parent">
							<c:forEach var="board" items="${likeRankings}">
								<article class="home-section-categoryCard tile is-child">
									<div class="">
										<div class="questionListCardSmall">
											<a class="categoryCard" href="${pageContext.request.contextPath += '/boardDetail.boardFree?boardId='} ${board.boardId}">
												<div>
													<span class="questionListCardSmall-numbering">${i += '.'}</span>
													<span class="questionListCardSmall-content">${board.title}</span>
												</div>
											</a>
											<div>
												<span>${board.tag}</span>
											</div>
										</div>
									</div>
								</article>
							</c:forEach>
							
<!-- 							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="questionListCardSmall">
										<a class="categoryCard">
											<div>
												<span class="questionListCardSmall-numbering">01.</span>
												<span class="questionListCardSmall-content">자동차 배터리가 자주 방전되는데 이유가 뭔가요</span>
											</div>
										</a>
										<div>
											<span>자동차</span>
										</div>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="questionListCardSmall">
										<a class="categoryCard">
											<div>
												<span class="questionListCardSmall-numbering">01.</span>
												<span class="questionListCardSmall-content">자동차 배터리가 자주 방전되는데 이유가 뭔가요</span>
											</div>
										</a>
										<div>
											<span>자동차</span>
										</div>
									</div>
								</div>
							</article>
							<article class="home-section-categoryCard tile is-child">
								<div class="">
									<div class="questionListCardSmall">
										<a class="categoryCard">
											<div>
												<span class="questionListCardSmall-numbering">01.</span>
												<span class="questionListCardSmall-content">자동차 배터리가 자주 방전되는데 이유가 뭔가요</span>
											</div>
										</a>
										<div>
											<span>자동차</span>
										</div>
									</div>
								</div>
							</article> -->
						</div>
					</div>
				</section>
			</article>
		</main>
		<jsp:include page="header/footer-main.jsp" flush="false"/>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main/main.js"></script>
</html>