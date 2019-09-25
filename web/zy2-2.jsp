<%@ page import="java.nio.file.Path" %>
<%@ page import="java.nio.file.FileSystems" %>
<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/22
  Time: 9:47 下午
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
    String name = null;
    Path path = FileSystems.getDefault().getPath(".").toAbsolutePath();
    int salary = 0;
    int test = -1;
    if (session.getAttribute("teachername") != null) {
        name = session.getAttribute("teachername").toString();
        String i, j;
        test = (int) session.getAttribute("test");
        j = session.getAttribute("per").toString();
        i = session.getAttribute("hours").toString();
        Integer per = Integer.parseInt(j);
        Integer hours = Integer.parseInt(i);
        salary = 4000 + per * hours;


//        int i, j = 0;
//        j = (int) session.getAttribute("per");
//        i = (int) session.getAttribute("hours");
//        salary = 4000 + j * i;
    }
%>
你好！<%=name %>老师，您的本月工资为：<%=salary %>
<%= test %>
当前路径 <%= path %>
</body>
</html>
