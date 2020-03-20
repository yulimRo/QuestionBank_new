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

  <title>SB Admin - make-group</title>

  <!-- Custom fonts for this template-->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">그룹생성</div>
      <div class="card-body">
        <form>

          <div class="form-group">
            <label>그룹명</label>
            <input class="form-control">
          </div>
          <hr>
          <div class="form-group">
            <label>그룹설명</label>
            <textarea class="form-control" rows="3"> </textarea>
          </div>
          <hr>
          <div class="form-group">
            <label>활동 기간</label>
            <div class="form">  <input id="startDate" type="date"> 기준으로</div>
            <p></p>
            <div class="form">  <input id="endDate" type="date"> 까지</div>
          </div>
          <hr>
          <div class="form-group">
              <label for="disabledSelect">카테고리</label>
              <select id="disabledSelect" class="form-control">
                <option>카테고리 선택하기</option>
              </select>
            </div>
            <div class="input-group">
              <input type="text" class="form-control" placeholder="카테고리 검색" aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <text>검색</text>
                </button>
              </div>
            </div>
          <p></p>
            <div class="panel panel-default">
              <div class="panel-heading">
                <i class="fa fa-bell fa-fw"></i> 지금까지 선택한 카테고리
              </div>
              <!-- /.panel-heading -->
              <div class="panel-body">
                <div class="list-group">
                  <a class="list-group-item">
                    <i class="fa fa-twitter fa-fw" id="category"></i> 컴퓨터활용능력
                    <span class="pull-right text-muted small"><em id="area">자격증</em></span>
                  </a>
                  <a class="list-group-item">
                    <i class="fa fa-twitter fa-fw"></i> 시스템분석설계
                    <span class="pull-right text-muted small"><em>컴퓨터/IT</em></span>
                  </a>
                  <a class="list-group-item">
                    <i class="fa fa-twitter fa-fw"></i> 컴퓨터활용능력
                    <span class="pull-right text-muted small"><em >자격증</em></span>
                  </a>
                </div>
                <!-- /.list-group -->
                <a href="#" class="btn btn-default btn-block">모든 카테고리 보기</a>
              </div>
              <!-- /.panel-body -->
              <a class="d-block small mt-3 text-center" href="#">원하는 카테고리가 없으신가요?</a>
            </div>
          <p></p>
          <a class="btn btn-primary btn-block" href="#" data-toggle="modal" data-target="#makeGroupModal">생성</a>

        </form>
      </div>
    </div>
  </div>

  <div class="modal fade" id="makeGroupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">___그룹 생성</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">___그룹이 생성되었습니다</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
          <a class="btn btn-primary" href="myPage.jsp">확인</a>
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
