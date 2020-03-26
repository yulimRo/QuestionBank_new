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
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - mypageInformation</title>

  <!-- Custom fonts for this template-->
  <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="/resources/css/sb-admin.css" rel="stylesheet">
</head>


<body class="bg-dark">
<div class="container">
  <div class="card card-login mx-auto mt-5">
    <div class="card-header">회원정보 수정</div>
    <div class="card-body">

      <form action="/" method="post">
        <div class="form-group">
          <label>비밀번호 수정</label>
          <div class="form-label-group">
            <input type="password" name="PWD" id="PWD" class="form-control" placeholder="비밀번호"
                   required="required">
            <label for="PWD">비밀번호</label>
          </div>
        </div>
        <div class="form-group">
          <div class="form-label-group">
            <input type="password" name="PWD2" id="passwordConfirm" class="form-control" placeholder="비밀번호 확인"
                   required="required">
            <label for="passwordConfirm">비밀번호 확인</label>
          </div>
        </div>
        <hr>
        <div class="form-group">
          <label>이메일 변경</label>
          <div class="form-label-group">
            <input type="email" name="MAIL" id="MAIL" class="form-control" placeholder="이메일"
                   required="required">
            <label for="MAIL">이메일</label>
          </div>
        </div>
        <hr>
        <div class="form-group">
          <label>핸드폰 번호 변경</label>
          <div class="form-label-group">
            <input type="text" name="PHONE" id="PHONE" class="form-control" placeholder="휴대폰"
                   required="required">
            <label for="phone">휴대폰</label>
          </div>
        </div>
        <div class="text-center">
          <a class="btn btn-primary btn-block" href="#" data-toggle="modal" data-target="#makeGroupModal">수정</a>
        </div>

        <div class="modal fade" id="makeGroupModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">회원정보수정</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">회원정보가 수정되었습니다</div>
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                <a class="btn btn-primary" href="/main/myPage">확인</a>
              </div>
            </div>
          </div>
        </div>
      </form>

      <!-- Bootstrap core JavaScript-->
      <script src="/resources/vendor/jquery/jquery.min.js"></script>
      <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!— Core plugin JavaScript—>
      <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>


</body>
</html>