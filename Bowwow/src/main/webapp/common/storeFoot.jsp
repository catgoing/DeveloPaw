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
				
					<div class="col-sm-4" style="text-align: center;"><img
									src="../resources/images/logo.png" class="img-radius"
									alt="User-Profile-Image"><h5>Copyright &copy; 2021</h5><h5>bitcamp 183 Group2</h5></div>
					<div class="col-sm-2"></div>
					<div class="col-sm-2"><h4 style="text-align: center;">내비게이션</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">소개</a>
							<a href="#" class="list-group-item">프로젝트원</a>
							<a href="#" class="list-group-item">기능구현</a>
						</div>
					</div>
					<div class="col-sm-2"><h4 style="text-align: center;">SNS</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">인스타그램</a>
							<a href="https://github.com/catgoing/2ndProject_Group2" class="list-group-item" target="_blank">Github</a>
							<a href="#" class="list-group-item">유튜브</a>
						</div>
					</div> 	
					<div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-ok">&nbsp;by Group2</span></h4>
					</div>
				</div>
			</div>
		</footer>
		</div>
</div>