<%-- 
    Introduction to Jakarta Enterprise Edition - Servlet
    https://github.com/egalli64/jees
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Servlet context</title>
<%@include file="/include/link.html"%>
</head>
<body>
    <h1>Web app started ${delta} seconds ago</h1>
    <p>The start time was ${applicationScope.start}</p>
    <%@include file="/m2/include/navHome.html"%>
</body>
</html>