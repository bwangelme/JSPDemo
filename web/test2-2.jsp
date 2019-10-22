<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>计算结果</title>
</head>
<body>
<%
    String op = request.getParameter("op");%>
<%= op %>
<% if (op.equals("+")) {
%>
12与3的和为：<%=12 + 3 %>
<% }
    if (op.equals("-")) {
%>
12与3的差为：<%=12 - 3 %>
<%
    }
    if (op.equals("*")) {
%>
12与3的积为：<%=12 * 3 %>
<% }
    if (op.equals("/")) {
%>
12与3的商为：<%=12 / 3 %>
<%} %>
</body>
</html>
