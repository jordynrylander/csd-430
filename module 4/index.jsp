<%--
Jordyn Rylander
11/14/2026
Module 4.2
Retrieve character informationf rom the JavaBean and display it in an HTML table.
--%>


<%@ page contentType="text/html; charset=UTF-8"
    import="java.util.ArrayList, housemaid.HousemaidCharacterBean" %>

<%
    // Create a list to hold the character records.
    ArrayList<HousemaidCharacterBean> characters = new ArrayList<>();

    // Store Nina Winchester's information in a bean.
    HousemaidCharacterBean nina = new HousemaidCharacterBean();
    nina.setCategory("Winchester family");
    nina.setCharacterName("Nina Winchester");
    nina.setDescription("Millie's employer");
    nina.setBookTitle("The Housemaid");
    nina.setAuthorName("Freida McFadden");
    characters.add(nina);

    // Store Andrew Winchester's information in a bean.
    HousemaidCharacterBean andrew = new HousemaidCharacterBean();
    andrew.setCategory("Winchester family");
    andrew.setCharacterName("Andrew Winchester");
    andrew.setDescription("Nina's husband");
    andrew.setBookTitle("The Housemaid");
    andrew.setAuthorName("Freida McFadden");
    characters.add(andrew);

    // Store Cecelia Winchester's information in a bean.
    HousemaidCharacterBean cecelia = new HousemaidCharacterBean();
    cecelia.setCategory("Winchester family");
    cecelia.setCharacterName("Cecelia Winchester");
    cecelia.setDescription("Nina and Andrew's daughter");
    cecelia.setBookTitle("The Housemaid");
    cecelia.setAuthorName("Freida McFadden");
    characters.add(cecelia);
    
    // Store Millie Calloway's information in a bean.
    HousemaidCharacterBean millie = new HousemaidCharacterBean();
    millie.setCategory("Household staff");
    millie.setCharacterName("Millie Calloway");
    millie.setDescription("The live-in housemaid");
    millie.setBookTitle("The Housemaid");
    millie.setAuthorName("Freida McFadden");
    characters.add(millie);

    // Store Enzo Accardi's information in a bean.
    HousemaidCharacterBean enzo = new HousemaidCharacterBean();
    enzo.setCategory("Household staff");
    enzo.setCharacterName("Enzo Accardi");
    enzo.setDescription("The groundskeeper");
    enzo.setBookTitle("The Housemaid");
    enzo.setAuthorName("Freida McFadden");
    characters.add(enzo);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>The Housemaid Character's</title>
</head>
<body>
    <h1>The Housemaid Character's</h1>

    <p>
        This page displays five characters from
        <em>The Housemaid</em> and what their roles are.
    </p>

    <h2>Field Descriptions</h2>
    <ul>
        <li><strong>Category:</strong> The character's group in the household.</li>
        <li><strong>Character:</strong> The character's name.</li>
        <li><strong>Description:</strong> The character's role.</li>
        <li><strong>Book:</strong> The book the character appears in.</li>
        <li><strong>Author:</strong> The book's author.</li>
    </ul>

    <h2>Record Description</h2>
    <p>Each row represents one character from the book.</p>

    <table border="1" cellpadding="6">
        <caption>Housemaid Character Records</caption>
        <thead>
            <tr>
                <th>Category</th>
                <th>Character</th>
                <th>Description</th>
                <th>Book</th>
                <th>Author</th>
            </tr>
        </thead>
        <tbody>
            <%
                for (HousemaidCharacterBean character : characters) {
            %>
            <tr>
                <td><%= character.getCategory() %></td>
                <td><%= character.getCharacterName() %></td>
                <td><%= character.getDescription() %></td>
                <td><%= character.getBookTitle() %></td>
                <td><%= character.getAuthorName() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>