<%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 2022/5/29
  Time: 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
out.print(session.getAttribute("order").toString());
%>
</body>
</html>
