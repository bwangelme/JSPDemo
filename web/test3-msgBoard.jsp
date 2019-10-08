<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/27
  Time: 8:56 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

<form action="test3-save.jsp" name="msgsubmit" method="post">
    <p>请输入姓名：<input type="text" name="name">
    <p>请输入标题：<input type="text" name="msgtitle">
    <p>请输入留言：<TextArea name="msg" rows="10" cols=36></TextArea>
    <p><input type="submit" value="提交留言" name="submit">
</form>

<form action="test3-show.jsp" name="show" method="post">
    <input type="submit" value="查看留言板" name="submit">
</form>

</body>
</html>
