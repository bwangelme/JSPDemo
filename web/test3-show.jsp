<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/27
  Time: 8:57 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.Message" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    ArrayList<Message> list=(ArrayList<Message>)(application.getAttribute("msg"));
%>
<table border="1" >
    <tr>
        <th>序号</th>
        <th>姓名</th>
        <th>标题内容</th>
        <th>留言内容</th>
        <th>留言时间</th>
    </tr>
    <%
        for(int i=0;i<list.size();i++){
    %>
    <tr>
        <td>第<%=i+1 %>个<br></td>
        <td><%=((Message)(list.get(i))).getName() %></td>
        <td><%=((Message)(list.get(i))).getMsgtitle() %></td>
        <td><%=((Message)(list.get(i))).getMsg() %></td>
        <td><%=((Message)(list.get(i))).getTime() %></td>
    </tr>
    <% }%>
</table>
<a href="test3-msgBoard.jsp">继续留言</a>

</body>
</html>
