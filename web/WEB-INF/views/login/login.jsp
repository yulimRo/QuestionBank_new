<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String memberId = (String) session.getAttribute("MEMBERID");
    boolean login = memberId != null;

    if (!login) {

%>

<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Login</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
<script>
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });
        $(".sidebar-nav").attr("class", "sidebar-nav navbar-collapse collapse").attr("aria-expanded", 'false').attr("style", "height:1px");
    });
</script>

<div class="header">
    <h1>Moonjaeeunhaeng App</h1>
</div>
<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">로그인</div>
        <div class="card-body">
            <form action="/login/check" method="get">
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" name = "ID" id="ID" class="form-control" placeholder="아이디" required="required"
                               autofocus="autofocus">
                        <label for="ID">아이디</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="password" name = "PWD" id="PWD" class="form-control" placeholder="비밀번호"
                               required="required">
                        <label for="PWD">비밀번호</label>
                    </div>
                </div>
                <input class="btn btn-primary btn-block" type="submit" value="Login"/>

                <%--    <table border="1" cellpadding="0" cellspacing="0">--%>
                <%--        <tr>--%>
                <%--            <td>ID</td>--%>
                <%--            <td><input type="text" name="id" id="id"/></td>--%>
                <%--        </tr>--%>
                <%--        <tr>--%>
                <%--            <td>Password</td>--%>
                <%--            <td><input type="password" name="password" id="password"/></td>--%>
                <%--        </tr>--%>
                <%--        <tr>--%>
                <%--            <td><input align="right" type="submit" value="Login"/></td>--%>
                <%--        </tr>--%>
                <%--    </table>--%>

            </form>
            <div class="text-center">
                <a class="d-block small mt-3" href="/login/signUp">회원가입</a>
                <a class="d-block small" href="/login/userSearch" id="find_id_btn">아이디/비밀번호 찾기</a>
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

<%--<button onclick="SignUp()">SignUp</button>--%>
<%--<script>--%>
<%--    function SignUp() {--%>
<%--        window.location.href = "/login/signUp";--%>
<%--    }--%>
<%--</script>--%>

<%
} else {
%>

<%--<h2>로그인 : <%=memberId%>--%>
<%--</h2>--%>
<%--<button onclick="clkLogout()">로그아웃</button>--%>

<%--<script>--%>
<%--    function clkLogout() {--%>
<%--        alert("로그아웃 되었습니다.");--%>
<%--        window.location.href = "/login/sessionLogout";--%>
<%--    }--%>
<%--</script>--%>

<%
    }
%>
