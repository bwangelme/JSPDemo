<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/23
  Time: 9:52 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    String loginname = null;
    if (session.getAttribute("name") != null)
        loginname = session.getAttribute("name").toString();
%>
欢迎你！<%=loginname %><br>
请选择需要购买的水果：
<form action="test5-list.jsp" method="post">
    <input type="checkbox" name="choice" value="苹果"/>苹果<br>
    <input type="checkbox" name="choice" value="香蕉"/>香蕉<br>
    <input type="checkbox" name="choice" value="草莓"/>草莓<br>
    <input type="checkbox" name="choice" value="葡萄"/>葡萄<br>
    <input type="submit" value="加入购物车"/>
</form>
<%
    request.setCharacterEncoding("UTF-8");
    String[] listName = request.getParameterValues("choice");
    if (listName != null) {
        for (int i = 0; i < listName.length; i++)
            session.setAttribute(String.valueOf(i), listName[i]);
    }
%><a href="test5-choice.jsp">查看购物车</a>
</body>
</html>
