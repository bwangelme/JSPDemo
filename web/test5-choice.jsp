<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/9/23
  Time: 9:53 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.regex.*" %>
<%!
    public boolean isNumeric(String str) {
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(str);
        return isNum.matches();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Insert title here</title>
</head>
<body>
<%
    Enumeration<String> enumlist = session.getAttributeNames();
%>
购物车中的宝贝为：<p>
    <%
	while (enumlist.hasMoreElements()){
		String key = enumlist.nextElement();
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(key);
		if(isNum.matches()) {
            String value = session.getAttribute(key).toString();
            out.println(value);
		}
	}
	%>
<p>
    <a href="test5-list.jsp">返回重新选择</a>
</body>
</html>
