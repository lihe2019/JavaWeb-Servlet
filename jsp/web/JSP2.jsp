<%--
  Created by IntelliJ IDEA.
  User: 91156
  Date: 2020/10/12
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="error/500.jsp" %>

<%-- 显示声明这是一个错误页面 勇于404等--%>
<%@page isErrorPage="true" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%-- 定制错误页面 --%>

<%
    int x = 1/0;
%>

</body>
</html>
