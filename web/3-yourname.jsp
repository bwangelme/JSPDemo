<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/16
  Time: 8:38 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  method = "post" action = "3-inputYourName.jsp">
    请输入姓名：<input name = "name" type="text" ><br>
    请输入学校：<input name = "sname" type="text" ><br>
    <input name = "enter" type="submit" value = "确定">
    <input id = "cancel" type="reset" value = "取消">
    <a href="3-inputYourName.jsp" >重新输入</a>
</form>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String sname = request.getParameter("sname");
    if ((sname!= "")&&(name!= "")){
%>
你好，来自<%=sname %>的<%=name %>
<%
    }
%>
</body>
</body>
</html>
