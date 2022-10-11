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
		    font-size: 2.5em;
		    font-weight: 700;
		  }
		   a.close-modal{
		  	margin: 25px;
		  }
	</style>
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
</head>

<body data-bs-target=".navbar" data-bs-offset="110">
   
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

   
    <!-- End Title -->

    <section class="sm-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Post-->
                    <article class="post position-relative">
                        <div
                            class="date-box rounded-3 shadow text-center bg-hana-green position-absolute top-0 start-0 p-2 ms-3 mt-3">
                            <h6 class="fs-14 fw-medium mb-0 text-light">
	                            <c:if test="${dDay gt '0'}">D-${dDay}</c:if>
	                            <c:if test="${dDay le '0'}">진행중</c:if>
                            </h6>
                        </div>
                        <div class="post-preview mb-3">
                            <img src="/resources/images/blog/blog-2.jpg" alt=""
                                    class="img-fluid rounded" />
                        </div>
                        
                        <div class="post">
                            <div class="d-flex gap-3 justify-content-end">
                                <p class="fs-18 text-muted mb-0 m-3"><i data-feather="heart" class="icon-xs me-1 text-hana-red"></i>
                                    <a href="javascript:void(0)" class="text-muted">897</a></p>
                                
                            </div>
                          
                            <h6 class="fs-22 fw-semibold my-3 post-title">${donation.donationTitle}</h6>
                            <p class="text-muted">
                                ${donation.donationInfo}
                            </p>
                        </div>
                      
                        <!-- 프로그레스 바 -->
                        <h6 class="fs-22 fw-semibold border-bottom pb-3 mt-5">기부달성율</h6>
                        <div class="ps-0 pt-3 mt-3">
                        
                                <div class="d-flex justify-content-start align-items-center">
									<div style="margin-left: 20px;">
										<ul class="list-unstyled my-4">
		                                <li class="py-1 text-dark"><span class="me-2 text-muted fs-6">현재 모금액</span><span class="me-2 text-muted fs-6 fw-bold ms-2"><fmt:formatNumber value="${donation.donationCurrentAmount}" pattern="#,###"/>&nbsp;원</span></li>
		                                <li class="py-1 text-dark"><span class="me-2 text-muted fs-6">목표 모금액</span><span class="me-2 text-muted fs-6 fw-bold ms-2"><fmt:formatNumber value="${donation.donationGoal}" pattern="#,###"/>&nbsp;원</span></li>
		                                <li class="py-1 text-dark"><span class="me-2 text-muted fs-6 me-4">모금 기간</span><span class="me-2 text-muted fs-6 fw-bold ms-2">${donation.donationStartDate}&nbsp;~&nbsp;${donation.donationEndDate}</span></li>
		                            	</ul>
									</div>
			                        <div style="width:200px;height:200px; margin-left: 100px;" class="ldBar label-center" data-fill="data:ldbar/res,bubble(#f35079,#fff,60,1)" data-type="fill" data-path="M90.5,23.2c0-12.5-10.2-22.7-22.7-22.7c-13.6,0-20.9,8.6-22.3,13.8C44.3,8.9,35.1,0.5,23.2,0.5C10.7,0.5,0.5,10.7,0.5,23.2c0,22.2,36.5,45.3,45,55.9C53.5,67.3,90.5,46.3,90.5,23.2z"></div>
                        		</div>
                           
                        </div>
                        
                        
                        
                        <h6 class="fs-22 fw-semibold border-bottom pb-3 mt-5">Q&A</h6>
                        <form action="#" method="post" class="mt-4">
                            <div class="row g-3">
                                <div class="col-lg-6">
                                    <div class="mb-3">
                                        <input id="author" class="form-control" placeholder="Name*" name="author"
                                            type="text" required="">
                                    </div>
                                </div>
    
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <input id="email" class="form-control" placeholder="Email*" name="email" type="text"
                                            required="">
                                    </div>
                                </div>
                            </div>
                            <div class="row g-3">
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        <input id="subject" class="form-control" placeholder="Website" name="subject"
                                            type="text">
                                    </div>
                                </div>
                            </div>
    
                            <div class="row g-3">
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        <textarea id="comment" class="form-control" rows="5" placeholder="Your Message*"
                                            name="comment" required=""></textarea>
                                    </div>
                                </div>
                            </div>
    
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group d-flex justify-content-end">
                                        <button name="submit" type="submit" id="submit" class="btn btn w-25 bg-hana-silver text-light">
                                        질문하기<i class="icon-xxs" data-feather="arrow-right"></i></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        
                        </article>
                </div>
                
                <div class="col-lg-4 col-md-6">
                    <div class="sidebar ms-3">
                       
                        <div class="col-lg-12 my-4">
                                <div class="position-relative">
                                    <i class="mdi mdi-format-quote-open-outline fs-3 text-primary"></i>
                                    <h5 class="fw-medium lh-1">${donation.donationTitle}</h5>
                                    <p class="text-muted mb-0">${donation.donationCompany}</p>
                                </div>
                       </div>
                        
                        <div>
                            <div class="sd-title mt-4">
                                <h6 class="border-bottom pb-3 mb-0">기부 목표 달성</h6>
                            </div>
                            <div class="my-3">
                                <div class="progress">
									<div class="progress-bar bg-hana-green" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:${doPercent}%">
										${doPercent} %
									</div>
								</div>
								<div class="flex-grow-1 ms-sm-3">
									<h6 class="mt-sm-2 mt-3 fs-16 float-end">
									<fmt:formatNumber value="${donation.donationGoal}" pattern="#,###"/>&nbsp;원
									</h6>
								</div>
								
                            </div>
                        </div>
    
                        <div class="mt-5">
                            <div class="sd-title mt-4">
                                <h6 class="border-bottom pb-3 mb-0">모집기한</h6>
                            </div>
                            <p class="my-3 text-muted">
                              	${donation.donationStartDate} ~ ${donation.donationEndDate}
                            </p>
                        </div>
    
                        <div class="mt-5">
                            <div class="sd-title mt-4">
                                <h6 class="border-bottom pb-3 mb-0">세금안내</h6>
                            </div>
                            <ul class="list-unstyled my-4">
                                <li class="py-1 text-dark"><a class="me-2 text-muted" href="#taxModal" rel="modal:open">
                                        <span style="text-decoration: underline; text-underline-position:under;">세제 혜택 안내</span></a> 
                                </li>
                                <li class="py-1 text-dark"><a class="me-2 text-muted" href="javascript:void(0)">
                                        지정기부금<br>
										2022년 연말정산 대상</a> 
                                </li>
                                <li class="py-1 text-dark"><a class="me-2 text-muted" href="javascript:void(0)">
                                        모금 전달 안내(모달)</a></li>
                                <li class="py-1 text-dark"><a class="me-2 text-muted" href="javascript:void(0)">
                                        모금 종료시 전액 일시 전달</a></li>
                            </ul>
                        </div>
    
                        <div class="mt-5">
                            <div class="sd-title mt-4">
                                <h6 class="border-bottom pb-3 mb-0">Tags</h6>
                            </div>
                            <div class="tagcloud py-4">
                                <a class="rounded d-inline-block fs-13 fw-medium mx-1 my-1 px-2 py-1"
                                    href="javascript:void(0)">기부</a>
                                <a class="rounded d-inline-block fs-13 fw-medium mx-1 my-1 px-2 py-1"
                                    href="javascript:void(0)">동물</a>
                                <a class="rounded d-inline-block fs-13 fw-medium mx-1 my-1 px-2 py-1"
                                    href="javascript:void(0)">고양이</a>
                                <a class="rounded d-inline-block fs-13 fw-medium mx-1 my-1 px-2 py-1"
                                    href="javascript:void(0)">반려동물</a>
                                <a class="rounded d-inline-block fs-13 fw-medium mx-1 my-1 px-2 py-1"
                                    href="javascript:void(0)">고양이후원</a>
                                <a class="rounded d-inline-block fs-13 fw-medium mx-1 my-1 px-2 py-1"
                                    href="javascript:void(0)">고양이구조</a>
                            </div>
                        </div>
                        <div class="mt-1">
                            
                            <div class="tagcloud py-4">
                                <div class="row" >
                                <div class="col-lg-12" >
                                    <div class="form-group">
                                    
                                        <a type="button" class="btn w-100 bg-hana-green text-light" 
                                        href="${ pageContext.request.contextPath }/moneybox/moneybox_openform/${donation.donationNo}">
                                           기부저금통 만들기<i class="icon-xxs" data-feather="arrow-right"></i></a>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Sidebar end-->
            </div>
        </div>
        <!-- end row -->
    </section>
   
   	 <!-- 모달 -->
		
	<div id="taxModal" class="modal" style="max-width: 800px; max-height: 500px; padding: 60px 40px;">
		  <div class="mt-4 align-items-center">
	            <div class="align-items-center">
	                <ul class="list-unstyled list-inline border-bottom py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-15 mb-0 fw-semibold">Price :</h5>
	                    </li>
	                    <li class="list-inline-item float-end text-dark">$259.00</li>
	                </ul>
	                <ul class="list-unstyled list-inline border-bottom py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-15 mb-0 fw-semibold">Delivery Charge :</h5>
	                    </li>
	                    <li class="list-inline-item float-end text-dark text-primary">Free</li>
	                </ul>
	                <ul class="list-unstyled list-inline border-bottom py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-15 mb-0 fw-semibold">Discount :</h5>
	                    </li>
	                    <li class="list-inline-item float-end text-dark">$100.00</li>
	                </ul>
	                <ul class="list-unstyled list-inline py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-16 mb-0 fw-semibold">Total :</h5>
	                    </li>
	                    <li class="list-inline-item fs-16 fw-semibold text-dark float-end">$159.00</li>
	                </ul>
	                세제 혜택 안내
2022년 연말정산 대상입니다.
지정기부금으로 세액 공제 대상입니다. (개인 및 법인 모두 해당)
개인
기부금의 15%를 세액에서 공제합니다. (1천만원 초과 분은 30% 공제) 소득금액의 30% 까지 세액 공제 대상으로 인정합니다.
법인
기부금 전액을 법인세 과세대상에서 제외합니다.(손금산입) 소득금액의 10% 까지 법인세 감면 대상으로 인정합니다.
(상기 내용은 이해를 돕기 위해 개념적으로 단순화된 설명으로 실제 산출과 다를 수 있으니 정확한 내용은 관련 국세청 안내 자료 또는 소득세법/법인세법 등 관련 법령을 꼭 참조하시기 바랍니다)
	                
	                <a href="checkout.html" class="btn btn-primary mt-3 float-end">확인<i class="icon-xs icon" data-feather="arrow-right"></i></a>
	            </div>
	        </div>
		</div>
   
    <!-- FOOTER -->
    <footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>

    <!-- Javascript -->
    <script src="/resources/js/bootstrap.bundle.min.js"></script>

    <!-- feather icon -->
    <script src="/resources/js/feather.js"></script>

    <!-- app js -->
    <script src="/resources/js/app.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    
    <script>
	var bar = new ProgressBar.Path('#heart-path', {
	  easing: 'easeInOut',
	  duration: 2000
	});
	
	bar.set(0);
	
	bar.animate(${doPercent}/100);  // Number from 0.0 to 1.0
 </script>
 
 <script>
  var bar = new ldBar(".ldBar", {
   "value": ${doPercent}
  });
</script>
</body>

</html>