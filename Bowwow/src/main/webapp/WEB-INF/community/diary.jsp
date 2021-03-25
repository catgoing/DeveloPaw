<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!--  <nav class="pcoded-navbar">
						<div class="sidebar_toggle">
							<a href="#"><i class="icon-close icons"></i></a>
						</div>
						<div class="pcoded-inner-navbar main-menu">
							<!-- 
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu">
									<a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Basic</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
								</li>
							</ul>
							 

							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">커뮤니티</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>

							<!-- <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="bs-basic-table.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-receipt"></i><b>B</b></span>
                                        <span class="pcoded-mtext">Table</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>

                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="chart-morris.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-bar-chart-alt"></i><b>C</b></span>
                                        <span class="pcoded-mtext">Charts</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="map-google.html" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-map-alt"></i><b>M</b></span>
                                        <span class="pcoded-mtext">Maps</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul> 
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">펫
											다이어리</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="storeMain.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">펫
											소개</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>

						</div>
					</nav> -->
<!-- Page-header start -->

<!-- Page-header end -->
<!-- Main-body start -->
${ boardList}

<div class="main-body">
	<div class="page-wrapper">
		<!-- Page-body start -->
		<div class="page-body">
			<section class="featured spad">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="section-title">
								<h2>펫 다이어리</h2>
							</div>
							<br>
						</div>
					</div>
					<div class="monthly-products">
						<ul>

							<c:forEach var="list" items="${ boardList}">
								<li>
									<div class="block-item default-item">
										<div class="best-label">${list.board_no }</div>
										<div class="bookmark_btn click-btn">
											<div class="scrap" id="scrapBtn_311"
												onclick="WitCommon.boardScrap('knowhow', '311')">
												<img id="scrapImg_311" src="../resources/images/dog.jpg"
													alt="">
											</div>
										</div>
										<div class="img-area"
											onclick="location.href='/board/knowhow/311'">
											<div class="imgItem"
												style="background: url('https://web-wit.s3.ap-northeast-2.amazonaws.com/images/boardKnowhow/311/knowhow_1609169403_0.gif') center center no-repeat; background-size: cover;">
											</div>
										</div>
										<div class="text-area">
											<div class="item-title"
												onclick="location.href='/board/knowhow/311'">
												<h4>${list.board_title }</h4>
											</div>
											<p class="hashtag">
												<span>#마사지 </span><span>#강아지마사지 </span><span>#강아지테라피
												</span><span>#예민한강아지 </span><span>#강아지</span><span>#...</span>
											</p>
											<div class="item-items">
												<div class="profile" onclick="pagePopup.openGotoPopup()">
													<p>${list.id }</p>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="block-item default-item">
										<div class="best-label">1</div>
										<div class="bookmark_btn click-btn">
											<div class="scrap" id="scrapBtn_311"
												onclick="WitCommon.boardScrap('knowhow', '311')">
												<img id="scrapImg_311" src="../resources/images/dog.jpg"
													alt="">
											</div>
										</div>
										<div class="img-area"
											onclick="location.href='/board/knowhow/311'">
											<div class="imgItem"
												style="background: url('https://web-wit.s3.ap-northeast-2.amazonaws.com/images/boardKnowhow/311/knowhow_1609169403_0.gif') center center no-repeat; background-size: cover;">
											</div>
										</div>
										<div class="text-area">
											<div class="item-title"
												onclick="location.href='/board/knowhow/311'">
												<h4>제목</h4>
											</div>
											<p class="hashtag">
												<span>#마사지 </span><span>#강아지마사지 </span><span>#강아지테라피
												</span><span>#예민한강아지 </span><span>#강아지</span><span>#...</span>
											</p>
											<div class="item-items">
												<div class="profile" onclick="pagePopup.openGotoPopup()">
													<p>닉네임</p>
												</div>
											</div>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</section>
		</div>

	</div>
	<!-- Page-body end -->
</div>




