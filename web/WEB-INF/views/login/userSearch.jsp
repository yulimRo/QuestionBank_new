<%--
  Created by IntelliJ IDEA.
  User: leesanguk
  Date: 2020/02/12
  Time: 9:40 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Login</title>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">

<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">아이디/비밀번호 찾기</div>
        <div class="card-body">
            <div class="text-center mb-4">
                <h4>아이디 찾기</h4>
                <p>등록되어있는 이름과 휴대폰번호를 입력해주세요.</p>
            </div>
            <form action="/login/userSearch" method="post">
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="NAME" name="NAME" class="form-control" placeholder="이름을 입력"
                               required="required" autofocus="autofocus">
                        <label for="NAME">이름</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="PHONE" name="PHONE" class="form-control" placeholder="휴대폰번호를 입력"
                               required="required" autofocus="autofocus">
                        <label for="phone">휴대폰 번호</label>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" id="findId" class="btn btn-primary btn-block">아이디 찾기</button>
                </div>
            </form>
            <br>
            <hr>

            <div class="text-center mb-4">
                <h4>비밀번호 찾기</h4>
                <p>등록되어있는 이메일 주소를 입력해주세요.</p>
            </div>

            <form action="sendpw.do" name="pwsearch" method="post" >
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="ID" name="ID" class="form-control" placeholder="아이디 입력"
                               required="required" autofocus="autofocus">
                        <label for="ID">아이디 입력</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="MAIL" name="MAIL" class="form-control" placeholder="이메일 주소를 입력"
                               required="required" autofocus="autofocus">
                        <label for="MAIL">이메일 주소를 입력</label>
                    </div>
                </div>
                <div class="form-group">
                    <button id="searchBtn2" class="btn btn-primary btn-block" onclick="search()">비밀번호 찾기</button>
                </div>
            </form>

            <div class="text-center">
                <a class="d-block small mt-3" href="/login/signUp">회원가입</a>
                <a class="d-block small" href="/login/login">로그인</a>
            </div>
        </div>
    </div>
</div>


<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<script>
    $(document).on('click','#findId',function(){
        var NAME = $('#NAME').val()
        var PHONE = $('#PHONE').val()
        var postData = {'NAME' : NAME , 'PHONE' : PHONE};
        $.ajax({
            url:'/login/findingId',
            type:'POST',
            data: postData,
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            async:false,
            dataType : "json",
            success:function(data){
                alert("회원님의 정보로 등록된 이메일은 : "+data.ID.substring(1,data.ID.length-1)+" 입니다.");
            },
            error: function (XMLHttpRequest, textStatus, errorThrown){
                alert('정보를 다시 입력해주시길 바랍니다.');
            }
        });
    });
</script>


<title> 비밀번호 찾기</title>
<script type="text/javascript">
    function search(){
        if((pwsearch.ID.value!=null)&&(pwsearch.MAIL.value!=null)){
            pwsearch.submit();
        }else if(pwsearch.ID.value==null) {
            alert("아이디를 입력하세요.")
        }else if(pwsearch.MAIL.value==null) {
            alert("이메일주소를 입력하세요.")
        }
    }function showMsg(m){
        if(m==0){
        }else if(m==1){
            alert("입력하신 정보가 등록하신 정보와 다릅니다.");
            window.open("/login/userSearch","_self", "" );
        }
    }function login(){
        window.open("/login/sessionLogin","_self","");
    }
</script>


</body>
</html>