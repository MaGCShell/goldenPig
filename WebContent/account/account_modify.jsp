<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="stylesheet" href="../assets/css/account/account_modify_footer.css">
<link rel="stylesheet" href="../assets/css/account/account_modify.css">
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
</style>
</head>
<body>
<!-- 헤더 -->
	<div>
		<header id="header">
			<div id="header_div">
				<img alt="" src="../assets/img/account/logo.png" style="width: 60px">
			</div>
		</header>
	</div>
	<div id="wrap">
	<!-- 휴대폰 번호 변경을 누르면 나오는 모달창 -->
		<div id="modal">
			<div style="margin: 0 auto; width: 207px; position: relative;">
				<h3 style="font-size: 23px; display: inline-block;">휴대폰 번호 인증</h3>
				<label style="cursor: pointer;">
					<span style="position: absolute; right: -62px; top: 6px;">X</span>
					<button id="modal_btn_cancel" style="display: none;"></button>
				</label>
				<div>
					<div>
						<div style="margin-top: 1.5rem; width: 74%;">
							이름
						</div>
						<input type="text"; placeholder="성명 입력" style="height: 30px; outline: none; border-top: none;
						 border-right: none; border-left: none; border-color: rgb(230,230,230);">
					</div>
					<div>
						<div style="margin-top: 1.5rem; width: 81%;">
							휴대폰 번호
						</div>
						<div style="position: relative;">
							<input type="text"; placeholder="숫자만 입력" style="height: 30px; outline: none; border-top: none;
							 border-right: none; border-left: none; border-color: rgb(230,230,230);">
							<input type="button"; placeholder="인증번호 발송" value="인증번호 발송" style="height: 30px; position: absolute; 
							right: -66px; background-color: #0206AF; color: white; border-top: none; border-bottom: none; border-left: none; border-right: none; border-radius: 10px;">
						</div>
					</div>
					<div>
						<div style="margin-top: 1.5rem; width: 81%;">
							인증 번호
						</div>
						<div style="position: relative;">
							<input type="text"; placeholder="숫자만 입력" style="height: 30px; outline: none; border-top: none;
							 border-right: none; border-left: none; border-color: rgb(230,230,230);">
							<input type="button"; placeholder="인증번호 확인" value="인증번호 확인" style="height: 30px; position: absolute; 
							right: -66px; background-color: #0206AF; color: white; border-top: none; border-bottom: none; border-left: none; border-right: none; border-radius: 10px;">
						</div>
					</div>
				</div>	
				<div style="display: flex; margin: auto; justify-content: center;">
<!-- 					<footer style="margin-top: 1.5rem; justify-content: flex-end;">
						<button id="modal_btn_cancel">취소</button>
					</footer> -->
					<footer style="margin-top: 1.5rem; justify-content: flex-end;">
						<button id="modal_btn">확인</button>
					</footer>
				</div>
			</div>
		</div>
		<!-- 휴대폰 번호 변경을 완료한후 나오는 모달창 -->
		<div id="modal_phone">
			<div>
				<h4 style="font-size: 18px">휴대폰 번호를 변경하였어요.</h4>
				<div style="margin-top: 0.5rem;text-align: center; color: #484c53; word-break: keep-all;">이제 변경한 번호로 골든피그를 이용할 수 있어요.</div>
			</div>
			<footer style="margin-top: 2.5rem; display: flex; justify-content: flex-end;">
				<button id="modal_phone_btn">확인</button>
			</footer>
		</div>
		<div></div>
		<h1>인증센터</h1>
		<section>
			<h2 class ="board_name">이메일</h2>
			<div class="board" style="justify-content: space-between; display: flex">
				<span style="padding-top: 12px; letter-spacing: 0">tjfdhs364@naver.com</span>
				<button class="change_button all_button" style="border-color: rgba(230, 230, 230, var(--tw-border-opacity))">변경</button>
			</div>
		</section>
		<section>
			<h2 class ="board_name">휴대폰 번호</h2>
			<div class="board" style="justify-content: space-between; display: flex">
				<span style="padding-top: 12px; letter-spacing: 0">01057587653</span>
				<button class="change_button all_button" id="change_modal" style="border-color: rgba(230, 230, 230, var(--tw-border-opacity))">변경</button>
			</div>
		</section>
		<section style="margin-top: 48px; display: flex">
			<button class="all_button" id="password">비밀번호 재설정</button>
			<button class="all_button" id="log_out">로그아웃</button>
		</section>
		<section style="margin-top: 20px; text-align: right">
			<a style="margin-right: 0.25rem; display: inline; vertical-align: middle; cursor: pointer">
				<img alt="" src="../assets/img/account/minus.png" style="position: absolute; width: 23px; left: -23px; top: -2px">
				회원 탈퇴
			</a>
		</section>
	</div>
	<div>
		<footer class="footer">
			<hr style="border: solid 0.1px #e6e6e6">
			<div class="footer-container container-base">
				<div class="footer-container-left">
					<article class="footer-contents">
						<ul class="footer-menu">
							<li class="mr-3"><a href="#">서비스 이용약관</a></li>
							<li class="mr-3"><a href="#">유료 서비스 이용약관</a></li>
							<li class="mr-3"><a href="#">개인정보취급방침</a></li>
						</ul>
						<div class="all-rights">
           				 	© 2023 Aha. All rights reserved.
						</div>
					</article>
					<div class="logo-wrapper">
						<a href="#">
							<img class="logo-img" src="../assets/img/account/logo.png" alt="">
						</a>
					</div>
				</div>
				<div class="footer-container-right"></div>
			</div>
		</footer>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script>
	const btn = document.querySelector("#change_modal");
	const modal = document.querySelector("#modal");
	const modal_btn = document.querySelector("#modal_btn");
	const modal_btn_cancel = document.querySelector("#modal_btn_cancel");
	const modal_phone = document.querySelector("#modal_phone");
	const modal_phone_btn = document.querySelector("#modal_phone_btn");
	
	btn.addEventListener("click",() => {
		modal.style.display = "flex";
	});
	
	modal_btn_cancel.addEventListener("click",() =>{
		modal.style.display = "none";
	});
	
	modal_btn.addEventListener("click",() =>{
		modal.style.display = "none";
		modal_phone.style.display = "flex";
	});
	
	modal_phone_btn.addEventListener("click",() =>{
		modal_phone.style.display = "none";
	});
	
</script>
</html>