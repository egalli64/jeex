<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>EL Implicit Objects</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/jeep/css/simple.css">
</head>
<body>
    <h1>EL Implicit Objects</h1>
    <nav>
        Back <a href="/jeep/index.html">home</a>
    </nav>

    <h2>The page context</h2>
    <p>Method used for the request: ${pageContext.request.method}</p>

    <h2>Accessing parameters</h2>
    <p>Name: ${param.name}</p>
    <p>First color: ${paramValues.colors[0] ne null ? paramValues.colors[0] : "N/A"}</p>
    <p>Second color: ${paramValues.colors[1] ne null ? paramValues.colors[1] : "N/A"}</p>
    <p>Third color: ${paramValues.colors[2] ne null ? paramValues.colors[2] : "N/A"}</p>
    
    <h2>Accessing attribute straight from the request scope</h2>
    <p>Example: ${requestScope.example}</p>
</body>
</html>