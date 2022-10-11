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
							
							str = '<div class="row text-center" style="margin-bottom: 20px;">'
							str += '<div class="col-md-5">'
							str += '<img src="/resources/img/image4.png" class="img-fluid rounded" >';
							str += '</div>';
							
							str += '<div class="col-md-7 mt-4" style="width : 300px;">'
							str += '<div class="mt-1"><strong class="donation_name">' + this.donationTitle + '</strong></div>';
							str += '<div class="mt-2 text-box-search">' + this.donationInfo + '</div>';
							str += `<div class="mt-2"><a href="${ pageContext.request.contextPath }/donationDetail/` + this.donationNo + `" id="donating" style="width:300px;"><strong>기부하기</strong></a></div>`;
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
	
	<style>
		input::placeholder {
  			color: #ededed;;
		}
		
		.text-box {
		color: white;
  		overflow: hidden;
   		text-overflow: ellipsis;
   		white-space: nowrap;
   		white-space: normal;
   		line-height: 1.5;
    	/* height: 3.9em; */
   		text-align: left;
    	word-wrap: break-word;
    	display: -webkit-box;
    	-webkit-line-clamp: 3;
    	-webkit-box-orient: vertical;
		}
		.text-box-search {
		
		/* height: 350px; */
		color: black;
  		overflow: hidden;
   		text-overflow: ellipsis;
   		white-space: nowrap;
   		white-space: normal;
   		line-height: 1.5;
    	/* height: 3.9em; */
   		text-align: left;
    	word-wrap: break-word;
    	display: -webkit-box;
    	-webkit-line-clamp: 3;
    	-webkit-box-orient: vertical;
		}
		
	</style>
</head>

<body data-bs-target=".navbar" data-bs-offset="110">

<header>
	<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
</header>


    <section>
        <div class="container">
            <div class="row text-center"  style="margin-top: 20px;">
                <div class="col-md-4" style="margin-top: 200px;">
	                 <div class="pro-detail-content">
	                    <p class="d-inline-block fw-bold" style="font-size: 30px;">
	                    당신의 마음을 전해주세요.
	                    </p>
	                    <p class="text-muted fs-16">
	                    당신의 기부로 세상이 조금 더 환해집니다.
	                    </p>
	                 </div>
                </div>
                <div class="col-lg-8" >
                    <img src="/resources/images/help3.gif" alt="about-img" class="">
                </div>
            </div>

            <div class="row text-left">
                <div class="col-lg-12 mt-5">
                    <h4 class="fw-semibold border-bottom d-inline-block text-dark pb-3">인기있는 기부</h4>
                </div>
            </div>
            
            <div class="row">
				<div style="margin-left: 1000px;"> 
					<c:if test="${page.prev}">
				    	<a href="donation_list${page.makeQuery(page.startPage - 1)}"><img src='/resources/img/left.png'></a>
				  	</c:if> 
				  
					<c:forEach begin="${page.startPage}" end="${page.endPage}" var="idx">
						<a href="donation_list${page.makeQuery(idx)}" class='num' style="font-size: 20px; font-weight: bold;">${idx}</a>
					</c:forEach>
				    
					<c:if test="${page.next && page.endPage > 0}">
						<a href="donation_list${page.makeQuery(page.endPage + 1)}"><img src='/resources/img/right.png' style="width: 25px; height: 25px; margin-top: -5px; margin-left: 5px;"></a>
					</c:if> 
				</div> 
			</div>

            <div class="row text-center">
                <c:forEach items="${ donationList }" var="doantion" varStatus="status">
	                <div class="mt-4 col-4 ">
						<c:set var = "num" value = "${doantion.donationNo}" />
						<c:if test="${num < 6}"> 
							<div class="me-2" style="background-image: url('/resources/img/image${num}.png'); height: 500px; border-radius:15px;">
		                        <div style="position: relative; top: 270px; width: 340px; text-align: left; padding-left: 15px; height: 60px;">
		                        	<h4 style="color: white;">${doantion.donationTitle}</h4>
		                        </div>
		                        <div style="position: relative; top: 270px; width: 340px; text-align: left; padding-left: 15px; height: 100px;">
		                        	<p class="text-box">
		                        		${doantion.donationInfo}
		                       		</p>
		                       	</div>
		                        <div style="position: relative; top: 250px;">
			                        <a href="${ pageContext.request.contextPath }/donationDetail/${doantion.donationNo}" class="bg-primary btn" style="color: white; font-weight: bold;">
			                        	바로 후원하기
			                        </a>
		                        </div>
		                    </div>
			 			</c:if> 
			 			
			 			<c:if test="${num >= 6}"> 
	                    <div class="me-2" style="background-image: url('/resources/img/image100.png'); height: 500px; border-radius:15px;">
		                        <div style="position: relative; top: 270px; width: 340px; text-align: left; padding-left: 15px; height: 60px;">
		                        	<h4 style="color: white;">${doantion.donationTitle}</h4>
		                        </div>
		                        <div style="position: relative; top: 270px; width: 340px; text-align: left; padding-left: 15px; height: 100px;">
		                        	<p class="text-box">
		                        		${doantion.donationInfo}
		                       		</p>
		                       	</div>
		                        <div style="position: relative; top: 250px;">
			                        <a href="${ pageContext.request.contextPath }/donationDetail/${doantion.donationNo}" class="bg-primary btn" style="color: white; font-weight: bold;">
			                        	바로 후원하기
			                        </a>
		                        </div>
		                    </div>
	                	</c:if>
		  			</div>
	  			</c:forEach>
            </div>
			
			
			<div class="row text-center">
					<form name="search-form" autocapitalize="off">
						<input type="text" id="search" placeholder="검색어를 입력해주세요" name="keyword" class="fw-semibold" style="border-bottom: 2px solid #ededed; ::placeholder: #ededed">
						<button type="button" style="background-color: transparent; border: none;" onclick="getSearchList()"><i class="bi bi-search bi2"></i></button>
					</form>
			</div>
			
			<div id="donation_who_wrap"></div>
			
        </div> <!-- end container -->
    </section>

	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>