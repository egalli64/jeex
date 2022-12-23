<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jeep
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accessing to a context parameter</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jeep/css/simple.css">
</head>
<body>
    <h1>Accessing to a context parameter</h1>
    <nav>
        <a href="/jeep/index.html">Home</a>
    </nav>
    <p>The administrator name is ${initParam.admin}!</p>
</body>
</html>