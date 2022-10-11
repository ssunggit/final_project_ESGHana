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
	
	<script src="https://kit.fontawesome.com/c4f5274430.js" crossorigin="anonymous"></script>

</head>

<body data-bs-target=".navbar" data-bs-offset="110">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

	<!-- Start Title -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="text-dark fw-light lh-base mt-5">개인회원과 기업회원중 원하는 유형을 선택해주세요</h2>
                    <p class="fs-16 text-muted mb-0">ESG Hana는 개인회원과 기업회원 두 개의 유형으로 회원가입이 가능합니다.</p>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- End Title -->

    <section class="sm-section">
        <div class="container">
        
            <div class="row">
                <div class="col-lg-6 d-flex justify-content-center" style="display: block;">
	                <p style="margin-bottom:4px; font-size: 25px; font-weight: bold;">개인 회원가입</p>
                </div>
                
                <div class="col-lg-6 d-flex justify-content-center">
	                <p style="margin-bottom:4px; font-size: 25px; font-weight: bold;">기업 회원가입</p>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-6 d-flex justify-content-center" style="display: block;">
	                <a href="${ pageContext.request.contextPath }/">
	                	<img src="/resources/images/person.png" style="padding: 15px; width: 350px; height: 350p; border: 6px solid #008485; border-radius: 50px; box-shadow: 5px 5px 5px gray;"/>
	                </a>
                </div>
                
                <div class="col-lg-6 d-flex justify-content-center">
	                <a href="${ pageContext.request.contextPath }/signupCompany">
	                	<img src="/resources/images/company.png" style="padding: 15px; width: 350px; height: 350p; border: 6px solid #E90061; border-radius: 50px; box-shadow: 5px 5px 5px gray;">
	                </a>
                </div>
            </div>

        </div> <!-- end container -->
    </section>

	<!-- FOOTER -->
    <footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>

    <!-- Javascript -->
    <script src="/resources/js/bootstrap.bundle.min.js"></script>

    <!-- Shuffle JS -->
    <script src="/resources/js/shuffle.min.js"></script>
    <script src="/resources/js/gallery.init.js"></script>

    <!-- feather icon -->
    <script src="/resources/js/feather.js"></script>

    <!-- app js -->
    <script src="/resources/js/app.js"></script>

</body>
</html>