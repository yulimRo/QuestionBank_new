<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String test = (String)request.getAttribute("testtest");
    String id = (String) request.getAttribute("id");
    String result = (String) request.getAttribute("result");

    if(test.equals("success")){
        session.setAttribute("MEMBERID", id);
%>

<script>
    window.location.href = "/main/mainPage";
</script>


<%
    }
    if(test.equals("fail")){%>

<script>
    window.alert("로그인에 실패하였습니다.");
    history.go(-1);
</script>

        <%

    }
%>
