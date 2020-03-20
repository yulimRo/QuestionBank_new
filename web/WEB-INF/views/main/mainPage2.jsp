<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%--%>
<%--  String memberId = (String) session.getAttribute("MEMBERID");--%>
<%--  boolean login = memberId != null;--%>

<%--  if (!login) {--%>
<%--%>--%>
<%--<script>--%>
<%--  alert("로그인 먼저 해주세요.");--%>
<%--  window.location.href = "/login/login";--%>
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

  <title>SB Admin - Main2</title>

  <!-- Custom fonts for this template-->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

  <a class="navbar-brand mr-1" href="mainPage2.jsp">moonjaeeunhaeng app</a>

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
        <span class="badge badge-danger"><img style="width:75%" src="/resources/pic/사람이미지.png"></span>
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

<div class="container">
  <div class="card card-register mx-auto mt-5">
    <div class="card-header">그룹 관리</div>
    <div class="card-body">
      <div class="searchGroup">
        <form>
          <div class="input-group">
            <input type="text" class="form-control col-7" placeholder="Search...">
            <span class="input-group-btn">
                         <button class="btn btn-primary" type="button">
                             <img class="searchImg" src="/resources/pic/search.png"/>
                         </button>
                        </span>
          </div>
        </form>
      </div>
      <div class="row form-inline form-group">
        <div class="col-5 box">
          <ul class="groupUl">
            <li><img class="groupImg" src="/resources/pic/groupimg.png"></li>
            <li><dd>그룹이름</dd></li>
            <li>그룹짱이름</li>
            <li>#해시태그</li>
            <li>
              <button class="groupBtn btn btn-primary btn-sm col-8">입장</button>
            </li>
          </ul>
        </div>
        <div class="col-5 box">
          <ul class="groupUl">
            <li><img class="groupImg" src="/resources/pic/groupimg.png"></li>
            <li><dd>그룹이름</dd></li>
            <li>그룹짱이름</li>
            <li>#해시태그</li>
            <li>
              <button class="groupBtn btn btn-primary btn-sm col-8">입장</button>
            </li>
          </ul>
        </div>
      </div>
      <div class="row form-inline form-group">
        <div class="col-5 box">
          <ul class="groupUl">
            <li><img class="groupImg" src="/resources/pic/groupimg.png"></li>
            <li><dd>그룹이름</dd></li>
            <li>그룹짱이름</li>
            <li>#해시태그</li>
            <li>
              <button class="groupBtn btn btn-primary btn-sm col-8">입장</button>
            </li>
          </ul>
        </div>
        <div class="col-5 box">
          <ul class="groupUl">
            <li><img class="groupImg" src="/resources/pic/groupimg.png"></li>
            <li><dd>그룹이름</dd></li>
            <li>그룹짱이름</li>
            <li>#해시태그</li>
            <li>
              <button class="groupBtn btn btn-primary btn-sm col-8">입장</button>
            </li>
          </ul>
        </div>
      </div>

    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>