<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<button class="scroll-top" id="js-button" style="margin-bottom: 190px; margin-right: 30px;">
	<i class="fa fa-chevron-up" aria-hidden="true">TOP</i>
</button>

<script type="text/javascript">
	scrollTop('js-button', 500);
	function scrollTop(elem, duration) {
		let target = document.getElementById(elem);

		target.addEventListener('click', function() {
			let currentY = window.pageYOffset;
			let step = duration / currentY > 1 ? 10 : 100;
			let timeStep = duration / currentY * step;
			let intervalID = setInterval(scrollUp, timeStep);

			function scrollUp() {
				currentY = window.pageYOffset;
				if (currentY === 0) {
					clearInterval(intervalID);
				} else {
					scrollBy(0, -step);
				}
			}
		});
	}
</script>

<div style="display: block;">
	<footer class="footer navbar-wrapper">
		<div class="footer-wrapper navbar-wrapper">
			<div class="footer-box" style="height: 100px; text-align: center;">
				푸터 조각</div>
		</div>
	</footer>
</div>