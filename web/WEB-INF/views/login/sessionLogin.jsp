<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String test = (String)request.getAttribute("testtest");
    String id = (String)request.getAttribute("id");
    String PWD = (String)request.getAttribute("PWD");
    String result = (String) request.getAttribute("result");
    if(test.equals("success")){
        session.setAttribute("MEMBERID", id);
        session.setAttribute("MEMBERPWD",PWD);
%>

<script>
    window.location.href = "/main/mainPage?id=${id}";
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