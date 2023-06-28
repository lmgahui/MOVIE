<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>YL CINEMA-상영정보관리</title>


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
<link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
<link href="css/medile.css" rel='stylesheet' type='text/css' />
<link href="css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
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
<!-- tables -->
<link rel="stylesheet" type="text/css" href="list-css/table-style.css" />
<link rel="stylesheet" type="text/css" href="list-css/basictable.css" />
<script type="text/javascript" src="list-js/jquery.basictable.min.js"></script>
 <script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });
	   $('#table-breakpoint1').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint2').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint3').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint4').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint5').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint6').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint7').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint8').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint9').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint10').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint11').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint12').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint13').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint14').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint15').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint16').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint17').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint18').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint19').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint20').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint21').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint22').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint23').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint24').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint25').basictable({
        breakpoint: 768
      });
	  $('#table-breakpoint26').basictable({
        breakpoint: 768
      });
    });
  </script>
<!-- //tables -->
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
									<li><a href="mvList">영화관리</a></li>
									<li><a href="tList">상영관관리</a></li>
									<li class="active"><a href="sList">상영정보관리</a></li>
								</c:when>
		
								<c:otherwise>
									<li><a href="indexForm">홈</a></li>
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

<!-- 전체목록 시작 -->
	<div class="faq">
			<h4 class="latest-text w3_faq_latest_text w3_latest_text">상영정보관리 페이지</h4>
			<div class="container">
				<div class="agileits-news-top">
					<ol class="breadcrumb">
					  <li><a href="indexForm">홈</a></li>
					  <li class="active">전체목록</li>
					</ol>
				</div>
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active">
								<a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
									상영관을 선택 후 수정 또는 삭제할 상영정보의 시간을 클릭하세요.</a>
								</li>
								<button class="but-but" id="sRegister" style="float:right;">상영정보등록</button>
								
						</ul>
						
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
									</div>
									<table id="table-breakpoint">
										<thead>
										 <tr>
											<th></th>
											<th>날짜</th>
											<th>시간</th>
											<th>상영관</th>
											<th>영화</th>
										 </tr>
										</thead>
										<tbody>
											<c:forEach var="list" items="${list}">
												<tr>	
													<td></td>
													<td>${list.SDate}</td>	
													<td><a href="sView?sNum=${list.SNum}">${list.STime}</td>
													<td>${list.TThtr}</td>
													<td>${list.mvTitle}</td>
												</tr>
											</c:forEach>
										</tbody>
										 <tr>
											<th colspan="5"></th>
										 </tr>
									</table>
								</div>
						</div>
					</div>
				</div>
			</div>
	</div>
<!-- 전체목록 끝 -->

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

<!-- 카카오주소 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
