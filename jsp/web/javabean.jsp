<%--
  Created by IntelliJ IDEA.
  User: 91156
  Date: 2020/10/12
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
//    Person person =new Person();
//    person.setAddress("唐山");
//    person.setAddress("");
//    person.setAddress("");
//    person.setAddress("");
%>
<%-- 和上面一样的效果 --%>
<jsp:useBean id="person" class="con.lihe.pojo.Person" scope="page"/>


<%--<%=person.getAddress();%>--%>

<jsp:setProperty name="person" property="address" value="唐山"/>
<jsp:setProperty name="person" property="id" value="1"/>
<jsp:setProperty name="person" property="name" value="lihe1"/>
<jsp:setProperty name="person" property="age" value="3"/>
姓名：<jsp:getProperty name="person" property="name"/>

</body>
</html>
