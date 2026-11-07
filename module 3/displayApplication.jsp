<%--
Jordyn Rylander
10/31/2026
Module 2.2
Display the answers that are on the job application after submitted. 
--%>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");

    String applicantName = request.getParameter("applicantName");
    String emailAddress = request.getParameter("emailAddress");
    String phoneNumber = request.getParameter("phoneNumber");
    String position = request.getParameter("position");
    String yearsExperience = request.getParameter("yearsExperience");
    String schedule = request.getParameter("schedule");
    String relevantSkills = request.getParameter("relevantSkills");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submitted Job Application</title>
</head>
<body>
    <%
    // Read the values submitted by the application form.
%>
    <h1>Submitted Job Application</h1>

    <p>
        This page displays the information submitted through the job application form.
    </p>
    <p>
        <strong>Record description:</strong>
        One record represents one submitted job application.
    </p>

    <h2>Application Fields and Responses</h2>
    <table border="1">
        <caption>Applicant information</caption>
        <thead>
            <tr>
                <th scope="col">Field</th>
                <th scope="col">Field Description</th>
                <th scope="col">Applicant Response</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Full name</td>
                <td>The applicant's name</td>
                <td><%= applicantName %></td>
            </tr>
            <tr>
                <td>Email address</td>
                <td>How the employer can contact the applicant by email</td>
                <td><%= emailAddress %></td>
            </tr>
            <tr>
                <td>Phone number</td>
                <td>How the employer can contact the applicant by phone</td>
                <td><%= phoneNumber %></td>
            </tr>
            <tr>
                <td>Position</td>
                <td>The job the applicant selected</td>
                <td><%= position %></td>
            </tr>
            <tr>
                <td>Years of experience</td>
                <td>The applicant's related work experience</td>
                <td><%= yearsExperience %></td>
            </tr>
            <tr>
                <td>Preferred schedule</td>
                <td>Whether the applicant prefers full-time or part-time</td>
                <td><%= schedule %></td>
            </tr>
            <tr>
                <td>Relevant skills</td>
                <td>Skills the applicant entered for the position</td>
                <td><%= relevantSkills %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>