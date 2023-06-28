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
<title>YL CINEMA-영화 관리</title>

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
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="news-css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="list-css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,5],
		  itemsDesktopSmall : [414,4]
	 
		});
	 
	}); 
</script> 
<script src="js/simplePlayer.js"></script>
<script>
	$("document").ready(function() {
		$("#video").simplePlayer();
	});
</script>

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

<!-- nav -->
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
									<li class="active"><a href="mvList">영화관리</a></li>
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
<!-- //nav -->

<!-- 영화수정 시작 -->
<div class="single-page-agile-main">
<div class="container">
			<div class="agileits-single-top">
				<ol class="breadcrumb">
				  <li><a href="indexForm">홈</a></li>
				  <li class="active">영화수정</li>
				</ol>
			</div>
			<div class="single-page-agile-info">
                           <div class="show-top-grids-w3lagile">
				<div class="col-sm-8 single-left">
					<div class="song">
						<h2>영화 정보 수정 페이지</h2>
					</div>
					<div class="all-comments">
						<div class="all-comments-info">
							<div class="agile-info-wthree-box">
								<form action="mvModify" method="POST" encType="multipart/form-data">
								
									<input type="hidden" value="${modify.mvNum}" name="mvNum"/>
									<input type="hidden" value="${modify.mvImgName}" name="mvImgName"/>
									
									제목<br/>
									<input type="text" name="mvTitle" value="${modify.mvTitle}"/><br/><br/>
									장르<br/>			           					   
									<input type="text" name="mvCategory" value="${modify.mvCategory}"/><br/><br/>
									줄거리<br/>
									<textarea rows="20" cols="40" name="mvPlot" >${modify.mvPlot}</textarea><br/><br/>
									감독<br/>
									<input type="text" name="mvDirector" value="${modify.mvDirector}"/><br/><br/>
									출연진<br/>
									<input type="text" name="mvActor" value="${modify.mvActor}"/><br/><br/>
									개봉일<br/>
									<input type="date" name="mvRelease" value="${modify.mvRelease}"/><br/><br/>
									상영시간<br/>
									<input type="text" name="mvRuntime" value="${modify.mvRuntime}"/><br/><br/>
									상영등급<br/>
									<select name="mvRating" value="mvRating">
										<option value="전체관람가">전체관람가</option>
										<option value="12세 이상 관람가">12세 이상 관람가</option>
										<option value="15세 이상 관람가">15세 이상 관람가</option>
										<option value="청소년 관람불가">청소년 관람불가</option>
									</select><br/><br/>
									포스터<br/>
									<input type="file" name="mvImg" placeholder="${modify.mvImg}"/><br/>
									스틸컷1<br/>
									<input type="text" name="mvStill1" value="${modify.mvStill1}"/><br/>
									스틸컷2<br/>
									<input type="text" name="mvStill2" value="${modify.mvStill2}"/><br/>
									스틸컷3<br/>
									<input type="text" name="mvStill3" value="${modify.mvStill3}"/><br/>
									스틸컷4<br/>
									<input type="text" name="mvStill4" value="${modify.mvStill4}"/><br/>
									스틸컷5<br/>
									<input type="text" name="mvStill5" value="${modify.mvStill5}"/><br/><br/>
									<input type="submit" id="mvList" value="수정하기">
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
<!-- 영화수정 끝 -->
	
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

<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous">
</script>
	
<script>

	// 로그아웃
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
</html>
