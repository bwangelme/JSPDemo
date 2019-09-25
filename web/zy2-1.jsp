<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/22
  Time: 9:49 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<FORM action="zy2-1.jsp" method="post">
    <TABLE border="1">
        <CAPTION>计算教师工资</CAPTION>
        <TR>
            <TH>姓名</TH>
            <TD><INPUT type="text" name="teachername"/></TD>
        </TR>
        <TR>
            <TH>课时</TH>
            <TD><INPUT type="text" name="hours"/></TD>
        </TR>
        <TR>
            <TH>单位课时费</TH>
            <TD><INPUT type="text" name="per"/></TD>
        </TR>
        <TR>
            <TH>&nbsp;</TH>
            <TD>
                <input name="" type="submit" value="提交"/>
                <a href="zy2-2.jsp">查看工资</a>
            </TD>
        </TR>
    </TABLE>
</FORM>
<%
    if ((request.getParameter("teachername") != null)) {
        session.setAttribute("teachername", (request.getParameter("teachername")));
        session.setAttribute("hours", (request.getParameter("hours")));
        session.setAttribute("per", (request.getParameter("per")));
        session.setAttribute("test", 233);
    }
%>
</body>
</html>
