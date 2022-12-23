<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jeep
 --%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Error page</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" href="/jeep/css/simple.css">
<link rel="stylesheet" href="s09.css">
</head>
<body>
    <h1>Internal error</h1>
    <nav>
        <a href="/jeep/index.html">Home</a>
    </nav>

    <div id="warn">
        <p>Exception: ${pageContext.exception["class"]}</p>
        <p>Message: ${pageContext.exception["message"]}</p>
    </div>

    <p>For more details, ask ${initParam.admin} to show you the Web Server log</p>
</body>
</html>