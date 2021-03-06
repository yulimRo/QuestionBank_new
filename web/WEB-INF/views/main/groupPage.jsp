<%--
  Created by IntelliJ IDEA.
  User: 소혀니
  Date: 2020-03-26
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String memberId = (String) session.getAttribute("MEMBERID");
    boolean login = memberId != null;

    if (!login) {
%>
<script>
    alert("로그인 먼저 해주세요.");
    window.location.href = "/login/login";
</script>
<%
    }
    else{

    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <a href="#"><img class="mr-1" src="/resources/pic/backspace.png"/></a>
    <a class="navbar-brand mr-1" href="mainPage2.jsp">App Mark</a>
    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>
    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="검색" aria-label="Search" aria-describedby="basic-addon2">
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
            <a class="dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                <span class="badge badge-danger"><img style="width : 75% " src="/resources/pic/사람이미지.png"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="/main/myPage?ID=${loginUser.ID}">마이페이지</a>
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
                    <li class="h3 mb-2 text-gray-800">${group_name}</li>
                    <li>그룹 소개</li>
                </ul>
            </div>
            <div>
                <ul class="list-unstyled form-inline">
                    <c:forEach items="${cate}" var="cate">
                        <a href="#"><li class="mx-3">#<c:out value="${cate}"/></li></a>
                    </c:forEach>
                </ul>
            </div>
            <hr/>
            <div class="offset-2 my-3 ">
                <a href="/main/testRegistration"> <button type="button" class="btn btn-primary mx-3">시험 등록하기</button></a>
                <a href="/main/questionRegistration"><button class="btn btn-primary">문제 등록하기</button></a>
            </div>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="form-inline card-header py-3">
                    <div class="m-0 col-10 font-weight-bold">
                        그룹 정보
                    </div>
                </div>
                <div class="card-body">
                    <div>인원 수</div>
                    <ul class="list-unstyled form-inline ">
                        <li class="mx-2"><img  style="width : 35%" src="/resources/pic/사람이미지.png"/>노유림</li>
                        <li class="mx-2"><img  style="width : 35%" src="/resources/pic/사람이미지.png"/>이상욱</li>
                        <li class="mx-2"><img style="width : 35%" src="/resources/pic/사람이미지.png"/>이소현</li>
                        <li class="mx-2"><img style="width : 35%" src="/resources/pic/사람이미지.png"/>채아담</li>
                    </ul>
                    <hr/>
                    <div>시험수 </div>
                    <table class="table table-striped">
                        <tr>
                            <th>번호</th>
                            <th>시험명</th>
                            <th>기간</th>
                            <th>응시현황</th>
                            <th>완료여부</th>
                            <th>평균</th>
                        </tr>
                    </table>
                </div>
            </div>
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