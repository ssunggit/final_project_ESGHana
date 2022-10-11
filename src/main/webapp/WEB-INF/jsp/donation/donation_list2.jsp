<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>하나</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Premium Bootstrap 5 Landing Page Template" />
    <meta name="keywords" content="bootstrap 5, premium, marketing, multipurpose" />
    <meta name="author" content="Pichforest" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="/resources/images/favicon.ico" />

    <!-- CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/resources/css/materialdesignicons.min.css" />
    <link rel="stylesheet" type="text/css" href="/resources/css/pe-icon-7-stroke.css" />

    <!-- custom Css -->
    <link rel="stylesheet" id="app-css" type="text/css" href="/resources/css/style.css" />

    <!-- colors -->
    <link href="/resources/css/colors/default.css" rel="stylesheet" type="text/css" id="color-opt" />
    
    <link rel="stylesheet" type="text/css" href="/resources/style/main.css">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- 	<script type='text/javascript' src="/resources/js/main.js"></script> -->
	
	<script src="https://kit.fontawesome.com/c4f5274430.js" crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script type='text/javascript' src="/resources/js/main.js"></script>
	<script>
		function getSearchList(){
			$.ajax({
				type: 'GET',
				url : '${ pageContext.request.contextPath }/getSearchList',
				data : $("form[name=search-form]").serialize(),
				success : function(result){
					console.log(result)
					console.log("searchList")
					let list = JSON.parse(result);
					$('#donation_who_wrap').empty();
					if(list.length >= 1){
						$(list).each(function(){
							
							str  = '<div class="search_result_box">'
							str += '<div class="result_img"><img src="/resources/img/image4.png"></div>';
							str += '<div class="result">';
							str += '<div><strong class="donation_name">' + this.donationTitle + '</strong></div>';
							str += '<div>' + this.donationCompany + '</div>';
							str += `<div><a href="${ pageContext.request.contextPath }/donationDetail/` + this.donationNo + `" id="donating"><strong>기부하기</strong></a></div>`;
							str += '</div>';
							str += '</div>'; 
							
							$('#donation_who_wrap').append(str);
		        		})				 
					}
				},
				error : function () {
					alert('실패')					
				}
			})
		}
	</script>
</head>

<body data-bs-target=".navbar" data-bs-offset="110">

<header>
	<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
</header>

	<section class="hero position-relative overflow-hidden align-items-center" id="home">
        <div class="container">
            <div class="row">
                
                <div id='slide_wrap'>
					<div class="slidebox">
						<input type="radio" name="slide" id="slide01" checked>
						<input type="radio" name="slide" id="slide02">
						<ul class="slidelist">
							<li class="slideitem">
								<a>
									<label for="slide02" class="prev"></label>
									<img src="/resources/img/slide1.png">
									<label for="slide02" class="next"></label>
								</a>
							</li>
							<li class="slideitem">
								<a>
									<label for="slide01" class="prev"></label>
									<img src="/resources/img/slide2.png">
									<label for="slide01" class="next"></label>
								</a>
							</li> 
						</ul>
					</div>
				</div>
            </div>
            
            </div>
        <!-- end container -->
    </section>
    <div class="container">
    <div class="row text-center">
	    <div class="col-lg-12 mt-5">
	        <h4 class="fw-semibold border-bottom d-inline-block text-dark pb-3">기부</h4>
	    </div>
    
	
		<div class='donation_page'> 
			<div class='page_num'> 
				<c:if test="${page.prev}">
			    	<a href="donation_list${page.makeQuery(page.startPage - 1)}"><img src='/resources/img/left.png'></a>
			  	</c:if> 
			  
				<c:forEach begin="${page.startPage}" end="${page.endPage}" var="idx">
					<a href="donation_list${page.makeQuery(idx)}" class='num'>${idx}</a>
				</c:forEach>
			    
				<c:if test="${page.next && page.endPage > 0}">
					<a href="donation_list${page.makeQuery(page.endPage + 1)}"><img src='/resources/img/right.png'></a>
				</c:if> 
			</div> 
		</div>
		
    </div>
	
	<div class="row text-center">
	<c:forEach items="${ donationList }" var="doantion" varStatus="status">
		<c:set var = "num" value = "${doantion.donationNo}" />
		
		<c:if test="${num < 6}"> 
		    <div class="col-lg-4 mt-4">
				
				<div class='heart'><i class="bi bi-heart" data-value='0'></i><i class="bi bi-heart-fill" data-value='0'></i></div>
				<div class=comment>
		        <div class="team-box">
		           <a href="${ pageContext.request.contextPath }/donationDetail/${doantion.donationNo}"><img src="/resources/img/image${num}.png" class="img-fluid rounded" alt=""></a>
		           <a href="${ pageContext.request.contextPath }/donationDetail/${doantion.donationNo}"><h5 class="text-dark mt-3 fs-16">${doantion.donationTitle}</h5></a>
		           <a href="${ pageContext.request.contextPath }/donationDetail/${doantion.donationNo}"><p class="text-muted">${doantion.donationCompany}</p></a>
		        </div>
		        </div>
		    
		    </div>
		 </c:if> 
		
		<c:if test="${num >= 6}"> 
		    <div class="col-lg-4 mt-4">
				
				<div class='heart'><i class="bi bi-heart" data-value='0'></i><i class="bi bi-heart-fill" data-value='0'></i></div>
				<div class=comment>
		        <div class="team-box">
		            <img src="/resources/img/image100.png" class="img-fluid rounded" alt="">
		            <h5 class="text-dark mt-3 fs-16">${doantion.donationTitle}</h5>
		            <p class="text-muted">${doantion.donationCompany}</p>
		        </div>
		        </div>
		    
		    </div>
		 </c:if> 
		
	  </c:forEach>
	</div>
	
	
	<!-- <div id='search_wrap'>
		<div class='search_box'> -->
			<div class='mold'>
			<form name="search-form" autocapitalize="off">
			<!-- 	<div class='t1'> -->
					<input type="text" id="search" placeholder="검색어를 입력해주세요" name="keyword">
					<button type="button" style="background-color: transparent; border: none;" onclick="getSearchList()"><i class="bi bi-search bi2"></i></button>
				<!-- </div>
 -->				<!-- <div class='t2'> -->
			<!-- 	</div> -->
			</form>
			</div>
		<!-- </div>
	</div> -->
	
	<div id="donation_who_wrap">
	<!-- ajax -->
	</div>
	
	</div>
	 	

	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>