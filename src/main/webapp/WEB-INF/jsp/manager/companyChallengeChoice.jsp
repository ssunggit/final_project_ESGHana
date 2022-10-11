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
                        <h2 class="text-dark fw-light lh-base mt-5">회사 챌린지</h2>
                        <p class="fs-16 text-muted mb-0">당신의 회사를 응원해주세요.</p>
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
        	<div class="col-md-3">
                    <div class="sidebar shadow rounded-3">
                        <div class="mt-4 pb-2">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">회사관리</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-warning ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88" style="font-weight: bold;">챌린지 선택</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-success ms-2 fs-16"></i>
                                    <a href="${pageContext.request.contextPath}/companyManager">
	                                    <label class="form-check-label text-dark" for="flexCheckChecked99">직원관리</label>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
	                <div class="row">
	                    <div class="page-title-box d-flex align-items-center justify-content-between mt-4">
	                        <h4 class="mb-0">챌린지 목록</h4>
	                    </div>
	                </div>
                   
                    <div class="row mt-4">
	                    <c:forEach items="${challengeJoinList}" var="challengeJoin">
	                        <div class="col-xl-3 col-sm-6">
	                            <!-- Card -->
	                            <div class="card" style="background-color: #b8d5d5; border: none; border-radius: 10px; 
	                            background-image: url('/resources/images/challengecard.png'); background-size: cover;">
	                                <div class="card-body">
	                                    <div class="d-flex justify-content-between">
	                                        <div>
	                                            <h6 class="font-size-xs text-uppercase">${challengeJoin.challengeName}</h6>
	                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
	                                                (아직 챌린지를 하지 않았습니다. or 참여횟수)
	                                            </h4>
	                                            <div class="text-muted">${challengeJoin.joinDate}</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </c:forEach>
                        
                    </div> <!-- end row-->

                   	<!-- 리스트 -->
                    <div class="row mt-4">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h4 class="card-title mb-4">챌린지</h4>
                                        <!-- Button trigger modal -->
										<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
										  챌린지 등록
										</button>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table table-hover table-nowrap mb-0 align-middle table-check">
                                            <thead class="bg-light">
                                                <tr>
                                                    <th class="rounded-start" style="width: 15px;">
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="checkAll">
                                                            <label class="form-check-label" for="checkAll"> </label>
                                                        </div>
                                                    </th>
                                                    
                                                    <th>챌린지 명</th>
                                                    <th>챌린지 리워드</th>
                                                    <th>챌린지 정보</th>
                                                    <th colspan="2" class="rounded-end">Revenue</th>
                                                </tr>
                                                <!-- end tr -->
                                            </thead>
                                            <!-- end thead -->
                                            <tbody>
											<c:forEach items="${challengeList}" var="challenge" varStatus="status">
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="${challenge.challengeCode},${challenge.challengeName}" id="flexCheckexampleone" name="challengeChoicecheckbox">
                                                            <label class="form-check-label" for="flexCheckexampleone">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    
                                                    <td class="fw-medium">
                                                        ${challenge.challengeName}
                                                    </td>

                                                    <td>
                                                        ${challenge.challengeRewardAmount}
                                                        
                                                    </td>
                                                    <td>
                                                         ${challenge.challengeInfo}
                                                    </td>
                                                    
                                                    <td>
                                                        <div class="dropdown">
                                                            <a href="#" class="dropdown-toggle card-drop"
                                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                                <i
                                                                    class="mdi mdi-dots-horizontal font-size-18 text-muted"></i>
                                                            </a>
                                                            <ul class="dropdown-menu dropdown-menu-end">
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-pencil font-size-16 text-success me-1"></i>
                                                                        Edit</a></li>
                                                                <li><a href="#" class="dropdown-item"><i
                                                                            class="mdi mdi-trash-can font-size-16 text-danger me-1"></i>
                                                                        Delete</a></li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                   							</c:forEach>
                                            </tbody><!-- end tbody -->
                                        </table><!-- end table -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   <!-- end row -->
                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->
        </div>
    </section>
        <!-- end main content-->

   
	<!-- 챌린지 생성 Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
		      <form action="${ pageContext.request.contextPath }/challengeCompanyJoin" id="challengChoiceModal" method="post">
		      	<button type="submit">챌린지 등록</button>
		      </form>
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
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="/resources/js/app.js"></script>
    
    
    <script>
    $('input:checkbox[name="challengeChoicecheckbox"]').change(function() {
        let arr = (this.value).split(',');
        if(this.checked){//checked 처리된 항목의 값
        	let str = ''
        	str +=  '<input type="hidden"  value="'+arr[0]+'" class="'+arr[0]+'" name="challengeCode"/>'
        	str +=  '<input type="hidden"  value="'+arr[1]+'" class="'+arr[1]+'" name="challengeName"/>'
        	str +=  '<div class="'+arr[0]+'">'+arr[1]+'<div>'
        	$('#challengChoiceModal').append(str)
        }
        else{
        	$('.'+arr[0]).remove()
        }
   	});
	</script>
	
	
    
    </body>

</html>
