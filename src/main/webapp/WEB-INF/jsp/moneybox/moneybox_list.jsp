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
	
	<link rel="stylesheet" type="text/css" href="/resources/css/loading-bar.css"/>
	<script type="text/javascript" src="/resources/js/loading-bar.js"></script>
	
	<style type="text/css">
		  .ldBar-label {
		    color: white;
		    font-family: 'varela round';
		    font-size: 2.0em;
		    font-weight: 700;
		    margin-left: 10px;
		  }
	</style>

</head>
<body data-bs-target=".navbar" data-bs-offset="110">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>>


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
                                    <label class="form-check-label text-dark" for="flexCheckChecked88" style="font-weight: bold;">나의 기부</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-success ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked99">연말정산</label>
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
                
                <!-- 리스트 -->
                <div class="col-md-9">
                
                <c:forEach items="${moneyBoxList}" var="moneybox">
                    <div class="row align-items-center">
                        <div class="col-md-5">
                            <div class="product-item mt-4">
                                <div class="product-list-img rounded-3 position-relative">
                                    <div style="width:300px; height:300px; margin-left: 10px; margin-rignt: 10px;" class="ldBar label-center" data-type="fill" data-img="/resources/images/pigbank.png" data-value="${moneybox.mbPercent}"></div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- end col -->
                        <div class="col-md-7">
                            <div class="pro-list-content">
                                <h6 class="fw-semibold lh-base fs-18 mt-3">${moneybox.mbTitle}</h6>
                                <p class="text-muted">
                                <i class="fa-solid fa-reply" style="transform: scaleX(-1) scaleY(-1);"></i>&nbsp;&nbsp;${moneybox.donationTitle}
                                </p>
                                
                                <div class="price">
                                   <div class="pe-1 fs-16 fw-semibold text-decoration-none text-dark d-flex justify-content-between" style="width: 240px">
                                   <span class="text-muted">목표 기부 금액</span>
                                   <fmt:formatNumber value="${moneybox.donationAmount}" pattern="#,###"/> 원
                                   </div>
                                   <div class="pe-1 fs-16 fw-semibold text-decoration-none text-dark d-flex justify-content-between" style="width: 240px">
                                   <span class="text-muted" style="width: 100px">현재 모금액</span>
                                   <fmt:formatNumber value="${moneybox.balance}" pattern="#,###"/> 원
                                   </div>
                                </div>
                                
                                <div class="hover-content w-50 py-2 mt-3">
							
								<a type="button" class="btn w-100 bg-hana-green text-light" 
                                       href="${ pageContext.request.contextPath }/moneyboxDetail/${moneybox.mbNo}">
                                           저금하러가기<i class="icon-xxs" data-feather="arrow-right"></i></a>
                                </div>
                                
                            </div>
                        </div>
                        <!-- end col -->                        
                    </div>
                    </c:forEach>
                    <!-- end row -->
                    
                    <div class="row">
                        <div class="col-lg-12 mt-5">
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