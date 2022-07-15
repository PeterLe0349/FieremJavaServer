<%--
  Created by IntelliJ IDEA.
  User: fiermac
  Date: 7/15/22
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% if(request.getAttribute("uname") == null || request.getAttribute("uname").equals("")){
    request.setAttribute("uname", "First Time Visiter");
}
%>
<%! int counter = 0; %>
<% counter++; %>
<% if(request.getAttribute("uname").equals("reset")){
    counter = 0;
}%>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>Test reroute</title>
</head>
<body>
<h1 class="text-center">Test Rerouting: <%= counter %></h1>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<form action="/test" method="post">
    <label for="name">Name: </label>
    <input type="text" id="name" name="name" placeholder="what's your name">
    <button type="submit">click</button>
</form>
<h4>Hello <%= request.getAttribute("uname")%></h4>
<div class="container">
    <div class="row">
        <div class="col-12" id="displayMain"></div>
    </div>
</div>



<jsp:include page="/WEB-INF/partials/bottom.jsp"/>
<script src="../../js/movies.js"></script>
</body>
</html>
