<%--
  Created by IntelliJ IDEA.
  User: 이소현
  Date: 2020-04-09
  Time: 오후 6:03
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

    <title>SB Admin - testResult</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">결과보기</div>
        <div class="card-body">
            <form>

                <div class="form-group">
                    <label>그룹명 : </label>
                    <p></p>
                    <label>시험명 : </label>
                    <p></p>
                </div>
                <hr>
                <!-- /.panel-heading -->
                <!-- table-responsive -->
                <!-- /.panel-heading -->
                <div class="panel-heading">
                    <i class="fa fa-bell fa-fw"></i> 그룹원
                </div>
                <p></p>
                <div class="panel-body" style="font-size: x-small">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>점수</th>
                                <th>등수</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>yl</td>
                                <td>노유림</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>

                            <tr>
                                <td>3</td>
                                <td>ad</td>
                                <td>채아담</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <td>sw</td>
                                <td>이상욱</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>

                            <tr>
                                <td>4</td>
                                <td>sh</td>
                                <td>이소현</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>


                    <!-- /.table-responsive -->
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->

                <hr>

                <p></p>
                <p></p>
                <label>평균 : </label>

                <!-- /.panel-body -->
                <p></p>
                <a class="btn btn-secondary btn-block" href="#">수정</a>
                <a class="btn btn-primary btn-block" href="#">확인</a>
            </form>
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