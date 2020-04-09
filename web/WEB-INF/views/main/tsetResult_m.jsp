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
        <div class="card-header">시험결과</div>
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
                <p></p>
                <div class="panel-body" style="font-size: xx-small">
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>문제코드</th>
                                <th>문제</th>
                                <th>제출답안</th>
                                <th>답안</th>
                                <th>배점</th>
                                <th>취득점수</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>P4513</td>
                                <td>나는 멍청하다.</td>
                                <td>O</td>
                                <td>O</td>
                                <td>5</td>
                                <td>5</td>
                            </tr>

                            <tr>
                                <td>2</td>
                                <td>P5134</td>
                                <td>오늘 날씨는?</td>
                                <td>①</td>
                                <td>②</td>
                                <td>3</td>
                                <td>0</td>
                            </tr>

                            <tr>
                                <td>3</td>
                                <td> P5611</td>
                                <td>사이버 강의를 단어로 표현하라.</td>
                                <td>X같다</td>
                                <td>개같다</td>
                                <td>8</td>
                                <td>8</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>


                    <!-- /.table-responsive -->
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->

                <hr>

                <a class="d-block small mt-3 text-center">기타 주관식 및 서술형 문제는 시험 등록자의  채점여부에 따라 답안이
                    달라질 수 있음을 알려드립니다.</a>

                <p></p>
                <p></p>
                <label>최종 점수 : </label>

                <!-- /.panel-body -->
                <p></p>
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