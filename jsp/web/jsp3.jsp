<%--
  Created by IntelliJ IDEA.
  User: 91156
  Date: 2020/10/12
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Title</title>
</head>
<body>

    <%-- @include 会将两个页面合二为一 --%>
    <%@include file="common/header.jsp"%>
    <h1>网页主体</h1>
    <%@include file="common/footer.jsp"%>

    <hr>

    <%-- jsp 标签体  拼接页面，本质上还是多个页面 但是要注意作用域 比如变量作用域--%>
    <jsp:include page="/common/header.jsp"/>
    <jsp:include page="/common/footer.jsp"/>


</body>
</html>
