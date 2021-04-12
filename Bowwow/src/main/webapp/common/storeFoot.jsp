<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<button class="scroll-top" id="js-button"
	style="margin-bottom: 240px; margin-right: 30px; font: 'Jua'">
	<i class="fa fa-chevron-up" aria-hidden="true">TOP</i>
</button>

<script type="text/javascript">
	scrollTop('js-button', 100);
	function scrollTop(elem,duration) {
	    let target = document.getElementById(elem);
	
	    target.addEventListener('click', function() {
	        let currentY = window.pageYOffset;
	        let step = duration/currentY > 1 ? 10 : 100;
	        let timeStep = duration/currentY * step;
	        let intervalID = setInterval(scrollUp, timeStep);
	
	        function scrollUp(){
	            currentY = window.pageYOffset;
	            if(currentY === 0) {
	                clearInterval(intervalID);
	            } else {
	                scrollBy( 0, -step );
	            }
	        }
	    });
	}
</script>
<!-- footer 푸터 시작부분-->
<div style="display: block;">
		<div class="footer-wrapper navbar-wrapper">
			<footer class="footer navbar-wrapper">
			<div class="container">
				<br>
				<div class="row">
					<div class="col-sm-7" style="text-align: left;">
						<img src="/resources/images/logo.png" class="img-radius" alt="User-Profile-Image">
						<br>
						<h3 style="color : black;">BOW-WOW</h3>
						<h5 style="color : black;">Bowwow에서 판매되는 모든  제품은 정식제조, <br>정식수입원을 통해 유통되는 100% 정품임을 보증합니다.</h5>
						<h6 style="color : black;">BOW-WOW ｜ 서울시 서초구 강남대로 459 (서초동, 백암빌딩)｜ 사업자등록번호 : 210-11-12345</h6>
						
					</div>
					<div class="col-sm-2"><h4 style="text-align: center;">SNS</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">인스타그램</a>
							<a href="https://github.com/catgoing/DeveloPaw" class="list-group-item" target="_blank">Github</a>
							<a href="#" class="list-group-item">유튜브</a>
						</div>
					</div> 	
					<div class="col-sm-3" style="text-align: left;"><h4 ><span class="glyphicon glyphicon-ok">&nbsp;by Bowwow</span></h4>
					<br><br><br><br>
					<h6 style="color : black;">Copyright &copy; Bowwow All rights reserved. </h6>
					</div>
				</div>
			</div>
		</footer>
		</div>
</div>