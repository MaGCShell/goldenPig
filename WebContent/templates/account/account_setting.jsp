<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계정 관리</title>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/img/favicon/fevicon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/account/account_setting.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header/footer.css">
<style>
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
input, button, span{
	font-family: 'Pretendard-Regular';
}

a {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
<jsp:include page="../header/header.jsp" flush="true" />
	<section style="padding-top: 1.25rem">
		<div id="title_container">
			<div>
				<!-- <h3 style="text-align: center; margin-top: 80px; font-weight: 600; font-size: 22px;">계정 설정</h3> -->
			</div>
		</div>
		<div id="management-color">
			<div style="padding: 0">
				<div id="management-margin">
					<ul class="management-ul" id="management-setting">
						<!-- <li class="link-li" style="margin-left: 2.5rem">토큰관리</li>
							<li class="link-li" style="margin-left: 2.5rem">미션관리</li> -->
					</ul>
				</div>
			</div>
		</div>
		<div>
			<div>
				<div>
					<div>
						<div>
							<ul class="management-ul" id="management-basic" style="display: flex; height:55px; padding-top:18px; justify-content: center">
								<li class="link-li" style="background: #0206af !important; color: #fff!important; height: 19px;">계정관리</li>
<!-- 								<li style="	display: inline-block; height: 100%; vertical-align: top; white-space: normal; 
								font-size: 1rem; list-style:none; padding: 8px 20px!important; color: #0206af; cursor: pointer">기본설정</li>
								<li style="	display: inline-block; height: 100%; vertical-align: top; white-space: normal; 
								font-size: 1rem; list-style:none; padding: 8px 20px!important;  cursor: pointer">알림설정</li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div style="padding:1rem 0 133px">
				<div style="margin-left:300px; margin-right:300px; padding-right: 120px; padding-left:120px">
					<div>
						<div>
							<h3 style="font-size: 24px; margin-top: 25px; margin-bottom: 12.5px; font-weight: 600;">기본정보</h3>
						</div>
						<div>
							<h3 style="margin-top: 2rem; margin-bottom: 1rem; font-size: 1rem !important">휴대폰 번호</h3>
						</div>
						<p>
							<span style="letter-spacing: .025em; font-size: 1.125rem"><c:out value="${memberPhoneNumber}"/></span>
						</p>
						<div>
							<h3 style="margin-top: 2rem; margin-bottom: 1rem; font-size: 1rem !important">이메일</h3>
						</div>
						<p>
							<span style="letter-spacing: .025em; font-size: 1.125rem"><c:out value="${memberEmail}"/></span>
						</p>
						<div id="account-change" style="cursor: pointer"><a href="javascript:location.href='${pageContext.request.contextPath}/modifyOk.member'">계정 정보 변경</a></div>
					</div>
				</div>
			</div>
		</div>
	</section>
<jsp:include page="../header/footer-main.jsp" flush="false" />
</body>
</html>