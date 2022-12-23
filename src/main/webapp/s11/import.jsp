<%-- 
    Introduction to Jakarta Enterprise Edition - JSP
    https://github.com/egalli64/jeep
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="IT">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <nav>
        Back <a href="/jeep/index.html">home</a>
    </nav>

    <h1>Import a HTML fragment by JSTL</h1>    
    <c:import url="fragment/accent.html" charEncoding="UTF-8" />

    <h2>Same fragment by include directive</h2>    
    <%@include file="fragment/accent.html"%>
</body>
</html>