<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    
	<script src="https://kit.fontawesome.com/c4f5274430.js" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://rawgit.com/kimmobrunfeldt/progressbar.js/1.0.0/dist/progressbar.js"></script>
</head>

<body data-bs-target=".navbar" data-bs-offset="110">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>


<!-- Start Title -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="page-title">
                        <h2 class="text-dark fw-light lh-base mt-5">나의 <span
                                class="fw-medium title">기부 저금통</span></h2>
                        <p class="fs-16 text-muted mb-0">당신의 기부를 응원합니다.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- end container -->
    </section>
    <!-- End Title -->


    <section class="sm-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="border-bottom">
                        <div class="row align-items-center pb-sm-3 pb-4">
                            <div class="col-lg-8 col-md-6 my-md-0 my-2">
                                <p class="text-muted mb-0 py-sm-0 py-2"></p>
                            </div>
                            <div class="col-lg-4 col-md-6 my-md-0 my-2">
                                <form>
                                    <div class="row mb-0 mt-md-4 mt-lg-0">
                                        <h5 class="col-sm-3 col-form-label">Sort By :</h5>
                                        <div class="col-sm-9 ps-0">
                                            <select
                                                class="form-select bg-light text-muted border fs-14 py-2 ms-sm-0 ms-1"
                                                aria-label="Default select example">
                                                <option selected>최신순</option>
                                                <option value="1">최신순</option>
                                                <option value="2">마감일순</option>
                                                <option value="3">가장많은모금순</option>
                                                <option value="4">가장적은모금순</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END ROW -->
            
            <div class="row">
                <div class="col-md-3">
                    <div class="sidebar shadow rounded-3">
                       
                        <div class="mt-4">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">기부</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-warning ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">나의 기부</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-success ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked99" style="font-weight: bold;">연말정산</label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="mt-4">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">챌린지</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-danger ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">나의 챌린지</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-info ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked99">우리 회사 챌린지</label>
                                </div>
                            </div>
                        </div>
                       
                         <div class="mt-4 pb-2">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">마이페이지</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-success ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">나의 캘린더</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-muted ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked99">알림이</label>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
                
                
                <!-- 완료된 기부 리스트 -->
                 <div class="col-lg-9">
                    <div class="row">
                        <c:forEach items="${ donationHistoryList }" var="donationHistory">
                        <div class="col-lg-6 mt-4">
                            <!-- Post-->
                            <article class="post position-relative pb-5">
                                <div
                                    class="date-box rounded-3 text-center position-absolute top-0 start-0" style="margin-left: 320px; margin-top: -15px;">
                                    <img src="/resources/images/medalc.gif" style="width: 80px;"
                                             />
                                </div>
                                <div class="post-preview mb-4">
                                    <a href="single-post.html"><img src="/resources/images/blog/blog-1.jpg" alt=""
                                            class="img-fluid rounded-3" /></a>
                                </div>
                                <div class="post">
                                    <div class="d-flex align-items-center gap-3">
                                        <p class="fs-15 text-muted mb-0"><i data-feather="message-square"
                                                class="icon-xs me-1"></i> <a href="javascript:void(0)"
                                                class="text-muted">364</a></p>
                                        <p class="fs-15 text-muted mb-0"><i data-feather="eye" class="icon-xs me-1"></i>
                                            <a href="javascript:void(0)" class="text-muted">56.8 K</a>
                                        </p>
                                    </div>
                                    <h6 class="fs-18 fw-semibold my-3 post-title"><a href="single-post.html">${donationHistory.donationTitle}</a></h6>
                                    
                                    <div class="d-flex justify-content-start">
	                                    <span class="text-muted me-1 fw-bold">
	                                        기부금 
	                                    </span>
	                                    <h6 class="fs-15 fw-semibold post-title">
	                                    <fmt:formatNumber value="${donationHistory.donationAmount}" pattern="#,###"/>
	                                    원</h6>
                                    </div>
                                    
                                    <div class="d-flex justify-content-start">
	                                    <span class="text-muted me-1 fw-bold">
	                                        기부일
	                                    </span>
	                                   <%--  
	                                   <h6 class="fs-15 fw-semibold post-title">
	                                    <fmt:parseDate value="${donationHistory.donationEndDate}" var="dateValue" pattern="yyyy-MM-dd"/>
										<fmt:formatDate value="${donationHistory.donationEndDate}" pattern="yyyy-MM-dd"/>
										</h6> 		
										 --%>						
	                                    <h6 class="fs-15 fw-semibold post-title">
	                                    ${donationHistory.donationEndDate}
	                                    </h6>
                                    </div>
									<!-- 연말정산 누르자마자 동의 페이지 모달로 뜨고 넘어가기 -->
                                    <a href="${ pageContext.request.contextPath }/taxDetail/${donationHistory.donationHistoryNo}" class="fw-bold text-dark">연말정산하러가기<i
                                            data-feather="arrow-right" class="icon-xs icon"></i></a>
                                </div>
                            </article>
                            </div>
                            <!-- Post end-->
						</c:forEach>
                        </div>
                    </div>
                    <!-- end row -->
                    <div class="row">
                        <div class="col-lg-12 mt-sm-0 mt-4">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="javascript:void(0)" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link active" href="javascript:void(0)">1</a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="javascript:void(0)" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
					
					
					
					
					
                   
                </div>
            </div>
            <!-- END ROW -->
        
    </section>

	<!-- FOOTER -->
    <footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>
	

    <!-- Javascript -->
    <script src="/resources/js/bootstrap.bundle.min.js"></script>

    <!-- feather icon -->
    <script src="/resources/js/feather.js"></script>

    <!-- app js -->
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="/resources/js/app.js"></script>
    <script>
		  var bar = new ldBar(".ldBar", {
		  	"value": ${moneybox.mbPercent}
		  });
	</script>
	
</body>
</html>