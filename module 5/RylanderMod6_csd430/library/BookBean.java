package library;

import java.io.Serializable;
import java.sql.*;

public class BookBean implements Serializable {

    // Allows Java to recognize this as a JavaBean
    private static final long serialVersionUID = 1L;

    // Database connection information
    private String url = "jdbc:mysql://localhost:3306/CSD430";
    private String username = "student1";
    private String password = "pass";

    // Constructor
    public BookBean() {
    }


    // Connects the JavaBean to the MySQL database
    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }


    // Retrieves one selected book from the database
    public java.util.Map<String, Object> getBookById(int bookId)
            throws SQLException {

        String sql = "SELECT * FROM jordyn_librarydata WHERE book_id = ?";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, bookId);

            try (ResultSet rs = statement.executeQuery()) {

                if (rs.next()) {
                    java.util.Map<String, Object> book =
                            new java.util.HashMap<>();

                    book.put("book_id", rs.getInt("book_id"));
                    book.put("title", rs.getString("title"));
                    book.put("author_name", rs.getString("author_name"));
                    book.put("genre", rs.getString("genre"));
                    book.put("writing_status", rs.getString("writing_status"));
                    book.put("current_word_count",
                            rs.getInt("current_word_count"));
                    book.put("target_word_count",
                            rs.getInt("target_word_count"));

                    return book;
                }
            }
        }

        return null;
    }


   
    // Retrieves book IDs and titles for the dropdown
    public java.util.List<String[]> getBooks() throws SQLException {

        java.util.List<String[]> books = new java.util.ArrayList<>();

        String sql = "SELECT book_id, title FROM jordyn_librarydata ORDER BY book_id";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet rs = statement.executeQuery()) {

            while (rs.next()) {
                books.add(new String[] {
                    String.valueOf(rs.getInt("book_id")),
                    rs.getString("title")
                });
            }
        }

        return books;
    }
}
