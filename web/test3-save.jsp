<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/27
  Time: 8:54 下午
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="dao.Message" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String msgtitle = request.getParameter("msgtitle");
    String msg = request.getParameter("msg");
    Message m = new Message();
    m.setMsg(msg);
    m.setMsgtitle(msgtitle);
    m.setName(name);
    m.setTime(new Date().toString());
    ArrayList<Message> list = null;
    if (application.getAttribute("msg") == null)
        list = new ArrayList<Message>();
    else
        list = (ArrayList<Message>) (application.getAttribute("msg"));
    list.add(m);
    application.setAttribute("msg", list);
    response.sendRedirect("test3-show.jsp");
%>
<br>
<a href="test3-msgBoard.jsp">继续留言</a>
<br>
<a href="test3-show.jsp">查看留言板</a>
</body>
</html>
