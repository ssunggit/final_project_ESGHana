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
	
	
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>
	
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
                        <h2 class="text-dark fw-light lh-base mt-5">나의 <span
                                class="fw-medium title">포인트</span></h2>
                        <p class="fs-16 text-muted mb-0">아자자</p>
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
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">나의 기부</label>
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
                                    <label class="form-check-label text-dark" for="flexCheckChecked99"  style="font-weight: bold;">우리 회사 챌린지</label>
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
                <div class="col-lg-5 mt-5">
                	<div class="shadow rounded-3 p-4">
	                <div class="card position-relative rounded-3"
	                            style="background: url(/resources/images/coins.png) center center; background-size: 200px; background-color: #FFF9BC; ">
	                    <div class="card-body">
	                        <!-- <i class="mdi mdi-contactless-payment text-white fs-3"></i> -->
	                        <i class="fa-solid fa-ranking-star fs-3 text-white "></i>
	                        <p class="text-uppercase fs-13 mt-4 mb-2">나의 포인트</p>
	                        <h1 class="fw-medium">${loginVO.point} P</h1>
	                        
	                    </div>
	                </div>
                </div>
                </div>
                
                
                <section class="bg-light">
                <div class="col-lg-12">
                    <nav class="pro-detail-area">
                        <div class="nav nav-tabs border-bottom detail-title" id="nav-tab" role="tablist">
                            <a class="nav-link border-0 active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home"
                                role="tab" aria-controls="nav-home" aria-selected="true">리스트</a>
                            <a class="nav-link border-0" id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile"
                                role="tab" aria-controls="nav-profile" aria-selected="false" onclick="cal()">달력</a>
                        </div>
                    </nav>
                    <div class="tab-content py-4" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab">
                            <p class="text-muted fs-16">
                                	<c:forEach items="${challengeHistoryList}" var="challengeHistory">
						                ${challengeHistory.challengeDate}
						                 
						                ${challengeHistory.challengePoint}
						                <br>
	                </c:forEach>
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


						<!-- 달력 -->


                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" style="width: 850px; height: 700px;">
                            <h6 class="lh-base fw-medium">달력</h6>
                            <div id='calendar' style="width: 850px; height: 700px;"></div>
                        </div>
                        
                        
                        </div>
                        
                        
                    
                   </div>
    </section>
                </div>
            
    <!-- end detail tab -->
                
                
                
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
    function cal() {
	
    	var form = new FormData();
	    form.append("challengeCode", "${challengeCode}");
	    
       $.ajax({
    	   		type: 'post',
                url: "${ pageContext.request.contextPath }/myPoint/calendar", // 변경하기
                method: "post",
                data : form,
                dataType: "json",
                processData: false,
		        contentType: false,
		        cache: false,
				success : function(result){ 
            
                console.log(result); // log 로 데이터 찍어주기.

                var calendarEl = document.getElementById('calendar');

                var calendar = new FullCalendar.Calendar(calendarEl, {
                	initialView : 'dayGridMonth',
                	dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
                    headerToolbar: {
                    	start : 'prev next today',
        				center : 'title',
        				end : 'dayGridMonth,dayGridWeek,dayGridDay'
                    },
                    locale: "ko",
                    contentHeight: 700,
                    editable: true,
                    droppable: true, // this allows things to be dropped onto the calendar
                    drop: function (arg) {
                        // is the "remove after drop" checkbox checked?
                        if (document.getElementById('drop-remove').checked) {
                            // if so, remove the element from the "Draggable Events" list
                            arg.draggedEl.parentNode.removeChild(arg.draggedEl);
                        }
                    },
                    
                    events: result
                });

                calendar.render();
            },
            error : function () {
				alert('실패')					
			}
       })
       

    };

</script>

</body>
</html>