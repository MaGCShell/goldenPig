<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 공지사항 작성</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminPage-noticeWrite.css">
</head>
<body>
	<div>
		<div class="info-title-box info-title-box-flex">
			<div class="logo-box-layout">
				<div class="logo-box">
					<img src="${pageContext.request.contextPath}/static/img/admin/logo_icon.png">
				</div>
				<div class="logo-title">
					<span>골든 피그</span>
				</div>
			</div>
			<div>
				<div class="select-name">
					<span>공지사항 작성</span>	
				</div>
			</div>
		</div>
		<div class="wrap"> 
		
			<!-- 사이드 바 -->
			<div id="side-bar">
				<jsp:include page="sidemenu.jsp" flush="false" />
			</div>
			<!-- 사이드 바 끝-->
		
			<div class="container">
				<div class="container-margin">
					<!-- 헤더 -->
					<div class="prev-button-layout">
						<div>
							<c:choose>
								<c:when test="${page >= 1}">
									<a>
										<img src="${pageContext.request.contextPath}/static/img/admin/prev_icon.png" class="prev-icon">
									</a>
									<a class="back-page" href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeList.admin?page=${page}'">리스트로 돌아가기</a>
								</c:when>
								<c:otherwise>
									<a>
										<img src="${pageContext.request.contextPath}/static/img/admin/prev_icon.png" class="prev-icon">
									</a>
									<a class="back-page" href="javascript:location.href='${pageContext.request.contextPath}/adminNoticeList.admin?page=1'">리스트로 돌아가기</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					
					<!-- 내용 섹션 -->
					<section class="board-info-box-layout">
						
						<div class="board-info-box">
							<div class="board-info-title-box">
								<span>공지사항 등록하기</span>
							</div>
							<hr>
							<div class="info-table">
							<form action="${pageContext.request.contextPath}/adminNoticeWriteOk.admin">
								<div>
									<input type="text" class="notice-title" name="noticeTitle" placeholder="제목을 입력해주세요.">
								</div>
								<hr>
								<div>
									<textarea class="notice-content" name="noticeContent" placeholder="내용을 입력해주세요."></textarea>
								</div>
								<hr>
								<div>
									<button id="notice-button">보내기</button>
								</div>
							</form>	
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/admin/notice-write.js"></script>
</html>