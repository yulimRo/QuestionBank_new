<%--
  Created by IntelliJ IDEA.
  User: 이소현
  Date: 2020-03-26
  Time: 오전 9:17
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
        <div class="card-header">문제등록</div>
        <div class="card-body">
            <form>

                <div class="form-group">
                    <label>문제</label>
                    <input class="form-control">
                </div>
                <hr>
                <div class="form-group">
                    <label for="disabledSelect">문제유형</label>
                    <select id="disabledSelect" class="form-control">
                        <option>문제유형 선택하기</option>
                    </select>
                </div>
                <hr>
                <div class="form-group">
                    <label>답안</label>
                    <textarea class="form-control" rows="3"> </textarea>
                </div>
                <hr>
                <div class="form-group">
                    <label>안내문구</label>
                    <input class="form-control">
                </div>
                <div class="form-group">
                    <label for="selectCategory">카테고리</label>
                    <select id="selectCategory" class="form-control">
                        <option>카테고리 선택하기</option>
                    </select>
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
                <a class="btn btn-primary btn-block" href="#" data-toggle="modal" data-target="#questionRegistrationModal">등록</a>
                <a class="btn btn-secondary btn-block" href="/" >취소</a>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="questionRegistrationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">문제 등록</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">문제가 등록되었습니다</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                <a class="btn btn-primary" href="/main/mypageUpdateVer">확인</a>
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

