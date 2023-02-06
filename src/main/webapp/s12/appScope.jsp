<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jeep
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Attribute in application scope</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/jeep/css/simple.css">
</head>
<body>
    <h1>Web app started at ${applicationScope.start}</h1>
    <nav>
        Back <a href="/jeep/index.html">home</a>
    </nav>
</body>
</html>