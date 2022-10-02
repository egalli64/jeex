<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Expression Language</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/jeep/css/simple.css">
</head>
<body>
    <h1>Expression Language</h1>
    <nav>
        Back <a href="/jeep/index.html">home</a>
    </nav>

    <h2>Accessing a JavaBean</h2>
    <p>The bean implicitly converted to string: ${doc}</p>
    <p>Its title is ${doc.title}</p>
    <p>User is ${doc.user.name} and has id ${doc.user["id"]}</p>

    <h2>Accessing a collection</h2>
    <p>The collection implicitly converted to string: ${names}</p>
    <p>First element is ${names[0]}</p>

    <h2>Evaluating values</h2>
    <p>Is the right user? ${doc.user.id eq 42 ? "Yes" : "No"}</p>
    <p>Is the collection empty? ${empty names}</p>
</body>
</html>