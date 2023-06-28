<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="ko">
<head>
<title>YL CINEMA</title>

<!-- Favicons -->
<link href="images/movie.png" rel="icon">
<link href="images/movie.png" rel="apple-touch-icon">

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="One Movies Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 
<!-- //banner-bottom-plugin -->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="indexForm"><img src="images/movie2.png"></a>
			</div>
			<div class="w3_search">
				<form action="mvSearch" method="GET">
					<input type="text" name="keyword" placeholder="검색해보세요!" required="">
					<input type="submit" value="검색" >
				</form>
			</div>
			<form action="mLogin" method="POST">
			<div class="w3l_sign_in_register">
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i>032 0312 1119</li>
					<c:choose>
						<c:when test="${loginId == null}">
							<li><a href="#" data-toggle="modal" data-target="#myModal">로그인</a></li>
						</c:when>
		
						<c:otherwise>
							<li><a href="mView?mId=${sessionScope.loginId}">내정보</a> <a href="mLogout">로그아웃</a></li>
						</c:otherwise>
	  				</c:choose>
				</ul>
			</div>
			</form>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					로그인 & 회원가입
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">클릭</div>
							  </div>
							  <div class="form">
								<h3>아이디와 비밀번호를 입력해주세요.</h3>
								<form action="mLogin" method="POST">
								  <input type="text" name="mId" placeholder="로그인" required="">
								  <input type="password" name="mPw" placeholder="비밀번호" required="">
								  <input type="submit" value="로그인">
								</form>
							  </div>
							  <div class="form">
								<h3>회원가입</h3>
								<form action="mJoin" method="POST" encType="multipart/form-data">
								  <input type="text" name="mId" id="mId" placeholder="아이디" required=""/><span id="check1"></span>
								  <input type="password" name="mPw" id="mPw" placeholder="비밀번호" required=""/><span id="check2"></span>
								  <input type="password" id="checkPw" placeholder="비밀번호 확인" required=""/><span id="check3"></span>
								  <input type="text" name="mName" placeholder="이름" required=""/>
								  <input type="date" name="mBirth" placeholder="생년월일" required=""/>
								  <br/><br/>
                      			  <input type="radio" name="mGender" id="gridRadios1" value="남자" checked/>
                      			  <label for="gridRadios1">남자</label>
                      			  <input type="radio" name="mGender" id="gridRadios2" value="여자"/>
                      			  <label for="gridRadios2"> 여자</label>
                      			  <br/><br/>
								  <input type="email" name="mEmail" placeholder="이메일" required=""/>
								  <input type="text" name="mPhone" placeholder="연락처" required=""/>
								  <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/>
								  <br/><br/>
								  <input type="text" name="addr1" id="sample6_postcode" placeholder="우편번호"/>
								  <input type="text" name="addr2" id="sample6_address" placeholder="주소"/>
						  		  <input type="text" name="addr3" id="sample6_detailAddress" placeholder="상세주소"/>
								  <input type="submit" value="가입하기">
								</form>
							  </div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>

<script>
	$('.toggle').click(function(){
		// Switches the Icon
		$(this).children('i').toggleClass('fa-pencil');
		// Switches the forms  
		$('.form').animate({
		height: "toggle",
		'padding-top': 'toggle',
		'padding-bottom': 'toggle',
		opacity: "toggle"
			}, "slow");
	});
</script>
<!-- //bootstrap-pop-up -->
<!-- 메뉴 시작 -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<c:choose>
								<c:when test="${loginId == 'admin'}">
									<li><a href="mvRegiForm">영화등록</a></li>
									<li><a href="mvList">영화관리</a></li>
									<li><a href="tList">상영관관리</a></li>
									<li><a href="sList">상영정보관리</a></li>
								</c:when>
		
								<c:otherwise>
									<li class="active"><a href="indexForm">홈</a></li>
									<li><a href="mvList">영화</a></li>
									<li><a href="smList">예매</a></li>
								</c:otherwise>
	  						</c:choose>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- // 메뉴 끝 -->
<!-- banner -->
	<div id="slidey" style="display:none;">
		<ul>
			<li><img src="images/플래시.jpg" alt=" "><p class='title'>플래시</p><p class='description'>
			시공간이 붕괴된 세계, 차원이 다른 히어로가 온다! 빛보다 빠른 스피드, 물체 투과, 전기 방출, 자체 회복, 천재적인 두뇌까지 갓벽한 능력을 자랑하지만 존재감은 제로, ‘저스티스 리그’에서 궂은일을 도맡아 하는 히어로 ‘플래시’.</p></li>
			<li><img src="images/엘리멘탈.jpg" alt=" "><p class='title'>엘리멘탈</p><p class='description'>
			디즈니·픽사의 놀라운 상상력! 올여름, 세상이 살아 숨 쉰다. 불, 물, 공기, 흙 4개의 원소들이 살고 있는 ‘엘리멘트 시티’.</p></li>
			<li><img src="images/범죄도시3.jpg" alt=" "><p class='title'>범죄도시3</p><p class='description'>
			대체불가 괴물형사 마석도, 서울 광수대로 발탁! 나쁜 놈들 잡는 데 이유 없고 제한 없다. 커진 판도 시원하게 싹 쓸어버린다!</p></li>
			<li><img src="images/트랜스포머.jpg" alt=" "><p class='title'>트랜스포머-비스트의 서막</p><p class='description'>
			전 우주의 행성을 집어삼키는 절대자, ‘유니크론’의 부하 ‘스커지’는 ‘테러콘’들을 이끌고 지구에 당도한다.</p></li>
			<li><img src="images/스파이더맨.jpg" alt=" "><p class='title'>스파이더맨-어크로스 더 유니버스</p><p class='description'>
			스파이더맨 VS 스파이더맨?! 여러 성장통을 겪으며 새로운 스파이더맨이 된 ‘마일스 모랄레스’. 그 앞에 다른 평행세계의 스파이더우먼 ‘그웬’이 다시 나타난다..</p></li>
		</ul>   	
    </div>
    <script src="js/jquery.slidey.js"></script>
    <script src="js/jquery.dotdotdot.min.js"></script>
	   <script type="text/javascript">
			$("#slidey").slidey({
				interval: 8000,
				listCount: 5,
				autoplay: false,
				showList: true
			});
			$(".slidey-list-description").dotdotdot();
		</script>
<!-- //banner -->

<!-- 상영예정작 시작 -->
<div class="general">
		<h4 class="latest-text w3_latest_text">상영예정작</h4>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					
				</ul>
				
				<!-- 상영예정작 -->
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
						<div class="w3_agile_featured_movies">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87057/87057_215793_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal"><img src="images/어디로p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>어디로 가고 싶으신가요</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.05</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87080/87080_215768_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal"><img src="images/빈틈p.jpg" title="album-name" class="img-responsive" alt=" "  />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>빈틈없는 사이</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.05</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87093/87093_215836_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal"><img src="images/악마들p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>악마들</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.05</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87099/87099_215646_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal"><img src="images/엔니오p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>엔니오:더 마에스트로</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.05</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87094/87094_216143_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/플래닛p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>플래닛</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.05</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87128/87128_215685_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/군산전기p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>군산전기</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.06</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87134/87134_216116_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/도라에몽p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>극장판 도라에몽-진구와 하늘의 유토피아</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.08</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87131/87131_215894_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/디어p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>디어 마이 러브</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.12</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87144/87144_216223_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/비밀p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>비밀의 언덕</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.12</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87043/87043_214998_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/슬기로운p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>슬기로운 아내 수업</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.12</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="https://s3550.smartucc.kr/encodeFile/3550/2023/06/21/e256a9240b128d08088d0df60fdc85c1_W.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/블레이즈p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>블레이즈</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.12</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="http://h.vod.cgv.co.kr/vodCGVa/87142/87142_216156_1200_128_960_540.mp4" class="hvr-shutter-out-horizontal">
									<img src="images/좋댓구p.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>좋.댓.구</h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>23.07.12</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				<!-- 상영예정작 -->
					
					<div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m22.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Assassin's Creed 3</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m2.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Bad Moms</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Central Intelligence</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="rating" aria-labelledby="rating-tab">
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m7.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Light B/t Oceans</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m11.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">X-Men</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m8.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">The BFG</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m17.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Peter</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="imdb" aria-labelledby="imdb-tab">
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m22.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Assassin's Creed 3</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m2.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Bad Moms</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Central Intelligence</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m10.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Don't Think Twice</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m23.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Dead Island 2</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>

				<!-- 목록 끝 -->
			</div>
		</div>
	</div>
<!-- 상영예정작 끝 -->

<!-- 추천영화-->
	<div class="Latest-tv-series">
		<h4 class="latest-text w3_latest_text w3_home_popular">추천영화</h4>
		<div class="container">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<!-- 플래시 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/플래시s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/87090/87090_215752_1200_128_960_540.mp4" >
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">플래시 (The Flash)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 시공간이 붕괴된 세계, 차원이 다른 히어로가 온다! 빛보다 빠른 스피드, 물체 투과, 전기 방출, 자체 회복, 천재적인 두뇌까지 갓벽한 능력을 자랑하지만 존재감은 제로,
									‘저스티스 리그’에서 궂은일을 도맡아 하는 히어로 ‘플래시’...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.06.14 </p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>액션</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 8.66
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
								
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=1"><img src="img/플래시1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=1"><img src="img/플래시2.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=1"><img src="img/플래시3.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=1"><img src="img/플래시4.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=1"><img src="img/플래시p.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 엘리멘탈 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/엘리멘탈s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/87034/87034_214741_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">엘리멘탈 (Elemental)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 디즈니·픽사의 놀라운 상상력! 올여름, 세상이 살아 숨 쉰다
									 불, 물, 공기, 흙 4개의 원소들이 살고 있는 ‘엘리멘트 시티’ 재치 있고 불처럼 열정 넘치는 ‘앰버'는 어느 날 우연히 유쾌하고 감성적이며 물 흐르듯 사는 '웨이드'를 만나...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.06.14 </p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>애니메이션</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 8.97
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=2"><img src="img/엘리멘탈1.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=2"><img src="img/엘리멘탈2.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=2"><img src="img/엘리멘탈3.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=2"><img src="img/엘리멘탈4.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=2"><img src="img/엘리멘탈5.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=2"><img src="img/엘리멘탈p.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 범죄도시3 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/범죄도시s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/87045/87045_214957_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">범죄도시3 (THE ROUNDUP : NO WAY OUT)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 대체불가 괴물형사 마석도, 서울 광수대로 발탁!
									베트남 납치 살해범 검거 후 7년 뒤, ‘마석도’(마동석)는 새로운 팀원들과 함께 살인사건을 조사한다. 사건 조사 중, ‘마석도’는 신종 마약 사건이 연루되었음을 알게 되고 수사를...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.05.31 </p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>범죄 / 액션</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 8.4
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=3"><img src="img/범죄도시1.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=3"><img src="img/범죄도시2.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=3"><img src="img/범죄도시3.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=3"><img src="img/범죄도시4.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=3"><img src="img/범죄도시5.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=3"><img src="img/범죄도시p.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 귀공자 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/귀공자s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/87095/87095_215522_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">귀공자 (The Childe)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> “난 단 한번도 타겟을 놓쳐 본 적이 없거든” 필리핀에서 불법 경기장을 전전하며 병든 어머니와 살아가는 복싱 선수 ‘마르코’.
									어머니의 수술비 마련을 위해 평생 본 적 없는 아버지를 만나러 한국으로 향하던 그의 앞에...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.06.21 </p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>액션</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 7.84
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=4"><img src="img/귀공자1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=4"><img src="img/귀공자2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=4"><img src="img/귀공자3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=4"><img src="img/귀공자4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=4"><img src="img/귀공자5.jpg"class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=4"><img src="img/귀공자p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 스파이더맨 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/스파이더맨s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/87106/87106_215513_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">스파이더맨-어크로스 더 유니버스<br/>(Spider-Man: Across the Spider-Verse)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 스파이더맨 VS 스파이더맨?!
									여러 성장통을 겪으며 새로운 스파이더맨이 된 ‘마일스 모랄레스’. 그 앞에 다른 평행세계의 스파이더우먼 ‘그웬’이 다시...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.06.21 </p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>애니메이션</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 9.67
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=5"><img src="img/스파이더맨1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=5"><img src="img/스파이더맨2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=5"><img src="img/스파이더맨3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=5"><img src="img/스파이더맨4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=5"><img src="img/스파이더맨5.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=5"><img src="img/스파이더맨p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 미녀와 야수 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/미녀s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/79466/79466_142481_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">미녀와 야수 (Beauty and the Beast)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 스크린에 재탄생한 세기의 걸작! 전 세계가 기다려온 가장 아름다운 이야기!
									똑똑하고 아름다운 ‘벨(엠마 왓슨)’은 아버지와 살고 있는 작은 마을에서 벗어나 운명적인 사랑과 모험을 꿈꾼다. 어느 날 행방불명된...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.06.21(재개봉) </p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>애니메이션</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"> 8.99</i>
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=6"><img src="img/미녀1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=6"><img src="img/미녀2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=6"><img src="img/미녀3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=6"><img src="img/미녀4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=6"><img src="img/미녀5.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=6"><img src="img/미녀p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 트랜스포머 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/트랜스s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/87055/87055_215860_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">트랜스포머-비스트의 서막<br/>(Transformers: Rise of the Beasts)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 전 우주의 행성을 집어삼키는 절대자, ‘유니크론’의 부하 ‘스커지’는
									‘테러콘’들을 이끌고 지구에 당도한다. 그에 맞서기 위해 지구에 정체를 숨기고 있던...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.06.06</p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>액션 / SF</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 8.4
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=7"><img src="img/트랜스1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=7"><img src="img/트랜스2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=7"><img src="img/트랜스3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=7"><img src="img/트랜스4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=7"><img src="img/트랜스5.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=7"></a><img src="img/트랜스p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 가디언즈 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/가디언즈s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/86883/86883_212680_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">가디언즈 오브 갤럭시-Volume3<br/>(Guardians of the Galaxy Volume 3)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> ‘가모라’를 잃고 슬픔에 빠져 있던 ‘피터 퀼’이 위기에 처한 은하계와 
									동료를 지키기 위해 다시 한번 가디언즈 팀과 힘을 모으고...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.05.03</p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>액션</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 9.39
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=8"><img src="img/가디언즈1.jpg"  class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=8"><img src="img/가디언즈2.jpg"  class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=8"><img src="img/가디언즈3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=8"><img src="img/가디언즈4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=8"><img src="img/가디언즈5.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=8"><img src="img/가디언즈p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 동감 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/동감s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/86326/86326_207882_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">동감 (Ditto)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 1999년, '용'은 첫눈에 반하게 된 '한솔'을 사로잡기 위해 친구에게 HAM 무전기를 빌린다.
									2022년, ‘무늬’는 인터뷰 과제를 위해 오래된 HAM 무전기를 작동시킨다.</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2022.11.16</p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>로맨스 / 멜로</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 6.54
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=9"><img src="img/동감1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=9"><img src="img/동감2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=9"><img src="img/동감3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=9"><img src="img/동감4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=9"><img src="img/동감5.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=9"><img src="img/동감p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 너의 눈을 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/너의눈을s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/87049/87049_215260_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">너의 눈을 들여다보면<br/>(Small, Slow but Steady)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 선천적 청각장애로 양쪽 귀가 들리지 않는 프로 복서 케이코. 
									재개발이 진행되고 있는 도쿄 도심의 작은 복싱 체육관에서 훈련을 거듭하며 다음 시합을...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.06.14</p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>드라마</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 7.91
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=10"><img src="img/너의눈을1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=10"><img src="img/너의눈을2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=10"><img src="img/너의눈을3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=10"><img src="img/너의눈을4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=10"><img src="img/너의눈을5.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=10"><img src="img/너의눈을p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 헤어질 결심 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/헤어질s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/85852/85852_203937_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">헤어질 결심 (Decision To Leave)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> 산 정상에서 추락한 한 남자의 변사 사건. 담당 형사 '해준'(박해일)은 사망자의
									아내 '서래'(탕웨이)와 마주하게 된다. "산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐."...</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2022.06.29</p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>로맨스 / 멜로 /드라마</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 8.97
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=11"><img src="img/헤어질1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=11"><img src="img/헤어질2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=11"><img src="img/헤어질3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=11"><img src="img/헤어질4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div></a>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=11"><img src="img/헤어질p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
						<!-- 인사이드 아웃 -->
						<li>
							<div class="agile_tv_series_grid">
								<div class="col-md-6 agile_tv_series_grid_left">
									<div class="w3ls_market_video_grid1">
										<img src="img/인사이드s.jpg" alt=" " width="554px" height="312px" />
										<a class="w3_play_icon" href="http://h.vod.cgv.co.kr/vodCGVa/78343/78343_128555_1200_128_960_540.mp4">
											<span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
										</a>
									</div>
								</div>
								<div class="col-md-6 agile_tv_series_grid_right">
									<p class="fexi_header">인사이드 아웃 (Inside Out)</p>
									<p class="fexi_header_para"><span class="conjuring_w3">줄거리<label>:</label></span> “괜찮아, 다 잘 될 거야! 우리가 행복하게 만들어 줄게”
									모든 사람의 머릿속에 존재하는 감정 컨트롤 본부 그곳에서 불철주야 열심히 일하는 기쁨, 슬픔, 버럭, 까칠, 소심 다섯 감정들....</p>
									<p class="fexi_header_para"><span>개봉일<label>:</label></span> 2023.01.25(재개봉)</p>
									<p class="fexi_header_para">
										<span>장르<label>:</label> </span>
										<a>애니메이션 / 코미디</a>								
									</p>
									<p class="fexi_header_para fexi_header_para1"><span>평점<label>:</label></span>
										<i class="fa fa-star" aria-hidden="true"></i> 8.97
									</p>
								</div>
								
								<div class="clearfix"> </div>
								<div class="agileinfo_flexislider_grids">
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=12"><img src="img/인사이드1.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=12"><img src="img/인사이드2.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=12"><img src="img/인사이드3.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=12"><img src="img/인사이드4.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=12"><img src="img/인사이드5.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="col-md-2 w3l-movie-gride-agile">
										<a href="mvView?mvNum=12"><img src="img/인사이드p.jpg" class="img-responsive" alt=" " /></a>
											<div class="w3l-action-icon"><i aria-hidden="true"></i></div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>
			<!-- //flexSlider -->
		</div>
	</div>
	<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	<div id="small-dialog" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/148284736"></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<!-- 추천영화 끝 -->

<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="indexForm"><img src="images/movie3.png"/></h2></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>&copy; 2023 YL CINEMA. All rights reserved | Design by <a>해냇조~ㅋㅋ</a></p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>

<!-- 카카오주소 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous">
</script>

<script>

	// 아이디 사용 가능여부 확인
	/* 키를 눌렀다 땟을 때 실행 */
	$('#mId').keyup(function() {
		
		let mId = $('#mId').val();
		let check1 = $('#check1');
		
		// Ajax 를 사용해서 아이디 중복체크
		 $.ajax({
			 	type : "GET",
			 	url : "idCheck",
			 	data :
			 	{
			 		"mId" : mId
			 	},
			 	dataType : "text",
			 	success : function(result){
			 		if(result=="OK"){
			 			check1.html(mId + "는 사용 가능한 아이디입니다.");
			 			check1.css("color", "blue");
			 		} else {
			 			check1.html(mId + "는 사용 불가능한 아이디입니다.");
			 			check1.css("color", "red");
			 		}
			 	},
			 	error : function(){
			 		alert("idCheck함수 통신실패!");
			 	}
			 });
		});

	// 비밀번호 사용 가능여부 확인
	$('#mPw').keyup(function(){
	
		let mPw = $('#mPw').val();
		let check2 = $('#check2');
	
		// 기본값 -1
		let num = mPw.search(/[0-9]/);	// 숫자 입력 여부 : 입력하면 -1이 아니다
		let eng = mPw.search(/[a-z]/);	// 영문 입력 여부 : 입력하면 -1이 아니다
		let spe = mPw.search(/[`~!@#$%^&*|\\\'\":;\/?]/);	// 특수문자 입력 여부 : 입력하면 -1이 아니다
		let spc = mPw.search(/\s/);		// 공백 여부 : 입력하면 -1이 아니다
	
		console.log("num = " + num + ", eng = " + eng + ", spe = " + spe + ", spc = " + spc);
		
		if(mPw.length < 8 || mPw.length > 16){
			check2.html("비밀번호는 8자리에서 16자리 이내로 입력해주세요.");
			check2.css("color", "red");
		} else if(spc != -1 ) {
			check2.html("비밀번호는 공백없이 입력해주세요");
			check2.css("color", "red");
		} else if(num == -1 || eng == -1 || spe == -1){
			check2.html("영문, 숫자, 특수문자를 혼합하여 입력해주세요.");
			check2.css("color", "red");
		} else {
			check2.html("사용가능한 비밀번호 입니다.");
			check2.css("color", "blue");
		}
	
	});

	// 비밀번호 일치 여부 확인
	$('#checkPw').keyup(function(){
	
		let mPw = $('#mPw').val();
		let checkPw = $('#checkPw').val();
	
		let check3 = $('#check3');
	
		if(mPw==checkPw){
			check3.html("비밀번호가 일치합니다.");
			check3.css("color", "blue");
		} else {
			check3.html("비밀번호가 일치하지않습니다.");
			check3.css("color", "red");
		}
	
	});

	// 카카오주소(참고항목에 대한건 지워주기)
	function sample6_execDaumPostcode() {
    	new daum.Postcode({
       		oncomplete: function(data) {
            	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
            	// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            	var addr = ''; // 주소 변수
           
            	//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            	if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                	addr = data.roadAddress;
            	} else { // 사용자가 지번 주소를 선택했을 경우(J)
            	    addr = data.jibunAddress;
            	}

            	// 우편번호와 주소 정보를 해당 필드에 넣는다.
            	document.getElementById('sample6_postcode').value = data.zonecode;
            	document.getElementById("sample6_address").value = addr;
            	// 커서를 상세주소 필드로 이동한다.
            	document.getElementById("sample6_detailAddress").focus();
        	}
    	}).open();
	}

	// 회원가입
	$('#join').click(function() {
		location.href = "joinForm";
	})

	// 로그인
	$('#login').click(function() {
		location.href = "loginForm";
	})

	// 로그아웃
	$('#logout').click(function() {
		location.href = "mLogout";
	})

	// 내정보
	$('#mypage').click(function() {
		location.href = "mView?mId=" + '${sessionScope.loginId}';
	})
	
	// 영화등록
	$('#mvRegister').click(function() {
		location.href = "mvRegiForm";
	})
	
	// 영화목록
	$('#mvList').click(function() {
		location.href = "mvList";
	})
	
	// 상영관등록
	$('#tRegister').click(function() {
		location.href = "tRegiForm";
	})
	
	// 상영관목록
	$('#tList').click(function() {
		location.href = "tList";
	})
	
	// 리뷰작성
	$('#review').click(function() {
		location.href = "rRegiForm";
	})
	
	// 상영정보등록
	$('#sRegister').click(function() {
		location.href = "sRegiForm";
	})
	
	// 상영정보목록
	$('#sList').click(function() {
		location.href = "sList";
	})
</script>

</html>
	