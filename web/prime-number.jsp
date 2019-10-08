<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/10/8
  Time: 9:43 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>打印100以内的素数</title>
</head>
<body>
<%
    ArrayList<ArrayList<Integer>> result = (ArrayList<ArrayList<Integer>>) request.getAttribute("primeNumbers");
%>
<table>
    <tbody>
        <% for (ArrayList<Integer> row : result) { %>
            <tr>
            <% for (Integer num : row) { %>
                <td><%=num%></td>
            <% } %>
            </tr>
        <% } %>
    </tbody>
</table>
</body>
</html>
