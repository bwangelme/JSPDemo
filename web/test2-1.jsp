<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
分别计算12与3的加减乘除运算：<br>
<%
    String[] ops = {"+","-","*","/"};
    for (int i=0;i<ops.length;i++) {
        String opa = URLEncoder.encode(ops[i], "UTF-8");
%>
<a href="test2-2.jsp?op=<%=opa%>"><%=ops[i]%></a>
<br>
<%
    }
%>
</body>
</html>
