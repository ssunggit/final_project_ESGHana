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
                <div class="col-lg-9">
                    <h2 class="text-dark fw-light lh-base mt-5"><span class="title fw-medium">기업</span> 회원가입</h2>
                    <p class="fs-16 text-muted mb-0">당신의 회사와 함께 가입해주세요</p>
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
            
                <div class="col-lg-4 mt-5">
	                <div style=" width:320px; height:300px; background-color: rgba(241, 243, 244, 1); padding: 20px 20px; border:1px solid white; border-radius: 30p">
	                    <div class="mt-2">
	                        <h5 class="text-muted fw-medium fs-14">이름</h5>
	                        <p class="text-dark fs-16" id="markName">당신의 <b>이름</b>을 확인하세요.</p>
	                    </div>
	                    <div class="mt-4">
	                        <h5 class="text-muted fw-medium fs-14">회사명</h5>
	                        <p class="text-dark fs-16" id="markcompanyname">당신의 <b>회사</b>를 확인하세요.</p>
	                    </div>
	                    <div class="mt-4">
	                        <h5 class="text-muted fw-medium fs-14">사업자등록번호</h5>
	                        <p class="text-dark fs-16" id="markcompanynumber">당신의 <b>사업자 등록번호</b>를 확인하세요.</p>
	                    </div>
	                    
	                </div>
                </div>
                
                <!-- 사용자 회원가입 -->
                <div class="col-lg-8 mt-5">
                	<div class="row">
                        	<div class="col-lg-12 d-flex align-items-center">
                            	<p style="font-size:17px; font-weight: bold;"><i class="fa-solid fa-building me-2"></i>기업정보</p>
                            </div>
                        	
                        </div>
                        
                        <div class="ms-2 mb-4">
                        
	                        <form name="companyCheck1" autocapitalize="off">
		                        <div class="row">
			                        <div class="col-lg-10">
				                        <div class="row g-3">
				                        	<div class="col-lg-2 d-flex align-items-center">
				                            	<p style="font-weight: bold;">기업명</p>
				                            </div>
				                        	
				                            <div class="col-lg-10">
				                                <div class="form-floating mb-3">
				                                    <input type="text" class="form-control" id="companyName" placeholder="Your name" name="companyName" value=""/>
				                                    <label class="text-muted" for="name">기업명을 입력해주세요</label>
				                                </div>
				                            </div>
				                        </div>
				                        
				                        <div class="row g-3">
				                        	<div class="col-lg-2 d-flex align-items-center">
				                            	<p style="font-weight: bold;">사업자등록번호</p>
				                            </div>
				                        	
				                            <div class="col-lg-10">
				                                <div class="form-floating mb-3">
				                                    <input type="text" class="form-control" id="companyNumber" placeholder="Your name" name="companyNumber"/>
				                                    <label class="text-muted" for="name">숫자만 입력해 주세요</label>
				                                </div>
				                                
				                                <div class="col-lg-10" id="companyOK" style="margin-top: -1px; padding-left: 15px;">
				                                	<font style="color: #008485;">인증되었습니다.</font>
				                                </div>
				                                <div class="col-lg-10" id="companyFail" style="margin-top: -1px; padding-left: 15px;">
				                                	<font style="color: red;">일치하지 않습니다.</font>
				                                </div>
				                            </div>
				                        </div>
		                        	</div>
		                        
			                        <div class="col-lg-2">
	                                	<input type="button" onclick="companyCheck()" class="submitBnt btn rounded w-100" style="height: 130px; background-color: rgba(241, 243, 244, 1); font-weight: bold;"
	                                    value="회사인증" />
			                        </div>
                        		</div>
		                    </form>
                        </div>
                
                
                    <form action="${ pageContext.request.contextPath }/signup" method="post">
                    	
                    	<div class="row">
                        	<div class="col-lg-12 d-flex align-items-center">
                            	<p style="font-size:17px; font-weight: bold;"><i class="fa-solid fa-user me-2"></i>회원정보</p>
                            </div>
                        </div>
                    	
                    	<div class="ms-2 mb-4">
                    		<div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	<p style="font-weight: bold;">프로필 설정</p>
	                            </div>
	                        	
	                            <div class="col-lg-10">
	                                <div class="form-floating mb-3 d-flex justify-content-between">
										<img alt="" src="/resources/images/profile/profile1.png" width="17%" onclick="profileChoice1('profile1.png')" id="profileID1">
										<img alt="" src="/resources/images/profile/profile2.png" width="17%" onclick="profileChoice2('profile2.png')" id="profileID2">
										<img alt="" src="/resources/images/profile/profile3.png" width="17%" onclick="profileChoice3('profile3.png')" id="profileID3">
										<img alt="" src="/resources/images/profile/profile4.png" width="17%" onclick="profileChoice4('profile4.png')" id="profileID4">
										<img alt="" src="/resources/images/profile/profile5.png" width="17%" onclick="profileChoice5('profile5.png')" id="profileID5">
										<img alt="" src="/resources/images/profile/profile6.png" width="17%" onclick="profileChoice6('profile6.png')" id="profileID6">
	                                    <input type="hidden" value="" id="profileInput" name="profile">
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	<p style="font-weight: bold;">아이디</p>
	                            </div>
	                            <div class="col-lg-10">
	                                <div class="form-floating mb-3">
	                                    <input type="text" class="form-control" id="id" placeholder="Your name" name="id"/>
	                                    <label class="text-muted" for="name">6-16자/영문 소문자, 숫자 사용가능</label>
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	<p style="font-weight: bold;">비밀번호</p>
	                            </div>
	                        	
	                            <div class="col-lg-10">
	                                <div class="form-floating mb-3">
	                                    <input type="password" class="form-control" id="password1" placeholder="Your name" name="password"/>
	                                    <label class="text-muted" for="name">8-16자/문자, 숫자, 특수 문자 모두 혼용</label>
	                                </div>
	                            </div>
	                        </div>
	                        
	                        <div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	<p style="font-weight: bold;">비밀번호 확인</p>
	                            </div>
	                        	
	                            <div class="col-lg-10">
	                                <div class="form-floating mb-3">
	                                    <input type="password" class="form-control" id="password2" placeholder="Your name" />
	                                    <label class="text-muted" for="name">비밀번호를 다시 입력해주세요</label>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	
	                            </div>
	                            <div class="col-lg-10" id="pwdSuccess" style="margin-top: -1px; padding-left: 15px;">
                                	<font style="color: #008485;">비밀번호가 일치합니다.</font>
                                </div>
                                <div class="col-lg-10" id="pwdFail" style="margin-top: -1px; padding-left: 15px;">
                                	<font  style="color: red;">비밀번호가 일치하지않습니다.</font>
                                </div>
	                        </div>
	                        
	                        <div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	<p style="font-weight: bold;">이름</p>
	                            </div>
	                        	
	                            <div class="col-lg-10">
	                                <div class="form-floating mb-3">
	                                    <input type="text" class="form-control" id="name" placeholder="Your name" name="name" />
	                                    <label class="text-muted" for="name">이름을 입력해 주세요</label>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	<p style="font-weight: bold;">휴대전화</p>
	                            </div>
	                        	
	                            <div class="col-lg-10">
	                                <div class="form-floating mb-3">
	                                    <input type="text" class="form-control" id="phone" placeholder="Your name" name="tel"/>
	                                    <label class="text-muted" for="name">숫자만 입력해 주세요(ex. 01012345678)</label>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row g-3">
	                        	<div class="col-lg-2 d-flex align-items-center">
	                            	<p style="font-weight: bold;">이메일</p>
	                            </div>
	                        	
	                            <div class="col-lg-10">
	                                <div class="form-floating mb-3">
	                                    <input type="email" class="form-control" id="email" placeholder="Your name" name="email"/>
	                                    <label class="text-muted" for="name">이메일을 입력해 주세요(ex. hana01@hana.com)</label>
	                                </div>
	                            </div>
	                        </div>
	                        
                        </div>
                        
                        <input id="companyCodeId" type="hidden" value="" name="companyCode">
                        
                        <div class="row">
                            <div class="col-lg-12">
                                <input type="submit" id="submit" name="send" class="submitBnt btn btn-primary rounded w-100"
                                    value="회원가입" />
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
    <!--   
    <script src="/resources/js/shuffle.min.js"></script>
    <script src="/resources/js/gallery.init.js"></script>
 	-->
    <!-- feather icon -->
    <script src="/resources/js/feather.js"></script>

    <!-- app js -->
    <script src="/resources/js/app.js"></script>
	
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
  	
	<script>
	$('#companyName').on('propertychange change keyup paste input',function(){
		console.log('dd')
		companynameVal = $('#companyName').val()
		$('#markcompanyname').text(companynameVal)
	});
	
	$('#companyNumber').on('propertychange change keyup paste input',function(){
		companynumberVal = $('#companyNumber').val()
		$('#markcompanynumber').text(companynumberVal)
	});
	
	$('#name').on('propertychange change keyup paste input',function(){
		companynumberVal = $('#name').val()
		$('#markName').text(companynumberVal)
	});
	
	$("#pwdSuccess").hide();
    $("#pwdFail").hide();
    
    $("#password2").keyup(function(){
    	var pwd1 = $("#password1").val();
    	var pwd2 = $("#password2").val();
    	if(pwd1 != "" || pwd2 != ""){
    		if(pwd1 == pwd2){
    			$("#pwdSuccess").show()
    			$("#pwdFail").hide()
    		}else{
    			$("#pwdSuccess").hide()
    			$("#pwdFail").show()
    			
    		}
    	}
    
    });
       $("#password1").keyup(function(){
    	var pwd1 = $("#password1").val();
    	var pwd2 = $("#password2").val();
    	if(pwd1 != "" || pwd2 != ""){
    		if(pwd1 == pwd2){
    			$("#pwdSuccess").show()
    			$("#pwdFail").hide()
    		}else{
    			$("#pwdSuccess").hide()
    			$("#pwdFail").show()
    			
    		}
    	}
    
    });
    
    
    function companyCheck() {
    	
			$.ajax({
				type: 'post',
				url : '${ pageContext.request.contextPath }/companyCheck',
				data : $("form[name=companyCheck1]").serialize(),
				success : function(result){
					console.log(result)
					if(!result){
						$("#companyOK").hide()
						$("#companyFail").show()
					}else{
						$("#companyFail").hide()
						$("#companyOK").show()
						console.log(result.companyCode)
						$('#companyCodeId').val(result)
					}
				},
				error : function () {
					alert('실패')					
				}
			})
	}
	
	$("#companyOK").hide()
    $("#companyFail").hide()
    
	
	
    function profileChoice1(profileName) {
		console.log('profileName' + profileName)
		
		$('#profileInput').val(profileName)
		$('#profileID1').css('border', '3px solid gray')
		$('#profileID1').css('border-radius', '50px')
		$('#profileID1').css('background-color', '#FFE162')
		$('#profileID1').siblings('img').css('border', 'none')
		$('#profileID1').siblings('img').css('background-color', 'white')
	}
    
    function profileChoice2(profileName) {
		console.log('profileName' + profileName)
		
		$('#profileInput').val(profileName)
		$('#profileID2').css('border', '3px solid gray')
		$('#profileID2').css('border-radius', '50px')
		$('#profileID2').css('background-color', '#FFE162')
		$('#profileID2').siblings('img').css('border', 'none')
		$('#profileID2').siblings('img').css('background-color', 'white')
	}
    function profileChoice3(profileName) {
		console.log('profileName' + profileName)
		
		$('#profileInput').val(profileName)
		$('#profileID3').css('border', '3px solid gray')
		$('#profileID3').css('border-radius', '50px')
		$('#profileID3').css('background-color', '#FFE162')
		$('#profileID3').siblings('img').css('border', 'none')
		$('#profileID3').siblings('img').css('background-color', 'white')
	}
    function profileChoice4(profileName) {
		console.log('profileName' + profileName)
		
		$('#profileInput').val(profileName)
		$('#profileID4').css('border', '3px solid gray')
		$('#profileID4').css('border-radius', '50px')
		$('#profileID4').css('background-color', '#FFE162')
		$('#profileID4').siblings('img').css('border', 'none')
		$('#profileID4').siblings('img').css('background-color', 'white')
	}
    function profileChoice5(profileName) {
		console.log('profileName' + profileName)
		
		$('#profileInput').val(profileName)
		$('#profileID5').css('border', '3px solid gray')
		$('#profileID5').css('border-radius', '50px')
		$('#profileID5').css('background-color', '#FFE162')
		$('#profileID5').siblings('img').css('border', 'none')
		$('#profileID5').siblings('img').css('background-color', 'white')
	}
    function profileChoice6(profileName) {
		console.log('profileName' + profileName)
		
		$('#profileInput').val(profileName)
		$('#profileID6').css('border', '3px solid gray')
		$('#profileID6').css('border-radius', '50px')
		$('#profileID6').css('background-color', '#FFE162')
		$('#profileID6').siblings('img').css('border', 'none')
		$('#profileID6').siblings('img').css('background-color', 'white')
	}
    
  
    
    
	
	
	</script>
	
</body>
</html>