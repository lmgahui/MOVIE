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
<html lang="en">
<head>
<c:choose>
	<c:when test="${loginId == 'admin'}">
		<title>YL CINEMA-상영정보 상세보기</title>
	</c:when>
	<c:otherwise>
		<title>YL CINEMA-예매</title>
	</c:otherwise>
</c:choose>

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
									<li class="active"><a href="sList">상영정보관리</a></li>
								</c:when>
		
								<c:otherwise>
									<li><a href="indexForm">홈</a></li>
									<li><a href="mvList">영화</a></li>
									<li class="active"><a href="smList">예매</a></li>
								</c:otherwise>
	  						</c:choose>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- 메뉴 끝 -->

<!-- 상영정보 상세보기 시작 -->
		<!-- /w3l-medile-movies-grids -->
			<div class="single-page-agile-main">
			<div class="container">
				<div class="agileits-single-top">
				<ol class="breadcrumb">
				  <li><a href="indexForm">홈</a></li>
				  <li class="active">정보수정</li>
				</ol>
			</div>
			<div class="single-page-agile-info">
                   <!-- /movie-browse-agile -->
                           <div class="show-top-grids-w3lagile">
				<div class="col-sm-8 single-left">
					<div class="song">
						<div class="song-info">
							<h2>상영정보 수정 페이지</h2>
						</div>
					</div>
					<div class="clearfix"> </div>

					<div class="all-comments">
						<div class="all-comments-info">
							<div class="agile-info-wthree-box">
								<form action="sModify" method="POST">
									상영번호<br/>
									<input type="text" name="sNum" value="${modify.SNum}" readonly/><br/><br/>
									상영날짜<br/>
									<input type="date" name="sDate" value="${modify.SDate}"/><br/><br/>   
									상영시간<br/>    					   
									<input type="time" name="sTime" value="${modify.STime}"/><br/><br/>
									상영관 번호<br/>  
									<input type="text" name="tNum" value="${modify.TNum}"/><br/><br/>
									영화 번호<br/>
									<input type="text" name="mvNum" value="${modify.mvNum}"/><br/><br/>
									
									<table>
										<tr>
											<th colspan="2">
												<input class="but-but" type="submit" value="수정하기" />
											</th>
										</tr>
									</table>
									
									<div class="clearfix"> </div>
								</form>
							</div>
						</div>
						
					</div>
				</div>
				
				<div class="clearfix"> </div>
			</div>		 
		</div>
</div>		
</div>	
	<!-- //w3l-medile-movies-grids -->
<!-- 상영정보 상세보기 끝 -->
	
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
<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
<script>

$('#modify').click(function(){
	location.href = "sModiForm?sNum=${view.SNum}";
});

$('#delete').click(function() {
	location.href = "sDelete?sNum=${view.SNum}";
});

//로그아웃
$('#logout').click(function() {
	location.href = "mLogout";
});

// 내정보
$('#mypage').click(function() {
	location.href = "mView?mId=" + '${sessionScope.loginId}';
});

// 영화등록
$('#mvRegister').click(function() {
	location.href = "mvRegiForm";
});

// 영화목록
$('#mvList').click(function() {
	location.href = "mvList";
});

// 상영관등록
$('#tRegister').click(function() {
	location.href = "tRegiForm";
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
</html>
