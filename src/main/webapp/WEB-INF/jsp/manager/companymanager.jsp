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
</head>

<body data-bs-target=".navbar" data-bs-offset="110">

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	
	<form name="smsForm">
		
		<label>01010041004</label>
		
		<input type="checkbox" value="01010041004" name="smsTel">
		
		<label>01041215135</label>
		<input type="checkbox" value="01041215135" name="smsTel">
		
		<textarea id="smsText" name="smsText">
		
		</textarea>
		<button type="button" onclick="sms()">문자전송</button>
	</form>
	
	<c:forEach items="${companyMemberList}" var="companyMember">
		${companyMember.NAME}
		${companyMember.C_COUNT}
		<br>
	</c:forEach>
	
		
	
	
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
  	 function sms() {   
  			var telArray = new Array();
  			var smsText = $("#smsText").val();
  			
		    $('input:checkbox[name=smsTel]:checked').each(function() {
		    	telArray.push(this.value);
		    });
		    
		    var smsData = { "smsText": smsText, "telArray": telArray };
  			console.log(smsData)
  			$.ajax({
				type: 'post',
				url : '${ pageContext.request.contextPath }/sms',
				data : smsData,
				success : function(result){
					alert('성공')					
					console.log(result)
				},
				error : function () {
					alert('실패')					
				}
			})
	}
  	</script>
</body>
</html>