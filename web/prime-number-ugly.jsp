<%--
  Created by IntelliJ IDEA.
  User: michaeltsui
  Date: 2019/10/8
  Time: 10:38 下午
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
        int i, j, sum = 0, prevPrimeNum = 0;
        for (i = 1; i < 100; i++) {
            for (j = 2; j < i; j++) {//内层循环遍历查询i的整除数
                if (i % j == 0) {//判断当前i是否可以整除j值
                    break;//整除跳出循环
                }
            }
            if (j == i) {//如果整除的数为自身则为质数
                sum += i;//质数相加
    %>
                <% if (i / 10 - prevPrimeNum / 10 > 0) {%>
                    <br>
                <% } %>
                <%=i%>
                <% prevPrimeNum = i; %>
            <% } %>
    <% } %>
    <br>
1-100之间的素数之和为： <%=sum%>
</body>
</html>
