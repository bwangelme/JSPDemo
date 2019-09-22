<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name= request.getParameter("name"), collegeName= request.getParameter("collegeName");
    int length=0;
    if(name != null)
        length = name.length();
%>
<form name="inputPersonInfo" method="get" action="5-yourname.jsp">
    请输入姓名：<input name = "name" type="text" ><br>
    请输入学校：<input name = "collegeName" type="text" > <br>
    <input id = "enter" type="submit" value = "确定">
    <a href="5-yourname.jsp">重新输入</a>
</form>
<%if  ((name != null) && (!name.isEmpty())){%>
你好，来自<%=collegeName %>的<%=name %>，你的名字好长啊，有<%=length %>个字！
<%} %>
</body>
</html>