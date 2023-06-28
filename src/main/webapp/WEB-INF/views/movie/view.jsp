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
<title>YL CINEMA-영화 상세정보</title>

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
									<li><a href="indexForm">홈</a></li>
									<li  class="active"><a href="mvList">영화</a></li>
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

<!-- 주요정보 시작 -->
<div class="single-page-agile-main">
<div class="container">
		<!-- /w3l-medile-movies-grids -->
			<div class="agileits-single-top">
				<ol class="breadcrumb">
				  <li><a href="indexForm">홈</a></li>
				  <li class="active">주요정보</li>
				</ol>
			</div>
			<div class="single-page-agile-info">
                   <!-- /movie-browse-agile -->
                           <div class="show-top-grids-w3lagile">
				<div class="col-sm-8 single-left">
				
					<!-- 제목 -->
					<div class="song">
						<div class="song-info">
							<h2>${view.mvTitle}</h2>	
						</div>
						<div class="video-grid-single-page-agileits"></div>
					</div>
					
					<div class="clearfix"> </div>

					<!-- 상세정보 -->
					<div class="all-comments">
						<div class="all-comments-info">
							<a>주요정보</a>
							<div class="agile-info-wthree-box">
								<form>
									<div>${view.mvPlot}</div>
									<br/>
									<div>감독 : ${view.mvDirector}</div>
									<br/>
									<div>출연진 : ${view.mvActor}</div>
									<br/>
									<div>개봉일 : ${view.mvRelease}</div>
									<br/>
									<div>상영시간 : ${view.mvRuntime}</div>
									<br/>
									<div>상영등급 : ${view.mvRating}</div>
									<br/>
									<c:choose>
										<c:when test="${loginId == 'admin'}">
											<table>
												<tr>
													<th colspan="2">
													<button class="but-but" type="button" value="수정" id="modify">영화수정</button> <button class="but-but" type="button" value="삭제" id="delete">영화삭제</button>
												</th>
												</tr>
											</table>
										</c:when>
		
										<c:otherwise>
											<button class="but-but" type="button" value="상영정보" id="smvList">상영정보</button>
										</c:otherwise>
	  								</c:choose>
									
								</form>
							</div>
						</div>
					</div>
					
					<!-- 스틸컷 -->
					<div class="all-comments">
						<div class="all-comments-info">
							<a>스틸컷</a>
							<div class="agile-info-wthree-box">
								<form>
									<table>
										<tr>
											<td><img src="${view.mvStill1}" width="360px" style="padding : 10px;"/></td>
											<td><img src="${view.mvStill2}" width="360px" style="padding : 10px;"/></td>
										</tr>
										<tr>
											<td><img src="${view.mvStill3}" width="360px" style="padding : 10px;"/></td>
											<td><img src="${view.mvStill4}" width="360px" style="padding : 10px;"/></td>
										</tr>
										<tr colspan="2">
											<td><img src="${view.mvStill5}" width="360px" style="padding : 10px;"/></td>
										</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
					
					<!-- 관람평 목록 -->
						<div class="all-comments">
							<div class="all-comments-info">
								<a>관람평</a>
									<div class="agile-info-wthree-box">
										<div id="rvArea">
										<!-- 관람평 목록 가져올 영역 -->
										</div>
									</div>
							</div>
						</div>
		
					<!-- 관람평 -->
						<div class="all-comments"  id="rvWrite">
							<div class="all-comments-info">
								<a>관람평 작성</a>
									<div class="agile-info-wthree-box">
											<input type="hidden" value="${view.mvNum}" id="mvNum" />
											<input type="text" value="${loginId}" id="rWriter" readonly/>
											<textarea rows="3" cols="30" id="rContent" onfocus="checkLogin()" placeholder="${view.mvTitle} 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요." required=""></textarea>
											<br/>
											<button class="but-but" id="writeBtn">등록하기</button>
										<div class="clearfix"> </div>
									</div>
							</div>
						</div>		
	
				</div>
				
				<!-- 포스터 -->
				<div class="col-md-4 single-right">
					<div class="single-grid-right">
						<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
								<img src="img/${view.mvImgName}" width="300px" height="400px" />
								<br/><br/>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				
				<div class="clearfix"> </div>
			</div>
			<!-- //movie-browse-agile -->	 
		</div>
		<!-- //w3l-latest-movies-grids -->
	</div>	
</div>
<!-- 주요정보 끝 -->
	
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

	// 회원가입
	$('#join').click(function() {
		location.href = "member/joinForm";
	});

	// 상영정보
	$('#smvList').click(function() {
		location.href = "smvList?mvNum=${view.mvNum}";
	});
	
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
		} else if(num == -1 | eng == -1 || spe == -1){
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
</script>

<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous">
</script>

<script>

	//회원가입
	$('#join').click(function() {
		location.href = "joinForm";
	});

	// 로그인
	$('#login').click(function() {
		location.href = "loginForm";
	});

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
	
	// 관람평 수정
	$('#modify').click(function() {
		location.href = "mvModiForm?mvNum=${view.mvNum}";
	});

	// 관람평 삭제
	$('#delete').click(function() {
		location.href = "mvDelete?mvNum=${view.mvNum}";
	});
	
	// 관람평 목록
	$('#sList').click(function() {
		location.href = "sList?mvNum=${view.mvNum}";
	});
	
	function checkLogin(){
		if(${loginId == null}){
			$('#rContent').blur();
			alert('로그인 후 사용하세요');
			location.href="indexForm";
		}
	}
	
	// ajax로 관람평 불러오기
	$.ajax({
		type : "POST",
		url : "rList",
		data : {
			"mvNum" : ${view.mvNum}
		},
		dataType : "json",
		success : function(list){
			console.log(list);
			rvList(list);
		},
		error : function(){
			alert("관람평 불러오기 통신 실패");
		}
	});
	
	function rvList(list){
		let output ="";
		
		for(let i in list){
			let rNum = list[i].rnum;
			let rContent = list[i].rcontent;
			
			output += "<div class='media' id='mButton"+ rNum +"'>";
			
			output += "<h5>작성자 - " + list[i].rwriter + "</h5>";
			
			output += "<div class='media-left'>";
			output += "<img src='images/유저.png' title='프로필' width='40px' height='40px'/>";
			output += "</div>";
			
			output += "<div class='media-body'>";
			output += "<p>" + list[i].rcontent + "</p>";
			output += "<span>" + list[i].rdate + "</span>";
			output += "<br/>"
			output += "</div>";
			
			if('${loginId}' == list[i].rwriter || '${loginId}' == 'admin'){
				output += "<button class='but-but' onclick=\"rModiForm('"+ list[i].rnum +"','"+ list[i].rcontent +"')\">수정</button> ";
				output += "<button class='but-but' onclick='rDelete("+ list[i].rnum +")'>삭제</button>";
			} 
			output += "</div>";	
		}
		
		$('#rvArea').append(output);
	}
	
	// 관람평 입력(writeBtn) 버튼을 클랙했을 경우
	$('#writeBtn').click(function(){
		let rWriter = $('#rWriter').val();		// 작성자
		let rContent = $('#rContent').val();	// 내용
		let mvNum = $('#mvNum').val();			// 게시글 번호(관람평 번호 아님)
		
		console.log("rWriter : " + rWriter + ", rContent : " + rContent + ", mvNum : " + mvNum );
			
		$.ajax({
			type : "POST",
			url : "rRegister",
			data : {
				"mvNum" : mvNum,
				"rContent" : rContent,
				"rWriter" : rWriter
			},
			dataType : "json",
			success : function(list){
				rvList(list);
				$('#rContent').val("");
			},
			error : function(list){
				alert('관람평 작성 통신 실패!');
			}
		});
	});
	
	// 관람평 수정
	function rModiForm(rNum, rContent){
		console.log(rNum);
		
		let output ="";
			
			output += "<div class='media'>";
			
			output += "<div class='media-body'>";
			output += "<textarea rows='3' cols='30' id='edReview' required=''>" + rContent + "</textarea>";
			output += "</div>";
			
			output += "<input  type='hidden' value='"+rNum+"' id='rNum'>";
			output += "<button class='but-but' onclick='rModify()'>수정</button> ";
			output += "<button class='but-but' onclick='rDelete(" + rNum + ")'>삭제</button>";
			
			output += "</div>";
		
		$('#mButton' + rNum).replaceWith(output);
		$('#edReview').focus();
	}
	
	// 관람평 수정
	function rModify(){
		//alert('수정 관람평 번호 : ' + cNum);
		
		let rContent = $('#edReview').val();
		let rNum = $('#rNum').val();
		let mvNum = ${view.mvNum};
		console.log(rNum);
		
		$.ajax({
			type : "POST",
			url : "rModify",
			data : {
				"rNum" : rNum,
				"mvNum" : mvNum,
				"rContent" : rContent
			},
			dataType : "json",
			success : function(list){
				location.href="mvView?mvNum=" + mvNum;
				$('#rContent').val("");
				rvList(list);
			},
			error : function(){
				alert('관람평 수정 통신 실패!');
			}
		});
	}
	
	// 관람평 삭제
	function rDelete(rNum){
		let conf = confirm('삭제하시겠습니까?')
		let mvNum = ${view.mvNum};
		console.log(rNum);
		
		if(conf){
			$.ajax({
				type : "POST",
				url : "rDelete",
				data : {
					"rNum" : rNum,
					"mvNum" : mvNum
				},
				dataType : "json",
				success : function(list){
					location.href="mvView?mvNum=" + mvNum;
					rvList(list);
				},
				error : function(){
					alert('관람평 삭제 통신 실패!');
				}
			});
		} else{
			alert('취소했습니다.');
		}
	}

</script>
	
<script>

	
</script>
</html>
