<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String memberId = (String) session.getAttribute("MEMBERID");
  String PWD = (String)request.getAttribute("PWD");
  boolean login = memberId != null;
  if (!login) {
    session.setAttribute("MEMBERPWD",PWD);
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
    <div class="card-header">비밀번호 확인</div>
    <div class="card-body">

      <form action="/main/mypageInformation" method="post">
        <div class="form-group">
          <label>회원님의 소중한 개인정보를 안전하게 보호하고
            개인정보 도용으로 인한 피해를 예방하기 위하여 비밀번호를 확인합니다.</label>
          <div class="form-label-group">
            <input type="password" name="PWD" id="PWD" class="form-control" placeholder="비밀번호"
                   required="required">
            <label for="PWD"> 비밀번호 </label>
          </div>
        </div>

        <div class="text-center">
          <input type="button" class="btn btn-primary btn-block" onclick="checkPWD()" value="확인">
        </div>

      </form>
      <!-- Bootstrap core JavaScript-->
      <script src="/resources/vendor/jquery/jquery.min.js"></script>
      <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!- Core plugin JavaScript ->
      <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>


</body>
</html>

<script>

  function checkPWD(){

    var pwd1=$("#PWD").val();
    var pwd2 = "<%=session.getAttribute("MEMBERPWD")%>";
    if(pwd1 == pwd2){
      window.location.href = "/main/mypageInformation";
    }
    else {
      alert("잘못된 비밀번호를 입력하셨습니다.")
      window.location.href = "/main/passwordCheck";
    }
  }

</script>


