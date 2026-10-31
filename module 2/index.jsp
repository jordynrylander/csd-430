<%--
Jordyn Rylander
10/31/2026
Module 2.2
Display categorized character information from The Housemaid
--%>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<%
    // Each record stores a category, character name, and short description.
    String[][] characterRecords = {
        {"Winchester family", "Nina Winchester", "Millie's employer"},
        {"Winchester family", "Andrew Winchester", "Nina's husband"},
        {"Winchester family", "Cecelia Winchester", "Nina and Andrew's daughter"},
        {"Household staff", "Millie Calloway", "The live-in housemaid"},
        {"Household staff", "Enzo Accardi", "The groundskeeper"}
    };
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>The Housemaid Character Guide</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>The Housemaid Character Guide</h1>

<p>
    This page organizes five characters from Freida McFadden's
    <em>The Housemaid</em> by their connection to the Winchester household.
</p>

<h2>Field Descriptions</h2>
<dl>
    <dt>Category</dt>
    <dd>The character's group in the household.</dd>

    <dt>Character</dt>
    <dd>The character's name.</dd>

    <dt>Description</dt>
    <dd>A short description of the character's role.</dd>
</dl>

<h2>Record Description</h2>
<p>Each record represents one character from the book.</p>

<h2>Winchester Family</h2>
<table>
    <thead>
        <tr>
            <th>Category</th>
            <th>Character</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (String[] record : characterRecords) {
                if (record[0].equals("Winchester family")) {
        %>
        <tr>
            <td><%= record[0] %></td>
            <td><%= record[1] %></td>
            <td><%= record[2] %></td>
        </tr>
        <%
                }
            }
        %>
    </tbody>
</table>

<h2>Household Staff</h2>
<table>
    <thead>
        <tr>
            <th>Category</th>
            <th>Character</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (String[] record : characterRecords) {
                if (record[0].equals("Household staff")) {
        %>
        <tr>
            <td><%= record[0] %></td>
            <td><%= record[1] %></td>
            <td><%= record[2] %></td>
        </tr>
        <%
                }
            }
        %>
    </tbody>
</table>
</body>
</html>