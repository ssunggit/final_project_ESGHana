<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

	<head>

        <meta charset="utf-8" />
        <title>Sales Dashboard | Dashonic - Free Admin & Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Free Admin & Dashboard Template" name="description" />
        <meta content="Pichforest" name="author" />
       
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="/resources/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/resources/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/resources/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        <!-- Dark Mode Css-->
        <link href="/resources/assets/css/dark-layout.min.css" id="app-style" rel="stylesheet" type="text/css" />
        

    </head>

  <body data-sidebar="dark">
	<!-- 개인회원 & 기업회원 비율  -->
	<!-- 챌린지 별 이용비율  -->
    
    <!-- <body data-layout="horizontal"> -->

    <!-- Begin page -->
    <div id="layout-wrapper">

        <header id="page-topbar">
            <div class="navbar-header">
                <div class="d-flex">
                    <!-- LOGO -->
                    <div class="navbar-brand-box">
                        <a href="index.html" class="logo logo-dark">
                            <span class="logo-sm">
                                <img src="/resources/assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="/resources/assets/images/logo-dark.png" alt="" height="22">
                            </span>
                        </a>

                        <a href="index.html" class="logo logo-light">
                            <span class="logo-sm">
                                <img src="/resources/assets/images/logo-sm.png" alt="" height="22">
                            </span>
                            <span class="logo-lg">
                                <img src="/resources/assets/images/logo-light.png" alt="" height="22">
                            </span>
                        </a>
                    </div>

                    <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                        <i class="fa fa-fw fa-bars"></i>
                    </button>

                </div>

                <div class="d-flex">

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item noti-icon" id="page-header-notifications-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="icon-sm" data-feather="bell"></i>
                            <span class="noti-dot bg-danger"></span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                            aria-labelledby="page-header-notifications-dropdown">
                            <div class="p-3">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h5 class="m-0 font-size-15"> Notifications </h5>
                                    </div>
                                    <div class="col-auto">
                                        <a href="#!" class="small"> Mark all as read</a>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <h6 class="dropdown-header bg-light">New</h6>
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <img src="/resources/assets/images/users/avatar-3.jpg"
                                            class="me-3 rounded-circle avatar-sm" alt="user-pic">
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">Justin Verduzco</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Your task changed an issue from "In Progress" to <span class="badge bg-success">Review</span></p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 1 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a href="" class="text-reset notification-item">
                                    <div class="d-flex border-bottom align-items-start">
                                        <div class="flex-shrink-0">
                                            <div class="avatar-sm me-3">
                                                <span class="avatar-title bg-primary rounded-circle font-size-16">
                                                    <i class="uil-shopping-basket"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="flex-grow-1">
                                            <h6 class="mb-1">New order has been placed</h6>
                                            <div class="text-muted">
                                                <p class="mb-1 font-size-13">Open the order confirmation or shipment confirmation.</p>
                                                <p class="mb-0 font-size-10 text-uppercase fw-bold"><i class="mdi mdi-clock-outline"></i> 5 hours ago</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="p-2 border-top d-grid">
                                <a class="btn btn-sm btn-link font-size-14 btn-block text-center" href="javascript:void(0)">
                                    <i class="uil-arrow-circle-right me-1"></i> <span>View More..</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item noti-icon right-bar-toggle" id="right-bar-toggle">
                            <i class="icon-sm" data-feather="settings"></i>
                        </button>
                    </div>

                    <div class="dropdown d-inline-block">
                        <button type="button" class="btn header-item user text-start d-flex align-items-center" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="rounded-circle header-profile-user" src="/resources/assets/images/users/avatar-1.jpg"
                            alt="Header Avatar">
                            <span class="ms-2 d-none d-sm-block user-item-desc">
                                <span class="user-name">Kate Dudley</span>
                                <span class="user-sub-title">Administrator</span>
                            </span>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end pt-0">
                            <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Profile</span></a>
                            <a class="dropdown-item d-flex align-items-center" href="#"><i class="mdi mdi-cog-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Settings</span><span class="badge bg-success ms-auto">New</span></a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-lock text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Lock screen</span></a>
                            <a class="dropdown-item" href="#"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i> <span class="align-middle">Logout</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">

            <!-- LOGO -->
            <div class="navbar-brand-box">
                <a href="index.html" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="/resources/assets/images/logo-sm.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="/resources/assets/images/logo-dark.png" alt="" height="22">
                    </span>
                </a>

                <a href="index.html" class="logo logo-light">
                    <span class="logo-lg">
                        <img src="/resources/assets/images/logo-light.png" alt="" height="22">
                    </span>
                    <span class="logo-sm">
                        <img src="/resources/assets/images/logo-sm-light.png" alt="" height="22">
                    </span>
                </a>
            </div>

            <button type="button" class="btn btn-sm px-3 font-size-16 header-item vertical-menu-btn">
                <i class="fa fa-fw fa-bars"></i>
            </button>

            <div data-simplebar class="sidebar-menu-scroll">

                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
                        <li class="menu-title">Menu</li>

                        <li>
                            <a href="index.html">
                                <i class="icon nav-icon" data-feather="monitor"></i>
                                <span class="menu-item">Dashboard</span>
                            </a>
                        </li>

                        <li class="menu-title">Authentication</li>

                        <li>
                            <a href="auth-signin-basic.html">
                                <i class="icon nav-icon" data-feather="user"></i>
                                <span class="menu-item">Sign In</span>
                            </a>
                        </li>
                        <li>
                            <a href="auth-signup-basic.html">
                                <i class="icon nav-icon" data-feather="edit"></i>
                                <span class="menu-item">Sign Up</span>
                            </a>
                        </li>
                        <li>
                            <a href="auth-resetpassword-basic.html">
                                <i class="icon nav-icon" data-feather="refresh-cw"></i>
                                <span class="menu-item">Reset Password</span>
                            </a>
                        </li>

                        <li class="menu-title">Pages</li>

                        <li>
                            <a href="pages-starter.html">
                                <i class="icon nav-icon" data-feather="file-text"></i>
                                <span class="menu-item">Starter Page</span>
                            </a>
                        </li>

                        <li>
                            <a href="pages-maintenance.html">
                                <i class="icon nav-icon" data-feather="user"></i>
                                <span class="menu-item">Maintenance</span>
                            </a>
                        </li>

                        <li>
                            <a href="error-404-basic.html">
                                <i class="icon nav-icon" data-feather="alert-circle"></i>
                                <span class="menu-item">Error 404</span>
                            </a>
                        </li>
                        <li>
                            <a href="error-500-basic.html">
                                <i class="icon nav-icon" data-feather="alert-circle"></i>
                                <span class="menu-item">Error 500</span>
                            </a>
                        </li>

                        <li class="menu-title">Components</li>

                        <li>
                            <a href="ui-elements.html">
                                <i class="icon nav-icon" data-feather="package"></i>
                                <span class="menu-item">UI Elements</span>
                            </a>
                        </li>

                        <li>
                            <a href="form-elements.html">
                                <i class="icon nav-icon" data-feather="edit-3"></i>
                                <span class="menu-item">Forms</span>
                            </a>
                        </li>

                        <li>
                            <a href="tables-basic.html">
                                <i class="icon nav-icon" data-feather="database"></i>
                                <span class="menu-item">Tables</span>
                            </a>
                        </li>

                        <li>
                            <a href="charts-apex.html">
                                <i class="icon nav-icon" data-feather="bar-chart-2"></i>
                                <span class="menu-item">Apex Charts</span>
                            </a>
                        </li>

                        <li>
                            <a href="maps.html">
                                <i class="icon nav-icon" data-feather="map-pin"></i>
                                <span class="menu-item">Maps</span>
                            </a>
                        </li>

                        <li class="menu-title">Icons</li>

                        <li>
                            <a href="icons-unicons.html">
                                <i class="icon nav-icon" data-feather="archive"></i>
                                <span class="menu-item">Unicons</span>
                            </a>
                        </li>
                        <li>
                            <a href="icons-feathericons.html">
                                <i class="icon nav-icon" data-feather="feather"></i>
                                <span class="menu-item">Feather icons</span>
                            </a>
                        </li>
                        <li>
                            <a href="icons-boxicons.html">
                                <i class="icon nav-icon" data-feather="box"></i>
                                <span class="menu-item">Boxicons</span>
                            </a>
                        </li>
                        <li>
                            <a href="icons-materialdesign.html">
                                <i class="icon nav-icon" data-feather="hexagon"></i>
                                <span class="menu-item">Material Design</span>
                            </a>
                        </li>
                        <li>
                            <a href="icons-fontawesome.html">
                                <i class="icon nav-icon" data-feather="flag"></i>
                                <span class="menu-item">Font Awesome 5</span>
                            </a>
                        </li>

                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
        </div>
        <!-- Left Sidebar End -->

        

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-flex align-items-center justify-content-between">
                                <h4 class="mb-0">Dashboard</h4>

                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Dashonic</a></li>
                                        <li class="breadcrumb-item active">Dashboard</li>
                                    </ol>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

                    <div class="row">
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">Total Revenue</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                $46.34k
                                            </h4>
                                            <div class="text-muted">Earning this month</div>
                                        </div>
                                        
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-1"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">Total Refunds</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                $895.02
                                            </h4>
                                            <div class="text-muted">Refunds this month</div>
                                        </div>
                                        
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-2"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">Active Users</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                6,985
                                            </h4>
                                            <div class="text-muted">Users this Week</div>
                                        </div>
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-3"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                            <!-- Card -->
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <div>
                                            <h6 class="font-size-xs text-uppercase">All Time Orders</h6>
                                            <h4 class="mt-4 font-weight-bold mb-2 d-flex align-items-center">
                                                12,584
                                            </h4>
                                            <div class="text-muted">Total Number of Orders</div>
                                        </div>
                                    </div>
                                    <div class="apex-charts mt-3" id="sparkline-chart-4"></div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end row-->

                   	<!-- 리스트 -->
					
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h4 class="card-title mb-4">챌린지</h4>
                                        <!-- Button trigger modal -->
										<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
										  챌린지 생성
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
                                                    <th>챌린지 코드</th>
                                                    <th>챌린지 명</th>
                                                    <th>챌린지 리워드</th>
                                                    <th>챌린지 정보</th>
                                                    <th colspan="2" class="rounded-end">Revenue</th>
                                                </tr>
                                                <!-- end tr -->
                                            </thead>
                                            <!-- end thead -->
                                            <tbody>
											<c:forEach items="${challengeList}" var="challenge">
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexampleone">
                                                            <label class="form-check-label" for="flexCheckexampleone">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        ${challenge.challengeCode}
                                                    </td>
                                                    <td>
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
                   	<!-- 리스트 -->
					
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <h4 class="card-title mb-4">기부</h4>
                                       	<!-- Button trigger modal -->
										<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
										  기부생성
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
                                                    <th>기부 코드</th>
                                                    <th>기부 명</th>
                                                    <th>기부 정보</th>
                                                    <th>기부 기관</th>
                                                    <th>기부 시작일</th>
                                                    <th>기부 종료일</th>
                                                    <th>기부 목표 금액</th>
                                                    <th>기부 현재 모금 금액</th>
                                                    <th colspan="2" class="rounded-end">Revenue</th>
                                                </tr>
                                                <!-- end tr -->
                                            </thead>
                                            <!-- end thead -->
                                            <tbody>
											<c:forEach items="${donationList}" var="donation">
                                                <tr>
                                                    <td>
                                                        <div class="form-check">
                                                            <input class="form-check-input font-size-16" type="checkbox"
                                                                value="" id="flexCheckexampleone">
                                                            <label class="form-check-label" for="flexCheckexampleone">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td class="fw-medium">
                                                        ${donation.donationNo}
                                                    </td>
                                                    <td>
                                                        ${donation.donationTitle}
                                                    </td>

                                                    <td>
                                                        ${donation.donationInfo}
                                                        
                                                    </td>
                                                    <td>
                                                         ${donation.donationCompany}
                                                    </td>
                                                    <td>
                                                         ${donation.donationStartDate}
                                                    </td>
                                                    
                                                    <td>
                                                         ${donation.donationEndDate}
                                                    </td>
                                                    
                                                    <td>
                                                         ${donation.donationGoal}
                                                    </td>
                                                    <td>
                                                         ${donation.donationCurrentAmount}
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

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>document.write(new Date().getFullYear())</script> &copy; Dashonic.
                        </div>
                        <div class="col-sm-6">
                            <div class="text-sm-end d-none d-sm-block">
                                Crafted with <i class="mdi mdi-heart text-danger"></i> by <a href="https://Pichforest.com/" target="_blank" class="text-reset">Pichforest</a>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

            <div class="buy-now d-flex gap-2">
                <a href="https://pichforest.com/item/samply-free-admin-dashboard-template/1025" target="_blank" class="btn btn-danger btn-lg"><i class="mdi mdi-download ms-1"></i> Free Download </a>
                <a href="https://pichforest.com/item/dashonic-bootstrap-5-admin-dashboard-template/1007" target="_blank" class="btn btn-primary btn-lg"><i class="mdi mdi-cart ms-1"></i> Get Premium </a>
            </div>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->

    <!-- Right Sidebar -->
    <div class="right-bar">
        <div data-simplebar class="h-100">
            <div class="rightbar-title d-flex align-items-center bg-dark p-3">

                <h5 class="m-0 me-2 text-white">Theme Customizer</h5>

                <a href="javascript:void(0);" class="right-bar-toggle-close ms-auto">
                    <i class="mdi mdi-close noti-icon"></i>
                </a>
            </div>

            <!-- Settings -->
            <hr class="m-0" />

            <div class="rightbar-content p-4">
                <div class="bg-overlay p-4 d-flex align-items-center h-100 text-center">
                    <div>
                        <h5 class="text-uppercase font-size-14 lh-base">This Demos Available Only for Premium Version</h5>
                        <div class="mt-4">
                            <a href="#" target="_blank" class="btn btn-primary w-100"><i class="uil uil-shopping-cart me-1"></i> Purchase Now</a>
                        </div>
                    </div>
                </div>
                <h6 class="mb-3">Layout</h6>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout"
                        id="layout-vertical" value="vertical">
                    <label class="form-check-label" for="layout-vertical">Vertical</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout"
                        id="layout-horizontal" value="horizontal">
                    <label class="form-check-label" for="layout-horizontal">Horizontal</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Mode</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-mode"
                        id="layout-mode-light" value="light" checked>
                    <label class="form-check-label" for="layout-mode-light">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-mode"
                        id="layout-mode-dark" value="dark">
                    <label class="form-check-label" for="layout-mode-dark">Dark</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Width</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-width"
                        id="layout-width-fluid" value="fluid" onchange="document.body.setAttribute('data-layout-size', 'fluid')" checked>
                    <label class="form-check-label" for="layout-width-fluid">Fluid</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-width"
                        id="layout-width-boxed" value="boxed" onchange="document.body.setAttribute('data-layout-size', 'boxed')">
                    <label class="form-check-label" for="layout-width-boxed">Boxed</label>
                </div>

                <h6 class="mt-4 mb-3">Layout Position</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-position"
                        id="layout-position-fixed" value="fixed" onchange="document.body.setAttribute('data-layout-scrollable', 'false')" checked>
                    <label class="form-check-label" for="layout-position-fixed">Fixed</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-position"
                        id="layout-position-scrollable" value="scrollable" onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
                    <label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
                </div>

                <h6 class="mt-4 mb-3">Topbar Color</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="topbar-color"
                        id="topbar-color-light" value="light" onchange="document.body.setAttribute('data-topbar', 'light')" checked>
                    <label class="form-check-label" for="topbar-color-light">Light</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="topbar-color"
                        id="topbar-color-dark" value="dark" onchange="document.body.setAttribute('data-topbar', 'dark')">
                    <label class="form-check-label" for="topbar-color-dark">Dark</label>
                </div>

                <div id="sidebar-setting">
                <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Size</h6>

                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-default" value="default" onchange="document.body.setAttribute('data-sidebar-size', 'lg')" checked>
                    <label class="form-check-label" for="sidebar-size-default">Default</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-compact" value="compact" onchange="document.body.setAttribute('data-sidebar-size', 'md')">
                    <label class="form-check-label" for="sidebar-size-compact">Compact</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-size"
                        id="sidebar-size-small" value="small" onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
                    <label class="form-check-label" for="sidebar-size-small">Small (Icon View)</label>
                </div>

                <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Color</h6>

                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-light" value="light" onchange="document.body.setAttribute('data-sidebar', 'light')" checked>
                    <label class="form-check-label" for="sidebar-color-light">Light</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-dark" value="dark" onchange="document.body.setAttribute('data-sidebar', 'dark')">
                    <label class="form-check-label" for="sidebar-color-dark">Dark</label>
                </div>
                <div class="form-check sidebar-setting">
                    <input class="form-check-input" type="radio" name="sidebar-color"
                        id="sidebar-color-brand" value="brand" onchange="document.body.setAttribute('data-sidebar', 'brand')">
                    <label class="form-check-label" for="sidebar-color-brand">Brand</label>
                </div>
            </div>

                <h6 class="mt-4 mb-3">Direction</h6>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-direction"
                        id="layout-direction-ltr" value="ltr" checked>
                    <label class="form-check-label" for="layout-direction-ltr">LTR</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="layout-direction"
                        id="layout-direction-rtl" value="rtl">
                    <label class="form-check-label" for="layout-direction-rtl">RTL</label>
                </div>

            </div>

        </div> <!-- end slimscroll-menu-->
    </div>
    <!-- /Right-bar -->


	<!-- 챌린지 생성 Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	  <form enctype="multipart/form-data" action="${ pageContext.request.contextPath }/admin/challengeInsert" method="post">
	    <div class="modal-content">
	    
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">새로운 챌린지 등록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      
	      <div class="modal-body">
	      		<div class="card-body">
	              <div class="row">
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 명</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeName">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 리워드</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeRewardAmount">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 설명</label>
	                          <div class="col-md-10">
	                              <textarea class="form-control" id="example-text-input" name="challengeInfo"></textarea>
	                          </div>
	                      </div><!-- end row -->
	                      
	                      <div class="mb-3 row">
	                          <label for="formFile" class="form-label">챌린지 이미지</label>
	                  		  <input class="form-control" type="file" id="formFile" name="challengeImageFile">
	                      </div><!-- end row -->
	                      
	              </div><!-- end row -->
	          </div><!-- end card body -->
	      		
	      </div>
	      <div class="modal-footer">
	        <input type="submit" class="btn btn-primary" value="챌린지 등록">
	      </div>
	    </div>
	      </form>
	  </div>
	</div>
	
	<!-- 기부 생성 Modal -->
	<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	  <form enctype="multipart/form-data" action="${ pageContext.request.contextPath }/admin/donationInsert" method="post">
	    <div class="modal-content">
	    
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">새로운 기부 등록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      
	      <div class="modal-body">
	      		<div class="card-body">
	              <div class="row">
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">기부명</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeName">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 리워드</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeRewardAmount">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 설명</label>
	                          <div class="col-md-10">
	                              <textarea class="form-control" id="example-text-input" name="challengeInfo"></textarea>
	                          </div>
	                      </div><!-- end row -->
	                      
	                      <div class="mb-3 row">
	                          <label for="formFile" class="form-label">챌린지 이미지</label>
	                  		  <input class="form-control" type="file" id="formFile" name="challengeImageFile">
	                      </div><!-- end row -->
	                      
	              </div><!-- end row -->
	          </div><!-- end card body -->
	      		
	      </div>
	      <div class="modal-footer">
	        <input type="submit" class="btn btn-primary" value="기부 등록">
	      </div>
	    </div>
	      </form>
	  </div>
	</div>
	
	

    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>
    
    <!-- JAVASCRIPT -->
    <script src="/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/assets/libs/simplebar/simplebar.min.js"></script>
    <script src="/resources/assets/libs/feather-icons/feather.min.js"></script>

    <!-- apexcharts -->
    <script src="/resources/assets/libs/apexcharts/apexcharts.min.js"></script>

    <script src="/resources/assets/js/pages/dashboard-sales.init.js"></script>

    <script src="/resources/assets/js/app.js"></script>
    </body>

</html>
