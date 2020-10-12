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
<%@include file="common/header.jsp"%>
<h1>网页主体</h1>
<%@include file="common/footer.jsp"%>

<hr>

<%-- jsp 标签体--%>
<jsp:include page="/common/header.jsp"/>
<jsp:include page="/common/footer.jsp"/>
</body>
</html>
