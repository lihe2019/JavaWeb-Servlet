<html>
<body>
<h2>Hello World!</h2>

<%--这里提交的路径，需要找到项目的路径--%>

<form action="${pageContext.request.contextPath}/request" method="get">
    用户名：<input type="text" name="username">
    密码： <input type="password" name="password">
    <input type="submit">
</form>
</body>
</html>
