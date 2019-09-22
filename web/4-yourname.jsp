<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<form  method = "post" action = "4-yourname.jsp">
    请输入姓名：<input name = "name" type="text" ><br>
    请输入学校：<input name = "sname" type="text" ><br>
    <input name = "enter" type="submit" value = "确定">
    <input id = "cancel" type="reset" value = "取消">
    <a href="4-yourname.jsp" >重新输入</a>
</form>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String sname = request.getParameter("sname");
    if ((sname != null) && (name != null)){
%>
你好，来自<%=sname %>的<%=name %>
<%
    }
%>
</body>
</html>
