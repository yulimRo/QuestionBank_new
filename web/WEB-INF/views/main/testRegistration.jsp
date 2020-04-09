<%--
  Created by IntelliJ IDEA.
  User: 이소현
  Date: 2020-03-24
  Time: 오전 10:42
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

    <title>SB Admin - make-group</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">시험등록</div>
        <div class="card-body">
            <form>

                <div class="form-group">
                    <label>시험명</label>
                    <input class="form-control">
                </div>
                <hr>
                <div class="form-group">
                    <label>시험설명</label>
                    <textarea class="form-control" rows="3"> </textarea>
                </div>
                <hr>
                <div class="form-group">
                    <label>응시기간</label>
                    <div class="form" font-weight-light style="font-size: small">  <input id="startDate" type="date"> 기준으로</div>
                    <p></p>
                    <div class="form font-weight-light" style="font-size: small">  <input id="endDate" type="date"> 까지</div>
                </div>

                <div class="form-group">
                    <label>시작시간</label>
                    <div class="form font-weight-light" style="font-size: small">  <input id="startTime" type="time"> 부터</div>
                    <p></p>
                    <label>종료시간</label>
                    <div class="form font-weight-light" style="font-size: small">  <input id="endTime" type="time"> 까지</div>
                </div>

                <hr>

                <label for="disabledSelect">문제 검색</label>
                <p></p>
                <div class="input-group">
                    <input id="disabledSelect" type="text" class="form-control" placeholder="문제 검색" aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <text>검색</text>
                        </button>
                    </div>
                </div>
                <p></p>
                <div class="panel panel-default">

                    <!-- /.panel-heading -->
                    <!-- table-responsive -->
                    <div class="panel-heading">
                        <i class="fa fa-bell fa-fw"></i> 저장된 문제 &nbsp; 문제 수:
                    </div>
                    <!-- /.panel-heading -->
                    <p></p>
                    <div class="panel-body" style="font-size: xx-small">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>문제코드</th>
                                    <th>카테고리</th>
                                    <th>분야</th>
                                    <th>배점</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>C1563</td>
                                    <td>소프트웨어공학</td>
                                    <td>컴퓨터/IT</td>
                                    <td>5</td>
                                </tr>

                                <tr>
                                    <td>2</td>
                                    <td>I5167</td>
                                    <td>정보처리기사</td>
                                    <td>자격증</td>
                                    <td>10</td>
                                </tr>

                                <tr>
                                    <td>3</td>
                                    <td>I5117</td>
                                    <td>컴퓨터활용능력</td>
                                    <td>자격증</td>
                                    <td>8</td>
                                </tr>

                                <tr>
                                    <td>4</td>
                                    <td>C945</td>
                                    <td>시스템분석설계</td>
                                    <td>컴퓨터/IT</td>
                                    <td>5</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->



                    <!-- /.panel-body -->
                    <a class="d-block small mt-3 text-center" href="#">원하는 문제가 없으신가요?</a>
                </div>
                <p></p>
                <a class="btn btn-outline-primary btn-block" href="#" data-toggle="modal">미리보기</a>
                <a class="btn btn-primary btn-block" href="#" data-toggle="modal" data-target="#testRegistrationModal">등록</a>
                <a class="btn btn-secondary btn-block" href="#그룹페이지" >취소</a>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="testRegistrationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">___시험 등록</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">___시험이 등록되었습니다</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                <a class="btn btn-primary" href="/main/그룹페이지">확인</a>
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
