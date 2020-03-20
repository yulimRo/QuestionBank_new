<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%--%>
<%--    String memberId = (String) session.getAttribute("MEMBERID");--%>
<%--    boolean login = memberId != null;--%>

<%--    if (!login) {--%>
<%--%>--%>
<%--<script>--%>
<%--    alert("로그인 먼저 해주세요.");--%>
<%--    window.location.href = "/login/login";--%>
<%--</script>--%>
<%--<%--%>
<%--}--%>
<%--else{--%>
<%--%>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="index.html">moonjaeeunhaeng app</a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="검색" aria-label="Search"
                   aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">

        <li class="nav-item dropdown no-arrow">
            <a class="dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                <span class="badge badge-danger"><img src="/resources/pic/사람이미지.png"></span>

            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">Settings</a>
                <a class="dropdown-item" href="#">Activity Log</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">로그아웃</a>
            </div>
        </li>
    </ul>
</nav>

<div id="wrapper">

    <div id="content-wrapper">
        <!-- Page Content -->
        <div class="container">

            <!-- Project One -->
            <div class="form-inline">
                <img class="mx-3" src="/resources/pic/사람이미지.png"/>
                <ul class="list-unstyled col-4">
                    <li class="h3 mb-2 text-gray-800">이름</li>
                    <li>자기소개</li>
                </ul>
            </div>
            <hr/>
            <div class="offset-2 my-3 ">
                <a href="/main/make-group"> <button type="button" class="btn btn-primary mx-3">퀴즈그룹 생성</button></a>
                <button class="btn btn-primary">퀴즈그룹 가입</button>
            </div>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="form-inline card-header py-3">
                    <h6 class="m-0 col-10 font-weight-bold">내가 가입한 그룹</h6>
                    <button class="btn btn-default btn-xs btn-outline-primary float-right">편집</button>
                </div>
                <div class="card-body">
                    <div>
                        <div>01</div>
                        <div class="form-inline">
                            <img class="col-4" src="/resources/pic/groupimg.png">
                            <ul class="list-unstyled col-4">
                                <li><strong>강태현 그룹</strong></li>
                                <li>데이터 베이스</li>
                            </ul>
                            <button class="btn btn-outline-primary float-right subBtn">
                                <img src="/resources/pic/substract.png">
                            </button>
                        </div>
                    </div>
                    <hr/>
                    <div>
                        <div>02</div>
                        <div class="form-inline">
                            <img class="col-4" src="/resources/pic/groupimg.png">
                            <ul class="list-unstyled col-4">
                                <li><strong>진정국 그룹</strong></li>
                                <li>빅 데이터</li>
                            </ul>
                            <button class="btn btn-outline-primary float-right subBtn">
                                <img src="/resources/pic/substract.png">
                            </button>
                        </div>
                    </div>
                    <hr/>
                    <div>
                        <div>03</div>
                        <div class="form-inline">
                            <img class="col-4" src="/resources/pic/groupimg.png">
                            <ul class="list-unstyled col-4">
                                <li><strong>차은우 그룹</strong></li>
                                <li>자료구조</li>
                            </ul>
                            <button class="btn btn-outline-primary float-right subBtn">
                                <img src="/resources/pic/substract.png">
                            </button>
                        </div>
                    </div>
                    <hr/>
                </div>
            </div>

            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>
            <!-- /.container -->
        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright © Your Website 2019</span>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">현재 세션을 종료할 준비가 되면 아래에서 "로그아웃"을 선택하십시오.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                <a class="btn btn-primary" href="/login/login">로그아웃</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Page level plugin JavaScript-->
<script src="/resources/vendor/chart.js/Chart.min.js"></script>
<script src="/resources/vendor/datatables/jquery.dataTables.js"></script>
<script src="/resources/vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Custom scripts for all pages-->
<script src="/resources/js/sb-admin.min.js"></script>

<!-- Demo scripts for this page-->
<script src="/resources/js/demo/datatables-demo.js"></script>
<script src="/resources/js/demo/chart-area-demo.js"></script>

</body>

</html>