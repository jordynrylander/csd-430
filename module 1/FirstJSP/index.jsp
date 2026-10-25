<%--
Jordyn Rylander
10/25/2026
Module 1.3 
Displaying a functional clue using JSP. 
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Murder Mystery Simulator</title>
</head>
<body>
    <h1>Murder Mystery Simulator</h1>

    <%
        String clue = "There was no forced entry.";
    %>

    <p>First clue: <%= clue %></p>
</body>
</html>