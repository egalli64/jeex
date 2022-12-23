<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jeep
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>JSP &amp; attributes</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jeep/css/simple.css">
</head>

<body>
    <h1>Hello!</h1>
    <%@include file="backHome.html"%>
    <%-- JSP-EL to access the set attribute in the request --%>
    <p>The user name contains these letters: ${set}</p>
</body>

</html>