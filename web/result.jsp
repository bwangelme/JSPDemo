<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/7
  Time: 10:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>啤酒推荐</title>
</head>
<body>
<h1 align="center">啤酒推荐</h1>
<%
    List styles = (List) request.getAttribute("styles");
    if (styles != null) {
        Iterator it = styles.iterator();
        while (it.hasNext()) {
            out.print("<br>try: " + it.next());
        }
    }

    String pageName = page.toString();
    out.print(pageName);
%>
</body>
</html>
