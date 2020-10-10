<%--
  Created by IntelliJ IDEA.
  User: SuperMan
  Date: 2020/10/10
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<h1>登录</h1>
<div style="text-align: center">
<%--    这里表单表示的意思：以post方式体骄傲表单，提交到我们的login请求--%>
    <form action="${pageContext.request.contextPath}/login" method="post">
        用户名：<input type="text" name="username"> <br>
        密码：<input type="password" name="password"> <br>
        爱好：
        <input type="checkbox" name="hobbies" value="女孩"> 女孩
        <input type="checkbox" name="hobbies" value="code"> code
        <input type="checkbox" name="hobbies" value="电影"> 电影
        <input type="checkbox" name="hobbies" value="游戏"> 游戏
        <br>
        <input type="submit">
    </form>
</div>
</body>
</html>
