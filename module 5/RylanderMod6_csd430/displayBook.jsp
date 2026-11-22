
<%@ page import="java.util.Map" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="books" class="library.BookBean" scope="page" />

<%
    // Get the book ID selected from the dropdown
    String selectedId = request.getParameter("bookId");
    Map<String, Object> book = null;
    String errorMessage = null;

    try {
        int bookId = Integer.parseInt(selectedId);
        book = books.getBookById(bookId);
    } catch (NumberFormatException e) {
        errorMessage = "Please select a valid book.";
    } catch (SQLException e) {
        errorMessage = "Unable to retrieve the book.";
        application.log("Database error", e);
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Novel Diary</title>
</head>
<body>

    <h1>Keep track of your writing process!</h1>
    <h2>Book Details</h2>

    <p>Writing information for the selected book.</p>

<h2>About the Database</h2>
<p>
    My Novel Diary stores information about books that someone may want to keep track of,
    including their titles, authors, genres, and
    writing progress.
</p>

<h2>Field Descriptions</h2>
<ul>
    <li>Book ID: A unique number for each book.</li>
    <li>Title: Book Title.</li>
    <li>Author: The person writing the book.</li>
    <li>Genre: The type of the book.</li>
    <li>Writing Status: The book's current progress.</li>
    <li>Current Word Count: Words written so far.</li>
    <li>Target Word Count: The word goal.</li>
</ul>

<h2>Record Description</h2>
<p>
    Each record represents one book under an author and its
    current writing progress.
</p>

    <% if (errorMessage != null) { %>

        <p><%= errorMessage %></p>

    <% } else if (book != null) { %>

        <table border="1">
            <thead>
                <tr>
                    <th>Book ID</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Genre</th>
                    <th>Writing Status</th>
                    <th>Current Word Count</th>
                    <th>Target Word Count</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= book.get("book_id") %></td>
                    <td><%= book.get("title") %></td>
                    <td><%= book.get("author_name") %></td>
                    <td><%= book.get("genre") %></td>
                    <td><%= book.get("writing_status") %></td>
                    <td><%= book.get("current_word_count") %></td>
                    <td><%= book.get("target_word_count") %></td>
                </tr>
            </tbody>
        </table>

    <% } else { %>

        <p>No book was found.</p>

    <% } %>

    <p>
        <a href="selectBook.jsp">Choose Another Book</a>
    </p>

</body>
</html>

