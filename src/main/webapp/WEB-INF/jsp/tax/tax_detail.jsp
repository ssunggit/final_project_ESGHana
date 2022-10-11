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
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
</head>
<body data-bs-target=".navbar" data-bs-offset="110">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

    <section>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <img src="/resources/images/document.gif" alt="about-img" class="img-fluid rounded-3 pe-lg-4" />
                </div>
                <div class="col-lg-6">
                    <div class="d-flex align-items-center py-3">
                        <h5 class="me-4">${donationHistory.donationTitle}</h5>
                        <h6 class="me-4 text-muted">${donationHistory.donationCompany}</h6>
                        
                    </div>

                    <div class="d-flex justify-content-between border-top py-4">
                        <div class="py-3 text-center" style="border-radius: 40px; padding-top: 10px; width: 30%; background-color: #dbeaea ">
                            <p class="text-muted fs-13 mb-0" style="margin-top: 5px;">기부금액</p>
                            <h5 style="margin-top: 5px; color: #155757">
                            	<fmt:formatNumber value="${donationHistory.donationAmount}" pattern="#,###"/>원
                            </h5>
                        </div>
                        
                        <div class="py-3 text-center" style="border-radius: 40px; padding-top: 10px; width: 30%; background-color: #dbeaea ">
                            <p class="text-muted fs-13 mb-0"  style="margin-top: 5px;">기부자</p>
                            <h5 style="margin-top: 5px; color: #155757">${donationHistory.name}</h5>
                        </div>
                        
                        <div class="py-3 text-center" style="border-radius: 40px; padding-top: 10px; width: 30%; background-color: #dbeaea ">
                            <p class="text-muted fs-13 mb-0" style="margin-top: 5px; ">기부날짜</p>
                            <p class="fs-15 fw-bold" style="margin-top: 5px;  color: #155757">${donationHistory.donationEndDate}</p>
                        </div>
                    </div>
                    <p class="text-muted fs-15">
                        ${donationHistory.name}님의 따뜻한 관심과 소중한 후원으로 
                        국내외 도움이 필요한 이웃들이 희망과 용기를 얻었습니다.
                        <br>
                        이에 감사한 마음을 담아 이 증서를 드립니다. 
                        <br>
                        기부해주신 금액은 지역사회 어르신들의 건강증진과 홀로 사는 어르신 삶의 질 향상을 위한 복지사업에 사용되어지며 희망과 행복의 100세 시대를 만드는데 혼신과 노력을 다하겠습니다.
                        
                    </p>
					<div class="d-flex justify-content-start">
	                    <a href="/resources/pdf/tax.pdf" class="btn mt-3 me-3 w-50" style="background-color: #489898; color: white;" download>
	                    	기부증서받기<i class="icon-xs" data-feather="arrow-right"></i></a>
	                    <a class="btn mt-3 w-50" onclick="onTaxMail()" style="background-color: #e8748a; color: white;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
	                    	메일로 받기<i class="icon-xs" data-feather="arrow-right"></i></a>
					</div>
                </div>
            </div>
        </div>
        <!-- end container -->
    </section>
    
    <!-- 세금확인모달 -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">기부증서 발급</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        ${loginVO.name}님의 메일
	        <br>
	        ${loginVO.email}로 기부증서를 발급하였습니다.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
	      </div>
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
  	
  	<script>
  		function onTaxMail() {
  			console.log('!!!!!')
			fetch('${pageContext.request.contextPath}/taxMail/'+${donationHistoryNo}).then(res=>res.json()).then(response=>{
				if(response != null){
					console.log(response)
				}
			})
		}
  	</script>
</body>
</html>