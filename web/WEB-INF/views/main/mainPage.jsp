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
        <a class="dropdown-item" href="#">Settings</a>
        <a class="dropdown-item" href="/main/mypageUpdateVer">마이페이지</a>
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
      <!-- Page Heading -->
      <!-- Jumbotron Header -->
      <header class="jumbotron my-4">
        <h3 class="display-4">헤더 만들었쓔~!</h3>
        <p class="lead">앱에 대한 설명쓰면 괜찮을 둡..</p>
        <a href="index2.html" class="btn btn-primary btn-lg">더보기</a>
      </header>



      <!-- table-responsive -->
      <div class="col-lg-6 mx-auto mt-5">
        <div class="panel panel-default">
          <div class="panel-heading ">
            <h5>새로운 그룹</h5>
          </div>
          <!-- /.panel-heading -->
          <div class="panel-body">
            <div class="table-responsive">
              <table class="table">
                <thead>
                <tr>
                  <th>#</th>
                  <th>그룹 이름</th>
                  <th>그룹장</th>
                  <th>대표 태그</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="board" varStatus="status">
                  <tr>
                    <td><c:out value="${board.group_code}"/></td>
                    <td>
                      <a href ='/main/mainPage2'><c:out value="${board.group_name}"/> </a></td>
                    <td><c:out value="${board.admin_user_code}"/></td>
                    <td><h6 class=""><c:out value="${codes[status.index]}"/></h6></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- /.table-responsive -->
          </div>
          <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
      </div>
      <!-- /.col-lg-6 -->



      <div class="col-lg-6 mx-auto mt-5">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h5>진행중인 퀴즈 그룹</h5>
          </div>
          <!-- /.panel-heading -->
          <div class="panel-body">
            <div class="table-responsive">
              <table class="table">
                <thead>
                <tr>
                  <th>#</th>
                  <th>그룹 이름</th>
                  <th>그룹장</th>
                  <th>대표 태그</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list2}" var="board" varStatus="status">
                  <tr>
                    <td><c:out value="${board.group_code}"/></td>
                    <td>
                      <a href ='/main/mainPage2'><c:out value="${board.group_name}"/> </a></td>
                    <td><c:out value="${board.admin_user_code}"/></td>
                    <td><h6 class=""><c:out value="${codes[status.index]}"/></h6></td>
                  </tr>
                   </c:forEach>
                </tbody>
              </table>
            </div>
            <!-- /.table-responsive -->
            <a class="btn btn-primary btn-block color-palette mb-4" href="/main/mainPage2">더보기</a>
          </div>
          <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
      </div>
      <!-- /.col-lg-6 -->


      <!-- /.row -->

    </div>
    <!-- /.container -->
  </div>
  <!-- /.container-fluid -->

  <!-- Sticky Footer -->
  <footer class="sticky-footer">
    <div class="container my-auto col-5">
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
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
        <a class="btn btn-primary" href="../login/sessionLogout">로그아웃</a>
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

<script type="text/javascript">
  $(document).ready(function () {

    var result = '<c:out value="${result}"/>';

    checkModal(result);

    history.replaceState({}, null, null);

    function checkModal(result) {
      if (result === '' || history.state) {
        return;
      }
      if (parseInt(result) > 0) {
        $('.modal-body').html("게시글" + parseInt(result) + "번이 등록되었습니다.");

        $("#myModal").modal("show");
      }
    }


  });
</script>


<%--<h2>로그인 : <%=memberId%>--%>
<%--</h2>--%>
<%--<button onclick="clkLogout()">로그아웃</button>--%>

<%--<script>--%>
<%--    function clkLogout() {--%>
<%--        alert("로그아웃 되었습니다.");--%>
<%--        window.location.href = "/login/sessionLogout";--%>
<%--    }--%>
<%--</script>--%>


