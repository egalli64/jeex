<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jeep
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.time.LocalTime"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jeep/css/simple.css">
<title>Hello JSP</title>
</head>

<body>
    <!-- a HTML comment -->
    <nav>
        <a href="/jeep/index.html">Home</a>
    </nav>
    <h1>
        <%
        out.print(LocalTime.now());
        %>
    </h1>
    <%-- a JSP comment --%>
</body>

</html>