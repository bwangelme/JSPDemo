<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/10/7
  Time: 4:01 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    if (session.getAttribute("teachername") != null && session.getAttribute("hours") != null && session.getAttribute("per") != null) {
        String a = session.getAttribute("teachername").toString();
        int b = Integer.parseInt(session.getAttribute("hours").toString());
        int c = Integer.parseInt(session.getAttribute("per").toString());
        int d = b * c;
%>
    你好!<%=a%>老师，你的本月工资为:<%=d%>
<%} else {%>
    您还未输入
<%}%>
