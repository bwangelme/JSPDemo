<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/23
  Time: 9:51 下午
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<form action="test5-login.jsp" method="post">
    请输入姓名:<input type="text" name = "name"><br>
    请输入密码:<input type = "password" name = "pass" value=><br>
    <input type = "submit" value ="登录" >
</form>
<%if ((request.getParameter("name")!=null)&&(request.getParameter("pass")!=null)) {
    session.setAttribute("name", (request.getParameter("name")));
    session.setAttribute("pass", (request.getParameter("pass")));
%>
<jsp:forward page ="test5-list.jsp"></jsp:forward>
<%} %>
</body>
</html>
