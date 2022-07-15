<%--
  Created by IntelliJ IDEA.
  User: fiermac
  Date: 7/15/22
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% if(request.getAttribute("uname") == null){
    request.setAttribute("uname", "First Time Visiter");
}
%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>Test reroute</title>
</head>
<body>
<h1 class="text-center">Test Rerouting</h1>
<form action="/test" method="post">
    <label for="name">Name: </label>
    <input type="text" id="name" name="name" placeholder="what's your name">
    <button type="submit">click</button>
</form>

<h4>Hello <%= request.getAttribute("uname")%></h4>



<jsp:include page="/WEB-INF/partials/bottom.jsp"/>
</body>
</html>
