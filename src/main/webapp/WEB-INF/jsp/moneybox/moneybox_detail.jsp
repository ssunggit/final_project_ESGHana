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

    <section class="sm-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row d-flex justify-content-evenly">
                        <div class="col-md-5 mt-4">
                            <div class="position-relative">
                                <div style="width:600px; height:600px;" class="ldBar label-center img-fluid rounded-3" data-type="fill" data-img="/resources/images/pigbank.png" data-value="${mb_percent}"></div>                          
                                <span class="badge bg-soft-primary text-primary rounded-3 fs-18 fw-bold position-absolute top-0 start-0 mt-2 ms-2 py-2">D-${dDay}</span>
                            </div>
                            
                            <div class="row">
                                <div class="col-sm-4 mt-4">
                                    <a href=""><img class="img-fluid rounded" src="images/products/pro-5.jpg"
                                            alt="" /></a>
                                </div>
                                <div class="col-sm-4 mt-4">
                                    <a href=""><img class="img-fluid rounded" src="images/products/pro-3.jpg"
                                            alt="" /></a>
                                </div>
                                <div class="col-sm-4 mt-4">
                                    <a href=""><img class="img-fluid rounded" src="images/products/pro-4.jpg"
                                            alt="" /></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 mt-4">
                            <div class="pro-detail-content">
                                <div class="price my-3">
                                    <h6 class="fw-semibold lh-base fs-20 mt-3">${moneyBox.mbTitle}</h6>
                                	<p class="text-muted fs-16">
                                		<i class="fa-solid fa-reply ms-1" style="transform: scaleX(-1) scaleY(-1);"></i>&nbsp;&nbsp;${moneyBox.donationTitle}
                                	</p>
                                </div>

                                <div class="details mb-4">
                                    <ul class="list-unstyled ms-3">
                                        <li class="text-muted py-1"><i data-feather="arrow-right"
                                                class="icon-xxs me-2"></i>계좌번호 : ${moneyBox.accountNo}</li>
                                        <li class="text-muted py-1"><i data-feather="arrow-right"
                                                class="icon-xxs me-2"></i>자동 이체일 : 매월 ${moneyBox.autoDepositDate} 일</li>
                                        <li class="text-muted py-1"><i data-feather="arrow-right"
                                                class="icon-xxs me-2"></i>기부기간 : ${moneyBox.mbStartDate} ~ ${moneyBox.mbEndDate} </li>
                                        
                                    </ul>
                                    <ul class="list-unstyled list-inline"></ul>
                                </div>
                                
                                
                                <div class="row text-center">
					                <div class="col-lg-4 mt-4">
					                    <div class="team-box">
					                        <img src="/resources/images/donate2.png" class="img-fluid rounded testi-user rounded-circle img-thumbnail" alt="">
					                        <h5 class="text-dark mt-3 fs-18"><fmt:formatNumber value="${moneyBox.donationAmount-moneyBox.balance}" pattern="#,###"/> 원</h5>
					                        <p class="text-muted">기부까지 남은 금액</p>
					                    </div>
					                </div>
					                <div class="col-lg-4 mt-4">
					                    <div class="team-box">
					                        <img src="/resources/images/won2.png" class="img-fluid rounded testi-user rounded-circle img-thumbnail" alt="">
					                        <h5 class="text-dark mt-3 fs-18"><fmt:formatNumber value="${moneyBox.balance}" pattern="#,###"/> 원</h5>
					                        <p class="text-muted">현재까지 저금 금액</p>
					                    </div>
					                </div>
					                <div class="col-lg-4 mt-4">
					                    <div class="team-box">
					                        <img src="/resources/images/calendar1.png" class="img-fluid rounded testi-user rounded-circle img-thumbnail" alt="">
					                        <h5 class="text-dark mt-3 fs-18">D-${dDay}</h5>
					                        <p class="text-muted">기부까지 남은 일자</p>
					                    </div>
					                </div>
					                
           						</div>
           						
                                <div class="hover-content d-flex justify-content-between">
                                   
                                    <a href="#donate" class="btn btn-primary me-3 my-2 w-50" rel="modal:open"> <i data-feather="heart"
                                            class="icon-xs me-2"></i>지금 기부하기</a>
									
                                    <a href="#deposit" class="btn btn-secondary my-2 w-50" rel="modal:open"> <i data-feather="dollar-sign"
                                            class="icon-xs me-2"></i>지금 입금하기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end pro-detail -->

    <!-- detail tab -->
    <section class="section bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="pro-detail-area">
                        <div class="nav nav-tabs border-bottom detail-title" id="nav-tab" role="tablist">
                            <a class="nav-link border-0 active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home"
                                role="tab" aria-controls="nav-home" aria-selected="true">저금내역</a>
                            <a class="nav-link border-0" id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile"
                                role="tab" aria-controls="nav-profile" aria-selected="false">기부정보</a>
                        </div>
                    </nav>
                    <div class="tab-content py-4" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab">
                            <p class="text-muted fs-16">
                            
                               <table class="table">
								  <thead>
								    <tr>
								      <th scope="col">번호</th>
								      <th scope="col">계좌</th>
								      <th scope="col">저금금액</th>
								      <th scope="col">날짜</th>
								    </tr>
								  </thead>
								  <tbody>
                           			<c:forEach items="${saving}" var="saving" varStatus="status">
									    <tr>
									      <th scope="row">${status.count}</th>
									      <td>${saving.accountNo}</td>
									      <td>${saving.savingAmount}</td>
									      <td>${saving.savingDate}</td>
									    </tr>
									</c:forEach>
								  </tbody>
								</table>
                            </p>

                            <div class="row text-muted">
                                <div class="col-md-6">
                                    <ul class="list-unstyled">
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Claritas est etiam processus dynamicus.</li>
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Mirum est notare quam littera.</li>
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Nam liber tempor cum soluta nobis eleifend.</li>
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Duis autem vel eum iriure dolor.</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <ul class="list-unstyled">
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Claritas est etiam processus dynamicus.</li>
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Mirum est notare quam littera.</li>
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Nam liber tempor cum soluta nobis eleifend.</li>
                                        <li class="py-1"><i class="mdi mdi-circle-medium text-primary"></i> Duis autem vel eum iriure dolor.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                            
                            <ul class="list-unstyled my-4">
                                <li class="list-inline d-flex py-3">
                                    <div>
                                        <a href="javascript:void(0)">
                                            <img class="rounded-circle img-thumbnail" src="images/clients/client-1.jpg"
                                                alt="" />
                                        </a>
                                    </div>
                                    <div class="ps-4">
                                        <h6 class="d-inline-block fs-16 mb-0">${moneyBox.donationTitle}</h6>
                                        <div class="rating d-inline-block ps-sm-4">
                                            
                                            
                                        </div>
                                        
                                        <p class="text-muted fs-16">
                                            ${moneyBox.donationInfo}
                                        </p>
                                    </div>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- end row -->
        </div>
        
	    <!-- 모달 -->
		<!-- 입금 모달 -->
		<div id="deposit" class="modal" style="max-width: 800px; max-height: 500px; padding: 60px 40px;">
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
	                <a href="checkout.html" class="btn btn-primary mt-3 float-end">Proceed To
	                    Checkout <i class="icon-xs icon" data-feather="arrow-right"></i></a>
	            </div>
	        </div>
		</div>
		
	   <!-- 기부 모달 -->
		<div id="donate" class="modal" style="max-width: 500px; max-height: 450px; padding: 70px 100px;">
			<div class="mt-4 align-items-center">

	            <form action="/donateNow" method="post">
		            <input type="hidden" name="donationTitle" value="${moneyBox.donationTitle}">
		            <input type="hidden" name="donationStartDate" value="${moneyBox.mbStartDate}">
		            <input type="hidden" name="donationEndDate" value="${sysdate}">
		            <input type="hidden" name="name" value="${loginName}">
		            <input type="hidden" name="donationAmount" value="${moneyBox.balance}">
		            <input type="hidden" name="mbNo" value="${moneyBox.mbNo}">
		            

	                <ul class="list-unstyled list-inline border-bottom py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-15 mb-0 fw-semibold">기부명</h5>
	                    </li>
	                    <li class="list-inline-item float-end text-dark">${moneyBox.donationTitle}</li>
	                </ul>
	                
	                <ul class="list-unstyled list-inline border-bottom py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-15 mb-0 fw-semibold">기부기간</h5>
	                    </li>
	                    <li class="list-inline-item float-end text-dark text-primary">${moneyBox.mbStartDate} ~ ${sysdate}</li>
	                </ul>
	                
	                <ul class="list-unstyled list-inline border-bottom py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-15 mb-0 fw-semibold">기부자</h5>
	                    </li>
	                    <li class="list-inline-item float-end text-dark">${loginName}</li>
	                </ul>
	                <ul class="list-unstyled list-inline py-3 mb-0">
	                    <li class="list-inline-item">
	                        <h5 class="fs-16 mb-0 fw-semibold">기부금액</h5>
	                    </li>
	                    <li class="list-inline-item fs-16 fw-semibold text-dark float-end">${moneyBox.balance}</li>
	                </ul>

	                

	                <button type="submit" class="btn btn-primary mt-3 float-end" style="margin-right:80px">지금 기부하기
	                     <i class="icon-xs icon" data-feather="arrow-right"></i></button>
	            </form>

	        </div>

	        
		</div>

		
    </section>
    <!-- end detail tab -->

	
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
 
</body>
</html>