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

<script>
	if('${msg}'){
		alert('${msg}')
	}
</script>
</head>

<body data-bs-target=".navbar" data-bs-offset="110">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>


<!-- Start Title -->
    <section>
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-9">
                    <h2 class="text-dark fw-light lh-base mt-5"><span class="title fw-medium">Login</span></h2>
                    <p class="fs-16 text-muted mb-0 mt-4">ESG Hana에 오신 것을 환영합니다.<br> 당신의 아이디로 로그인 해주세요.</p>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- End Title -->

    <section class="sm-section">
        <div class="container">
        	
        	<div class="row justify-content-center">
                <div class="col-lg-12 text-center filters-group-wrap mb-3">
                    <div class="filters-group">
                        <ul class="container-filter mb-0 categories-filter list-unstyled filter-options">
                            <li class="list-inline-item categories position-relative my-sm-0 my-2"
                                data-group="all"><a href="javascript:void(0)">개인</a></li>
                            <li class="list-inline-item categories position-relative active my-sm-0 my-2 "
                                data-group="branding"><a class="" href="javascript:void(0)">기업</a></li>
                        </ul>
                    </div>
                </div>
                <!--end col-->
            </div>
        
            <div class="row" style="margin-top: -40px;">
                <div class="col-lg-12 mt-5 d-flex justify-content-center"">
                    <form action="${ pageContext.request.contextPath }/login" method="post">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" id="name" placeholder="Your name" name="id"/>
                                    <label class="text-muted" for="name">ID</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form-floating mb-3">
                                    <input type="password" class="form-control" placeholder="Your name"  name="password"/>
                                    <label class="text-muted" for="email">PASSWORD</label>
                                </div>
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col-lg-12 mb-3">
                                <input type="submit" id="submit" name="send" class="form-control submitBnt btn btn-primary rounded loginButton"
                                    value="로그인" />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-12 mb-3">
                                <a href="${ pageContext.request.contextPath }/signup" type="button" id="submit" name="" class="form-control submitBnt btn btn-secondary rounded signupButton">회원가입</a>
                            </div>
                        </div>
                        
                    </form>
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