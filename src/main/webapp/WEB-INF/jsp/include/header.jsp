<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body data-bs-target=".navbar" data-bs-offset="110">
    
    <!-- Start Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top sticky mx-auto" id="navbar">
        <div class="container">
            <a href="${pageContext.request.contextPath }/" class="navbar-brand me-4">
            <img src="/resources/img/hana_icon.png" class="logo-light" alt="" height="18" />
                <img src="/resources/img/esghana_logo.png" class="logo-dark" alt="" height="40" /> </a>

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="mdi mdi-menu"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="navbar-collapse-1">
                <ul class="nav navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link sub-menu-item fw-bold" href="${pageContext.request.contextPath }/">Home</a></li>
                    <li class="nav-item dropdown parent-menu-item">
                        <a class="nav-link menu-item dropdown-toggle fw-bold" data-bs-toggle="dropdown"
                            href="javascript:void(0)" role="button" aria-expanded="false">기부</a>
                        <ul class="dropdown-menu border-0">
                            <li class="nav-item">
                                <c:if test="${empty loginVO}"><a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/login">기부리스트</a></c:if>
                                <c:if test="${ not empty loginVO }"><a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/donation_list">기부리스트</a></c:if>
                            </li>
                           
                            <li class="nav-item">
                                <c:if test="${empty loginVO}"><a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/login">나의 저금통</a></c:if>
                                <c:if test="${ not empty loginVO }"><a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/showMoneyBoxList">나의 저금통</a></c:if>
                            </li>
                            
                             <li class="nav-item">
                                <c:if test="${empty loginVO}"><a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/login">연말정산</a></c:if>
                                <c:if test="${ not empty loginVO }"><a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/showDonationHistoryList">연말정산</a></c:if>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown parent-menu-item">
                        <a class="nav-link menu-item dropdown-toggle fw-bold" data-bs-toggle="dropdown"
                            href="javascript:void(0)" role="button" aria-expanded="false">챌린지</a>
                        <ul class="dropdown-menu border-0">
                            <li class="nav-item">
                                <a class="nav-link sub-menu-item" href="work.html">나의 챌린지</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link sub-menu-item" href="work-detail.html">나의 포인트</a>
                            </li>
                        </ul>
                    </li>
                    <c:if test="${loginVO.type eq 'C'}">
	                    <li class="nav-item dropdown parent-menu-item">
	                        <a class="nav-link menu-item dropdown-toggle fw-bold" data-bs-toggle="dropdown"
	                            href="javascript:void(0)" role="button" aria-expanded="false">우리 회사 챌린지</a>
	                        <ul class="dropdown-menu border-0">
	                            <li class="nav-item">
	                                <a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/mycompanychallengeList">우리 회사 챌린지</a>
	                            </li>
	                            <li class="nav-item">
	                                <a class="nav-link sub-menu-item" href="${pageContext.request.contextPath }/mycompanychallengeList">나의 포인트</a>
	                            </li>
	                        </ul>
	                    </li>
                    </c:if>
                    
                    <c:if test="${loginVO.type eq 'M'}">
	                    
	                    <li class="nav-item"><a class="nav-link sub-menu-item fw-bold" href="${pageContext.request.contextPath }/challengeChoice">우리 회사 관리</a></li>
                    </c:if>
                    
                    
                    <c:if test="${empty loginVO}"><li class="nav-item"><a class="nav-link sub-menu-item fw-bold" href="${pageContext.request.contextPath }/login" style="color: #008485">signin</a></li></c:if>
                    <c:if test="${ not empty loginVO }"><li class="nav-item"><a class="nav-link sub-menu-item fw-bold" href="${pageContext.request.contextPath }/logout" style="color: #008485">logout</a></li></c:if>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END NAVBAR -->

</body>
</html>