<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
          <li class="h3 mb-2 text-gray-800"><c:out value="${loginUser.NAME}"/></li>
          <li>자기소개</li>
        </ul>
      </div>
      <hr/>
      <div class="offset-2 my-3 ">
        <a href="/main/make-group"> <button type="button" class="btn btn-primary mx-3">퀴즈그룹 생성</button></a>
        <a href="/main/passwordCheck"><button class="btn btn-primary">회원정보수정</button></a>
      </div>

      <!-- DataTales Example -->
      <div class="card shadow mb-4">
        <div class="form-inline card-header py-3">
          <div class="m-0 col-10 font-weight-bold">
            <select id="groupselectbox">
              <option value="my" selected>내 그룹</option>
              <option value="join" >가입한 그룹</option>
            </select>
          </div>
          <div class="text-right">
            <button id="editbtn" class="btn btn-default btn-xs btn-outline-primary" >편집</button>
          </div>
        </div>
        <div id="updatePart" class="card-body">
          <c:forEach items="${myGroup}" var="list">
            <div class="form-inline">
              <img class="col-4" src="/resources/pic/groupimg.png">
              <ul class="list-unstyled col-6">
                <li><strong>그룹이름 : <c:out value='${list.group_name}'/></strong></li>
                <li>응시 인원 : <c:out value="${list.number_of_participants}"/></li>
              </ul>
              <button style="display: none"class="btn btn-outline-danger editgroupbtn float-right danger" value="${list.group_code}" data-toggle="modal" data-target="#RemoveGroup">탈퇴</button>
              <button class="btn btn-outline-primary goGroupbtn float-right" href="<c:out value="${list.group_code}"/>">입장</button>
              <div class="form-inline col-10 mt-3">생성 날짜 : <fmt:formatDate pattern="yyyy년MM월dd일" value='${list.reg_time}'/></div>
            </div>
            <hr/>
          </c:forEach>
        </div>
      </div>
      <form id="operForm" method="get">
        <input type="hidden" name ="ID" value="${loginUser.ID}"/>
      </form>
      <!-- /.container -->
    </div>
    <!-- /.container-fluid -->

    <!-- Sticky Footer -->
    <footer class="sticky-footer">
      <div class="container my-auto">
        <div class="copyright text-center my-auto">
          <span>Copyright © Your Website 2020</span>
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

<!-- Logout Modal-->
<div class="modal fade" id="RemoveGroup" tabindex="-1" role="dialog" aria-labelledby="RemoveGroupLabel"
     aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="RemoveGroupLabel"></h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">그룹을 탈퇴하시려면 탈퇴 버튼을 눌러주세요</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
        <a class="btn btn-primary" data-oper="removeJoinGroup" >탈퇴</a>
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

<script>
  $(document).ready(function () {
    var operForm = $("#operForm");
    var removeVar = $(".editgroupbtn").val();

    $("#groupselectbox").on("change",function(){
      var selectvalue = $("#groupselectbox").val();
      if(selectvalue === 'join'){
        $("#editbtn").html("편집");
        $("#editbtn").attr("class","btn btn-xs btn-outline-primary");
        document.getElementById("updatePart").innerHTML ="  <c:forEach items='${joinGroup}' var='list'>\n" +
                "            <div class=\"form-inline\">\n" +
                "              <img class=\"col-4\" src=\"/resources/pic/groupimg.png\">\n" +
                "              <ul class=\"list-unstyled col-6\">\n" +
                "                <li><strong>그룹이름 : <c:out value='${list.group_name}'/></strong></li>\n" +
                "                <li>응시 인원 : <c:out value='${list.number_of_participants}'/></li>\n" +
                "              </ul>\n" +
                "              <input type=\"hidden\" class=\"btn btn-outline-danger editgroupbtn float-right danger\" value=\"탈퇴\"/>\n" +
                "              <button class=\"btn btn-outline-primary goGroupbtn float-right\" href=\"<c:out value='${list.group_code}'/>\">입장</button>\n" +
                "              <div class=\"form-inline col-10 mt-1\">생성 날짜 : <fmt:formatDate pattern='yyyy년MM월dd일' value='${list.reg_time}'/></div>\n" +
                "            </div>\n" +
                "            <hr/>\n" +
                "          </c:forEach>";

      }
      else{
        $("#editbtn").html("편집");
        $("#editbtn").attr("class","btn btn-xs btn-outline-primary");
        document.getElementById("updatePart").innerHTML="  <c:forEach items='${myGroup}' var='list'>\n" +
                "            <div class=\"form-inline\">\n" +
                "              <img class=\"col-4\" src=\"/resources/pic/groupimg.png\">\n" +
                "              <ul class=\"list-unstyled col-6\">\n" +
                "                <li><strong>그룹이름 : <c:out value='${list.group_name}'/></strong></li>\n" +
                "                <li>응시 인원 : <c:out value='${list.number_of_participants}'/></li>\n" +
                "              </ul>\n" +
                "              <input type=\"hidden\" class=\"btn btn-outline-danger editgroupbtn float-right danger\" value=\"탈퇴\"/>\n" +
                "              <button class=\"btn btn-outline-primary goGroupbtn float-right\" href=\"<c:out value='${list.group_code}'/>\">입장</button>\n" +
                "              <div class=\"form-inline col-10 mt-1\">생성 날짜 : <fmt:formatDate pattern='yyyy년MM월dd일' value='${list.reg_time}'/></div>\n" +
                "            </div>\n" +
                "            <hr/>\n" +
                "          </c:forEach>";

      }




      $(".goGroupbtn").click(function(e){;
        e.preventDefault();
        operForm.append("<input type='hidden' name='group_code' value='"+$(this).attr("href")+"'/>");
        operForm.attr("action","/main/groupPage").submit();
      });

    });

    //내그룹, 가입한 그룹 클릭 전 그룹 내의 [입장]버튼을 눌렀을 때
    $(".goGroupbtn").click(function(e){;
      e.preventDefault();
      operForm.append("<input type='hidden' name='group_code' value='"+$(this).attr("href")+"'/>");
      operForm.attr("action","/main/groupPage").submit();
    });


      $("#editbtn").click(function(){

        if($(this).html() == "편집"){
          $(".editgroupbtn").attr("style", "display: block");
          $(".goGroupbtn").attr("style", "display : none");
          $(this).html("취소");
          $("#editbtn").removeAttr('class','btn btn-default btn-xs btn-outline-primary');
          $("#editbtn").attr('class','btn btn-outline-danger danger')


        }
        else{
          $(".editgroupbtn").attr("style", "display : none");
          $(".goGroupbtn").attr("style", "display : block");
          $(this).html("편집");
          $("#editbtn").removeAttr("class","btn btn-outline-danger danger");
          $("#editbtn").attr("class","btn btn-xs btn-outline-primary");

        }

      });


  });
</script>

</body>

</html>