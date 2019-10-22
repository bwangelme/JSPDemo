<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Records" %>
<%@ page import="model.Record" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>打卡记录</title>
    <link href="https://cdn.bootcss.com/mobi.css/3.1.1/mobi.min.css" rel="stylesheet">
</head>
<body>
    <% if (request.getMethod().equals("POST")) { %>
        <% String name = request.getParameter("name"); %>
        <% if (name != null && !name.equals("")) { %>
        <% Records records = new Records(request.getSession()); %>
        <% records.add(name); %>
        <% response.sendRedirect("/record.jsp"); %>
        <% } %>
    <% } %>
    <div class="flex-center">
        <div class="container">
            <h1>打卡记录</h1>
            <div class="flex-center">
                <div class="unit-2-4">
                    <form class="form" action="record.jsp" method="post">
                        <input type="text" name="name" placeholder="请输入打卡人的名称" required="required">
                        <input type="submit" value="打卡" class="btn">
                    </form>
                </div>
            </div>
            <div class="flex-center">
                <table class="table">
                    <thead>
                        <tr>
                            <th>时间</th>
                            <th>名称</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% Records records = new Records(request.getSession()); %>
                        <% ArrayList<Record> rs = records.all(); %>
                        <% SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss"); %>
                        <% for (int i = 0; i < rs.size(); i++) { %>
                            <tr>
                                <td><%= ft.format(rs.get(i).time)%></td>
                                <td><%= rs.get(i).name%></td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
