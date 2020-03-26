<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Register</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">
</head>
<body class="bg-dark">
<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">회원가입</div>
        <div class="card-body">

            <form action="/login/signUp" method="post">
                <div class="form-group">
                    <div class="row">
                        <div class="col-9">
                            <div class="form-group">
                                <div class="form-label-group">
                                    <input type="text" name="ID" id="ID" class="form-control" placeholder="아이디" required="required"autofocus="autofocus">
                                    <label for="ID">아이디</label>
                                    <div class="text-left mt-1" id="dupli"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 text-left">
                            <div class="form-group">
                                <button class="btn btn-primary mt-1" id="ajax01" onclick="clkDuplicated()">중복확인</button>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
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
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" name="NAME" id="NAME" class="form-control" placeholder="이름"
                               required="required"
                               autofocus="autofocus">
                        <label for="NAME">이름</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="email" name="MAIL" id="MAIL" class="form-control" placeholder="이메일"
                               required="required">
                        <label for="MAIL">이메일</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" name="PHONE" id="PHONE" class="form-control" placeholder="휴대폰"
                               required="required">
                        <label for="PHONE">휴대폰</label>
                    </div>
                </div>
                <div class="text-center">
                    <input type="submit" value="가입" class="btn btn-outline-primary"/>
                    <input type="reset" value="초기화" class="btn btn-outline-info"/>
                </div>


                <%--    <table border="1" cellpadding="0" cellspacing="0">--%>
                <%--        <tr>--%>
                <%--            <td>ID</td>--%>
                <%--            <td><input type="text" name="id" id="id"></td>--%>
                <%--            <td><input type="button" id="ajax01" onclick="clkDuplicated()" value="아이디 중복 확인"></td>--%>
                <%--            <div id="dupli">--%>
                <%--            </div>--%>
                <%--        </tr>--%>

                <%--        <tr>--%>
                <%--            <td>PassWord</td>--%>
                <%--            <td colspan="2"><input type="text" name="password"></td>--%>
                <%--        </tr>--%>

                <%--        <tr>--%>
                <%--            <td>Name</td>--%>
                <%--            <td colspan="2"><input type="text" name="name"></td>--%>
                <%--        </tr>--%>

                <%--        <tr>--%>
                <%--            <td>Email</td>--%>
                <%--            <td colspan="2"><input type="text" name="email"></td>--%>
                <%--        </tr>--%>

                <%--        <tr>--%>
                <%--            <td>Phone</td>--%>
                <%--            <td colspan="2"><input type="text" name="phone"></td>--%>
                <%--        </tr>--%>

                <%--        <tr>--%>
                <%--            <td colspan="3" style="alignment: center"><input type="submit" value="SignUp"></td>--%>
                <%--        </tr>--%>

                <%--    </table>--%>
            </form>

            <script>
                var ajax = new XMLHttpRequest();

                function clkDuplicated() {
                    var tid = document.getElementById('ID');
                    ajax.onreadystatechange = callbackJson;
                    ajax.open('GET', '/login/dupliId?ID=' + tid.value);
                    ajax.setRequestHeader('Accept', 'application/json');
                    ajax.send();
                }

                function callbackJson() {
                    if (ajax.readyState == 4) {
                        var obj = JSON.parse(ajax.responseText);
                        document.getElementById('dupli').innerText = obj.result;
                        var dupColor = document.getElementById('dupli');
                        if (obj.result == "사용가능한 아이디 입니다.") {
                            dupColor.style.color = "blue";
                        } else {
                            dupColor.style.color = "red";
                        }
                    }
                }
            </script>

            <!-- Bootstrap core JavaScript-->
            <script src="/resources/vendor/jquery/jquery.min.js"></script>
            <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!— Core plugin JavaScript—>
            <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>


</body>
</html>