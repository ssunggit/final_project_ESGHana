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
	
	<style>
		.tooltip-inner {
		    background-color: #EEF2E6;
		    color : black;
		    opacity: 1 !important;
		}
		.tooltip.bs-tooltip-right .tooltip-arrow::before {
		    border-right-color: #EEF2E6 !important;
		}
		.tooltip.bs-tooltip-left .tooltip-arrow::before {
		    border-left-color: #EEF2E6 !important;
		}
		.tooltip.bs-tooltip-bottom .tooltip-arrow::before {
		    border-bottom-color: #EEF2E6 !important;
		}
		.tooltip.bs-tooltip-top .tooltip-arrow::before {
		    border-top-color: #EEF2E6 !important;
		}

		                
        #aside {
    		position: fixed;
    
		}
	</style>
	
	
	
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
                    <h2 class="text-dark fw-light lh-base mt-5">${companyVO.companyName} 챌린지 <span class="fw-medium title">
                            ${challengeVO.challengeName}</span></h2>
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
                <div class="col-lg-8">
                    <!-- Post-->
                    <article class="post position-relative">
                        <div class="post-preview mb-4">
                            <a href="blog-single.html"><img src="/resources/images/coffeecup.gif" alt=""
                                    class="img-fluid rounded" /></a>
                        </div>
                        <!-- detail tab -->
				            <div class="row">
				                <div class="col-lg-12">
				                
				                    <nav class="pro-detail-area">
				                        <div class="nav nav-tabs border-bottom detail-title" id="nav-tab" role="tablist">
				                            <a class="nav-link border-0 active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home"
				                                role="tab" aria-controls="nav-home" aria-selected="true">챌린지 정보</a>
				                            <a class="nav-link border-0" id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile"
				                                role="tab" aria-controls="nav-profile" aria-selected="false">챌린지 랭킹</a>
				                        </div>
				                    </nav>
				                    
				                    <div class="tab-content py-4" id="nav-tabContent">
				                    
				                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				                            aria-labelledby="nav-home-tab">
				                         <div class="post">
					                            <div class="d-flex align-items-center gap-3">
					                                <p class="fs-15 text-muted mb-0"><i data-feather="message-square" class="icon-xs me-1"></i>
					                                    <a href="javascript:void(0)" class="text-muted">897</a></p>
					                                <p class="fs-15 text-muted mb-0"><i data-feather="eye" class="icon-xs me-1"></i> <a
					                                        href="javascript:void(0)" class="text-muted">99.2 K</a></p>
					                            </div>
					                            
					                            <h6 class="fs-22 fw-semibold my-3 post-title"><a href="single-post.html">
					                            	${challengeVO.challengeName}
					                            </a></h6>
					                                    
					                            <p class="text-muted">
					                            	${challengeVO.challengeInfo}
					                            </p>
					                            <p class="text-muted">
					                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
					                                laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
					                                architecto beatae vitae dicta sunt
					                                explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
					                                sed quia consequuntur magni dolores
					                            </p>
					                            <p class="text-muted">
					                                vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
					                                voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
					                                occaecati cupiditate non provident,
					                                similique sunt in culpa qui.
					                            </p>
					    
					                            <div class="col-lg-12 my-4">
					                                <div class="section-title border-start border-primary position-relative">
					                                    <i class="mdi mdi-format-quote-open-outline fs-3 text-primary"></i>
					                                    <h5 class="fw-medium lh-1">We Are Awesome.</h5>
					                                    <p class="text-muted mb-0">A business consulting agency is involved in the planning,
					                                        implementation, and education of businesses. We work directly.</p>
					                                </div>
					                            </div>
					                            
					                            <p class="text-muted">
					                                vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
					                                voluptatum deleniti atque corrupt quas molestias excepturi sint
					                                occaecati cupiditate non provident.
					                            </p>
					                            
					                        </div>   
 
				                        </div>
				
				                        <div class="tab-pane fade w-80" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
				                         
				                          <div style="margin-top: 200px;">
					                       		<img src="resources/images/profile/${rank2member.PROFILE}" style="width:25%; z-index: 4; margin-top: -20px; margin-left:70px; position: absolute;" data-toggle="tooltip" data-bs-html="true"
					                       		title="<b>2등<b>&nbsp;${rank2member.NAME}<h5>${rank2memberCount}회 <h5>"/>
					                       		
					                       		<img src="resources/images/medal1.png" style="width:10%; z-index: 5; margin-top: -140px; margin-left:370px; position: absolute;"/>
					                       		<img src="resources/images/profile/${rank1member.PROFILE}" style="width:25%; z-index: 4; margin-top: -140px; margin-left:270px; position: absolute;" data-toggle="tooltip" data-bs-html="true"
					                       		title="<b>1등<b>&nbsp;${rank1member.NAME}<h5>${rank1memberCount}회 <h5>"/>
					                       		
					                       		<img src="resources/images/profile/${rank3member.PROFILE}" style="width:25%; z-index: 4; margin-top: -20px; margin-left:480px; position: absolute;" data-toggle="tooltip" data-bs-html="true"
					                       		title="<b>3등<b>&nbsp;${rank3member.NAME}<h5>${rank3memberCount}회 <h5>"/>
					                            
					                            <img src="resources/images/rankTable.png" width="100%" style="z-index: 1;"/>
				                          </div>
				                         
				                        </div>
				                        
				                    </div>
				                    
				                </div>
				            </div>
				        
                 
    					
                        <!-- comment start -->
                        <h6 class="fs-22 fw-semibold border-bottom pb-3 mt-5">Comments</h6>
                        <div class="ps-0 pt-3 mt-3">
                            <div class="d-sm-flex align-items-top">
                                <div class="flex-shrink-0">
                                    <img class="rounded-circle img-thumbnail" src="images/clients/client-1.jpg" alt="img"
                                        style="width: 65px; height:65px;">
                                </div>
                                <div class="flex-grow-1 ms-sm-3">
                                    <h6 class="mt-sm-0 mt-3 fs-16">Michelle Durant</h6>
                                    <p class="text-muted">Jun 23, 2021, 11:45 am</p>
    
                                    <p class="text-muted fs-15">vero eos et accusamus et iusto odio dignissimos ducimus
                                        qui blanditiis
                                        praesentium
                                        voluptatum deleniti atque corrupti quos dolores</p>
                                </div>
                                <a class="text-muted me-3" href="javascript:void(0)"><i class="icon-xs"
                                        data-feather="message-square"></i></a>
                            </div>
                        </div>
                        <div class="ps-0 pt-3 mt-4">
                            <div class="d-sm-flex align-items-top">
                                <div class="flex-shrink-0">
                                    <img class="rounded-circle img-thumbnail" src="images/clients/client-2.jpg" alt="img"
                                        style="width: 65px; height:65px;">
                                </div>
                                <div class="flex-grow-1 ms-sm-3">
                                    <h6 class="mt-sm-0 mt-3 fs-16">Steven Billups</h6>
                                    <p class="text-muted">Jun 24, 2021, 10:05 am</p>
    
                                    <p class="text-muted fs-15">It is a long established fact that a reader will be
                                        distracted by the readable content of a page when looking at its layout</p>
    
                                    <div class="d-sm-flex align-items-top mt-4">
                                        <div class="flex-shrink-0">
                                            <img class="rounded-circle img-thumbnail" src="images/clients/client-3.jpg"
                                                alt="img" style="width: 65px; height:65px;">
                                        </div>
                                        <div class="flex-grow-1 ms-sm-3">
                                            <h6 class="mt-sm-0 mt-3 fs-16">Harriet Townsend</h6>
                                            <p class="text-muted">Jun 26, 2021, 01:25 pm</p>
    
                                            <p class="text-muted fs-15">variations of passages of Lorem Ipsum available,
                                                but the majority have suffered alteration</p>
                                        </div>
                                    </div>
    
                                </div>
                                <a class="text-muted me-3" href="javascript:void(0)"><i class="icon-xs"
                                        data-feather="message-square"></i></a>
                            </div>
                        </div>
                        
                        <!-- end comment -->
    
                    </article>
                    <!-- Post end-->
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="sidebar ms-3" id="aside" style="width:23%; margin-top: -70px; border-radius: 20px; box-shadow:1px 1px 8px 2px rgba(0, 0, 0, 0.2);">
                    
                        <ul class="list-unstyled">
                            <li>
	                            <div class="d-flex justify-content-center" 
	                            style="width:300px; height: 200px; 
	                            background-image: url('/resources/images/employeecard2.png'); background-size: cover;
	                            margin-left: 10px; margin-top: 10px;">
	                                <img src="resources/images/profile/${loginVO.profile}" alt=""
	                                        class="img-fluid" 
	                                        style="background-color: #BEE86E; border-radius: 100px; 
	                                        width: 140px; height: 140px; margin-top: 40px; margin-left: 15px;"/>
	                                <div class="d-flex flex-column align-items-center" style="background-color: #EDEBED; margin-top: 5px;">
	                                <span class="d-block text-muted" style="margin-top: 10px; margin-left:20px; font-size:20px; font-weight: bold">${companyVO.companyName}</span>
	                                <span class="d-block" style="margin-top: 38px;font-weight: bold; font-size:27px;">${loginVO.name}</span>
	                                <span class="d-block" style="color: #EDEBED">${loginVO.email}</span> 
	                                </div>
	                            </div>
                            </li>
                        </ul>
                        
                    	
                        <div>
                            <div class="d-flex justify-content-center">
                                <button id="markmodalbtn" class="btn" 
                                style="font-size: 20px; border: 3px solid #EAEAEA; 
                                border-radius: 10px; width: 94%" 
                                data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa-solid fa-camera me-2"></i>인증하기</button>
                            </div>
                            <div class="ms-3 my-3">
                            </div>
                        </div>
    
                        
                    </div>
                </div>
                <!-- Sidebar end-->
            </div>
        </div>
        <!-- end row -->
    </section>
	
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" 
	style="border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); outline: none;">
		<div class="modal-dialog" style="border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); outline: none;">
	    	<div class="modal-content">
				<div class="modal-body">
					<div class="d-flex justify-content-between mb-1">
						<h5 class="modal-title" id="staticBackdropLabel">우리 회사 챌린지 인증하기 <button type="button" style="background-color: white; border: 0;" data-bs-toggle="popover" title="영수증 인증" data-bs-content="제휴된 카페 중 개인컵을 사용하여 결제한 영수증을 업로드 후 인증버튼을 눌러주세요."><i class="fa-solid fa-question" style="color: red;"></i></button></h5>
						<button id="markModalClose" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					
					<div class="d-flex flex-column align-items-center">
						
			      	<form enctype="multipart/form-data" name="challengeMark" id="uploadForm">
			      		<img style="width: 400px;" class="mx-auto d-block mb-2" id="preview-image" src="/resources/images/scan2.gif">
		     			<div class="input-group mb-2">
		               		<input type="file" class="form-control" id="input_image" name="uploadFile" multiple="multiple" style="width: 250px;"/>
		               	</div>
			      		<input type="button" onclick="uploadfile1()" value="인증하기" class="btn btn-primary align-items-center mb-2 w-100">
			      	</form>
			      	</div>
	      		</div>
	 		</div>
		</div>
	</div>
	
	<!-- Button trigger modal -->
	<button id="complete" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop1">
		Launch static backdrop modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
	  <div class="modal-dialog">
	    <div class="modal-content" style="background-color: #38C172;">
	      <div class="modal-body">
		      	<div class="d-flex justify-content-between mb-1">
		          <h5 class="modal-title" id="staticBackdropLabel">성공</h5>
		          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="w-100 d-flex flex-column align-items-center">
				  <img alt="" src="/resources/images/sucessmark.gif">
				   	<a href="${pageContext.request.contextPath }/myPoint/${challengeVO.challengeCode}" type="button" class="btn" style="color: black; background-color: #fafafa; border-color: #fafafa ; ">내 포인트 확인하러 가기</a>
				</div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Button trigger modal -->
	<button id="fail" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
		Launch static backdrop modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">실패</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        인증에 실패하셨습니다. 다시 인증해주세요.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="failClose">Close</button>
	        <button type="button" class="btn btn-primary" onclick="remarkclick()">다시 인증하기</button>
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

  	
  	<!-- preview image -->
  	<script>
  		$('#complete').hide()
  		$('#fail').hide()
  	
  		function remarkclick() {
  			$('#failClose').trigger('click')
  			$('#markmodalbtn').trigger('click')	
		}
  		
	  	function readImage(input) {
	  	    // 인풋 태그에 파일이 있는 경우
	  	    if(input.files && input.files[0]) {
	  	        // 이미지 파일인지 검사 (생략)
	  	        // FileReader 인스턴스 생성
	  	        const reader = new FileReader()
	  	        // 이미지가 로드가 된 경우
	  	        reader.onload = e => {
	  	            const previewImage = document.getElementById("preview-image")
	  	            previewImage.src = e.target.result
	  	        }
	  	        // reader가 이미지 읽도록 하기
	  	        reader.readAsDataURL(input.files[0])
	  	    }
	  	}
	  	// input file에 change 이벤트 부여
	  	const inputImage = document.getElementById("input_image")
	  	inputImage.addEventListener("change", e => {
	  	    readImage(e.target)
	  	})
	  	
	  	var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
		var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
		  return new bootstrap.Popover(popoverTriggerEl)
		})
  	</script>
  	
  	<script>
  	 function uploadfile1() {   
  			var form = new FormData();
  	        form.append("file1", $("#input_image")[0].files[0]);
  	        form.append("challengeCode", "${challengeVO.challengeCode}");
  	        form.append("challengePoint", "${challengeVO.challengeRewardAmount}");
  	        
  			$.ajax({
				type: 'post',
				url : '${ pageContext.request.contextPath }/uploadfile',
				dataType: "json",
				data : form,
				processData: false,
		        contentType: false,
		        cache: false,
				success : function(result){
					if (result == "성공") {
						console.log(result);
						$('#markModalClose').trigger('click')
						$('#complete').trigger('click')						
					} else{
						$('#markModalClose').trigger('click')
						$('#fail').trigger('click')						
					}
				},
				error : function () {
					alert('실패')					
				}
			})
	}
  	</script>
  	
  	 <script>
	  $(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip();   
	  });
	</script>
</body>
</html>