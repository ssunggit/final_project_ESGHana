<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

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
</head>

<body data-bs-target=".navbar" data-bs-offset="110">
   <header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

    <section class="sm-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row" style="margin-left: 40px">
                    
                        <div class="col-md-5" style="margin-top: 70px;">
                            <div class="pro-detail-content">
                            
                               <p class="d-inline-block fw-bold" style="font-size: 70px;">
                                    <span class="text-primary">E</span>
                                    <span class="text-hanapink">S</span>
                                    <span class="text-primary">G</span>
                                     Hana</p>
                                    
                               
                                <p class="text-muted fs-16">
                                    The full monty brilliant young delinquent burke naff baking cakes the wireless
                                    argy-bargy smashing, squiffy chimney pot I he nicked it twit brolly spend a penny he
                                    legged it.
                                </p>
                                
                                <div class="hover-content" style="margin-top: 30px;">
                                
								<c:choose>  
									<c:when test="${ not empty loginVO }"> 
										<a href="${pageContext.request.contextPath }/donation_list" class="btn my-2 fs-5" 
										style="color: #008485; width: 200px; border: 3px solid #008485; border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); border-width: 5px; font-weight: bold;"> 
                                            기부하기 <i class="mdi mdi-arrow-right ms-1"></i> </a>
									</c:when> 
									<c:otherwise> 
										<a href="${pageContext.request.contextPath }/login" class="btn my-2 fs-5" 
										style="color: #008485; width: 200px; border: 3px solid #008485; border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); border-width: 5px; font-weight: bold;"> 
                                            기부하기 <i class="mdi mdi-arrow-right ms-1"></i> </a>
									</c:otherwise> 
								</c:choose> 
                                
                                <c:choose>  
									<c:when test="${ not empty loginVO }"> 
										<a href="cart.html" class="btn my-2 fs-5 ms-4" 
										style="color: #e90061; width: 200px; border: 3px solid #e90061; border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); border-width: 5px; font-weight: bold;"> 
                                            ESG 챌린지 <i class="mdi mdi-arrow-right ms-1 text-hanapink"></i></a>
									</c:when> 
									<c:otherwise> 
										<a href="${pageContext.request.contextPath }/login" class="btn my-2 fs-5 ms-4" 
										style="color: #e90061; width: 200px; border: 3px solid #e90061; border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); border-width: 5px; font-weight: bold;"> 
                                            ESG 챌린지 <i class="mdi mdi-arrow-right ms-1 text-hanapink"></i></a>
									</c:otherwise> 
								</c:choose>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-7" style="margin-top: -230px;">
                            <div class="position-relative">
                                <img class="img-fluid rounded-3" src="/resources/images/heart_piggy_bank2.gif" alt="" style="margin-left: 90px; width: 480px;"/>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
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