
<%@ page import="java.util.List" %>
<jsp:useBean id="books" class="library.BookBean" scope="page" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Novel Diary - Book Selection</title>
</head>
<body>

    <h1>My Novel Diary</h1>
    <h2>Select a Book</h2>

    <p>Choose a book to view its writing information.</p>

    <form action="displayBook.jsp" method="get">

        <label for="bookId">Book:</label>

        <select name="bookId" id="bookId">

            <%
                // Retrieve books from the database
                List<String[]> bookList = books.getBooks();

                // Loop through each book
                for (String[] book : bookList) {
                    String id = book[0];
                    String title = book[1];
            %>

            <option value="<%= id %>"><%= title %></option>

            <%
                }
            %>

        </select>

        <button type="submit">View Book</button>

    </form>

</body>
</html>
