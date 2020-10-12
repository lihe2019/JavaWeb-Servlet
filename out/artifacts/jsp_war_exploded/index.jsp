<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <%--  JSP表达式
   用来将程序的输出输出到客户端
     <%= 变量或表达式%>
   --%>
  <%= new java.util.Date()%>

  <hr>
  <%--  JSP脚本片段

 --%>
  <%
    int sum = 0;
    for (int i = 1; i < 100; i++) {
      sum += i;
    }
    out.println("<h1>Sum = " + sum + "</h1>");
  %>


  <%
    int x = 10;
    out.println(x);
  %>
  <p>这是一个jsp文档</p>
  <%
    int y = 2;
    out.println(y);
  %>

  <hr>

  <%!
    static {
      System.out.println("Loading Servlet!");
    }
    private int globalVar = 0;
    public void lihe(){
      System.out.println("进入了方法lihe");
    }
  %>

<%--  在代码中嵌入html元素--%>
  <%
    for (int i = 0; i < 5; i++) {
  %>
<%--  EL表达式--%>
  <h1>Hello world <%= i%> </h1>
  <%
    }
  %>



  </body>
</html>
