<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/22
  Time: 9:06 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.io.*,java.util.*" %>

<html>
<head>
    <title>Session</title>
</head>
<body>
<%
    // 获取session创建时间
    Date creationTime = new Date(session.getCreationTime());
    // 获取最后访问页面的时间
    Date lastAccessedTime = new Date(session.getLastAccessedTime());

    String title = "首次访问";
    Integer Count = 0;
    String userID = "abc";

    // 检测网页是否有新的访问用户
    if (session.isNew()) {
        session.setAttribute("userIDKey", userID);
        session.setAttribute("CountKey", Count);
    } else {
        Count = (Integer) session.getAttribute("CountKey");
        userID = (String) session.getAttribute("userIDKey");

        if (Count == null || userID == null) {
            title = "首次访问";
            Count = 0;
            userID = "abc";
            session.setAttribute("userIDKey", userID);
            session.setAttribute("CountKey", Count);
        } else {
            title = "再次访问";
            ++Count;
            session.setAttribute("CountKey", Count);
        }
    }
%>

<table border="1" align="center">
    <caption>Session跟踪信息列表</caption>
    <tr bgcolor="green">
        <th>Session 信息</th>
        <th>值</th>
    </tr>
    <tr>
        <td>id</td>
        <td><%= session.getId() %>
        </td>
    </tr>
    <tr>
    <tr>
        <td>是否首次访问</td>
        <td><%= title %>
        </td>
    </tr>
    <td>创建时间</td>
    <td><%= creationTime %>
    </td>
    </tr>
    <tr>
        <td>最后访问时间</td>
        <td><%= lastAccessedTime %>
        </td>
    </tr>
    <tr>
        <td>用户 ID</td>
        <td><%= userID %>
        </td>
    </tr>
    <tr>
        <td>访问次数</td>
        <td><%= Count %>
        </td>
    </tr>
</table>
</body>
</html>
