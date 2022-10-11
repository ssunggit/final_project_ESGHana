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
                        <h2 class="text-dark fw-light lh-base mt-5"><span class="fw-medium title">기부저금통</span>을 만들어보세요!</h2>
                         <p class="fs-16 text-muted mb-0">당신의 기부를 응원합니다.</p>
                    </div>
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
                <div class="col-lg-7 mt-1">
                    <div class="mt-5">
                        <h5 class="fw-semibold fs-18">후원할 기부정보</h5>
                        <div class="row align-items-center">
                            <div class="col-md-3 mt-4">
                                <img class="img-fluid rounded-3" src="/resources/images/products/pro-1.jpg" alt="" />
                            </div>
                            <div class="col-md-9 mt-4">
                                <h5 class="fs-17 fw-semibold">${donation.donationTitle}</h5>
                                <p class="fs-12 fw-semibold text-primary">${donation.donationCompany}</p>
                                <div class="price d-inline-block">
                                    <ins class="pe-1 fs-14 fw-semibold text-primary text-decoration-none">${donation.donationInfo}</ins>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
                </div>

                <div class="col-lg-5 mt-5">
                    <div class="shadow rounded-3 p-4">
                        <h5 class="fw-semibold fs-18 mb-3">기부저금통</h5>
                        <div class="card bg-white position-relative rounded-3 border-3" style="border-color: #008485">
                            <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <p class="text-black fs-4" id="mbcardName">[저금통이름]</p>
                               	<i class="fa-solid fa-piggy-bank img-fluid float-end mt-1 me-2 fa-2x" style="color:#ECA6A6;"  width="70"></i>
                            </div>
                                <p class="text-black-50 text-uppercase fs-13 mt-4 mb-2">기부</p>
                                <h6 class="text-black fw-medium">${donation.donationTitle}</h6>
                                <div class="d-flex align-items-center">
                                    <div class="pay-text">
                                        <p class="text-black-50 text-uppercase fs-13 mt-4 mb-2">기부 목표 금액</p>
                                        <h6 class="text-black fw-medium mb-3" id="mbgoalId">[목표금액]</h6>
                                    </div>
                                    <div class="pay-text ms-auto">
                                        <p class="text-black-50 text-uppercase fs-13 mt-4 mb-2">기부날짜</p>
                                        <h6 class="text-black fw-medium mb-3" id="mbDate">[기부날짜]</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <form action="${ pageContext.request.contextPath }/insertMoneyBox" method="post" >
                        <input type="hidden" name="donationTitle" value="${donation.donationTitle}">
                        <input type="hidden" name="donationInfo" value="${donation.donationInfo}">
	                        <div class="bg-light rounded-3 p-4 mt-4">
	                            <div class="form-check fs-16">
	                                <label class="form-check-label fw-medium text-dark ms-1 col-lg-11" for="flexRadioDefault1">
	                                <p>목표 금액 설정</p>
	                                    <input type="text" name="donationAmount" id="donationAmountId" value="" class="form-control">	
		                                <div class="d-flex justify-content-between">
											<input type="button" id="5000" value="+5천" class="submitBnt btn btn-primary rounded w-20 mt-3">
											<input type="button" id="10000" value="+1만" class="submitBnt btn btn-primary rounded w-20 mt-3">
											<input type="button" id="50000" value="+5만" class="submitBnt btn btn-primary rounded w-20 mt-3">
											<input type="button" id="100000" value="+10만" class="submitBnt btn btn-primary rounded w-20 mt-3">
										</div>
									</label>                 
	                            </div>
	                        </div>
	                        <div class="bg-light rounded-3 p-4 mt-4">
	                            <div class="form-check fs-16">
	                                
	                                <label class="form-check-label fw-medium text-dark ms-1 col-lg-11" for="flexRadioDefault2"> 
	                                    <p>시작일</p><input type="date" name="mbStartDate" id="mbStartDate" onchange="mbDateOnchange1()" class="form-control" min="${sysdate}">
										<p class="mt-2">종료일</p><input type="date" name="mbEndDate" id="mbEndDate" onchange="mbDateOnchange2()" class="form-control mt-1">
	                                </label>
	                            </div>
	                        </div>
	                        <div class="bg-light rounded-3 p-4 mt-4">
	                            <div class="form-check fs-16">
	                                
	                                <label class="form-check-label fw-medium text-dark ms-1 col-lg-11" for="flexRadioDefault3">
	                                <p>계좌번호</p>
	                                	<select name="accountNo" class="form-select d-inline-block border">
											<c:forEach items="${ accountList }" var="account">
												<option>${account.accountNo}</option>
											</c:forEach>
										</select>
	                                </label>
	                            </div>
	                        </div>
	                        <div class="bg-light rounded-3 p-4 mt-4">
	                            <div class="form-check fs-16">
	                                <label class="form-check-label fw-medium text-dark ms-1 col-lg-11" for="flexRadioDefault3">
	                                <p>자동이체일</p>
	                                <select class="form-select border d-inline-block" name="autoDepositDate">
										<option selected="" value="1">매월 1일</option>
                                        <option value="10">매월 10일</option>
                                        <option value="15">매월 15일</option>
                                        <option value="20">매월 20일</option>	                                
	                                </select>
	                                </label>
	                            </div>
	                        </div>
	                        <div class="bg-light rounded-3 p-4 mt-4">
	                            <div class="form-check fs-16">
	                               
	                                <label class="form-check-label fw-medium text-dark ms-1  col-lg-11" for="flexRadioDefault4">
	                                    <p>저금통이름</p> <input type="text" name="mbTitle" id="mbNameId" value="" class="form-control">
	                                </label>
	                            </div>
	                        </div>
	                        <div class="bg-light rounded-3 p-4 mt-4">
	                            <div class="form-check fs-16">
	                               
	                                <label class="form-check-label fw-medium text-dark ms-1  col-lg-11" for="flexRadioDefault4">
	                                    <p>자동이체 금액</p>  
	                                    	<input type="text" name="savingAmount" id="balanceId" value="0" class="form-control">	
	                                     	<div class="d-flex justify-content-between">
												<input type="button" id="5000b" value="+5천" class="submitBnt btn btn-primary rounded w-20 mt-3">
												<input type="button" id="10000b" value="+1만" class="submitBnt btn btn-primary rounded w-20 mt-3">
												<input type="button" id="50000b" value="+5만" class="submitBnt btn btn-primary rounded w-20 mt-3">
												<input type="button" id="100000b" value="+10만" class="submitBnt btn btn-primary rounded w-20 mt-3">
	                                     	</div>
	                                </label>
	                            </div>
	                        </div>
	                        <div class="rounded-3 p-4 mt-4">
	                            <div class="form-check fs-16">
			                        <div class="col-lg-11" style="height: 50px;">
		                                <button type="submit" class="btn btn-primary w-100 h-100">저금통 만들기<i class="icon-xs"
		                                        data-feather="arrow-right"></i></button>
			                        </div>
	                            </div>
	                        </div>
                        </form>
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

    <!-- feather icon -->
    <script src="/resources/js/feather.js"></script>

    <!-- app js -->
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="/resources/js/app.js"></script>

  	<script>
	$('#5000').on('click',function(){
		donationAmountVal = ($('#donationAmountId').val())*1 + 5000
  		$('#donationAmountId').val(donationAmountVal)
  		$('#mbgoalId').text(donationAmountVal.toLocaleString('ko-kr')+' 원')
  	})
  	
  	$('#10000').on('click',function(){
  		donationAmountVal = ($('#donationAmountId').val())*1 + 10000
  		$('#donationAmountId').val(donationAmountVal)
  		$('#mbgoalId').text(donationAmountVal.toLocaleString('ko-kr')+' 원')
  	})
  	
  	$('#50000').on('click',function(){
  		donationAmountVal = ($('#donationAmountId').val())*1 + 50000
  		$('#donationAmountId').val(donationAmountVal)
  		$('#mbgoalId').text(donationAmountVal.toLocaleString('ko-kr')+' 원')
  	})
  	
  	$('#100000').on('click',function(){
  		donationAmountVal = ($('#donationAmountId').val())*1 + 100000
  		$('#donationAmountId').val(donationAmountVal)
  		$('#mbgoalId').text(donationAmountVal.toLocaleString('ko-kr')+' 원')
  	})
  	
  	$('#5000b').on('click',function(){
  		mb100000bVal = ($('#balanceId').val())*1 + 5000
  		$('#balanceId').val(mb100000bVal)
  	})
  	
  	$('#10000b').on('click',function(){
  		mb100000bVal = ($('#balanceId').val())*1 + 10000
  		$('#balanceId').val(mb100000bVal)
  	})
  	
  	$('#50000b').on('click',function(){
  		mb100000bVal = ($('#balanceId').val())*1 + 50000
  		$('#balanceId').val(mb100000bVal)
  	})
  	
  	$('#100000b').on('click',function(){
  		mb100000bVal = ($('#balanceId').val())*1 + 100000
  		$('#balanceId').val(mb100000bVal)
  	})
  	
  	$('#donationAmountId').on('propertychange change keyup paste input',function(){
  		donationAmountIdVal =  ($('#donationAmountId').val())*1
  		$('#mbgoalId').text(donationAmountIdVal.toLocaleString('ko-KR')+' 원')
	})
  	
	</script>
	<script>
	$('#mbNameId').on('propertychange change keyup paste input',function(){
		mbNameIdVal = $('#mbNameId').val()
		$('#mbcardName').text(mbNameIdVal)
	})
	</script>
  	<script>
  		function mbDateOnchange1() {
  			document.getElementById("mbDate").innerText = document.getElementById("mbStartDate").value
		}
  		
  		function mbDateOnchange2() {
  			document.getElementById("mbDate").innerText  = document.getElementById("mbDate").innerText + '~' + document.getElementById("mbEndDate").value
		}
  	
  	</script>
  	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
  	
</body>
</html>