<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Database Connection Details
    String url = "jdbc:mysql://localhost:3306/user_database";
    String user = "root"; // Change if using a different MySQL user
    String pass = ""; // Change if using a MySQL password

    Connection conn = null;
    String message = "";
    List<List<String>> enquiryData = new ArrayList<>();

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, pass);

        // Handle delete request
        if (request.getParameter("deleteId") != null) {
            String deleteIdStr = request.getParameter("deleteId");
            try {
                int deleteId = Integer.parseInt(deleteIdStr);
                String deleteQuery = "DELETE FROM enquiry WHERE id = ?";
                PreparedStatement pstmt = conn.prepareStatement(deleteQuery);
                pstmt.setInt(1, deleteId);
                int rowsAffected = pstmt.executeUpdate();
                if (rowsAffected > 0) {
                    message = "Enquiry with ID " + deleteId + " deleted successfully!";
                } else {
                    message = "Failed to delete enquiry with ID " + deleteId + ". Record not found.";
                }
                pstmt.close();
            } catch (NumberFormatException e) {
                message = "Invalid Enquiry ID!";
            } catch (SQLException e) {
                message = "Database error during deletion: " + e.getMessage();
                e.printStackTrace();
            }
        }

        // Fetch data from the enquiry table
        String selectQuery = "SELECT id, first_name, last_name, email, mobile, course_enquiry FROM enquiry";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(selectQuery);

        while (rs.next()) {
            List<String> rowData = new ArrayList<>();
            rowData.add(rs.getString("id")); // Include ID for deletion
            rowData.add(rs.getString("first_name"));
            rowData.add(rs.getString("last_name"));
            rowData.add(rs.getString("email"));
            rowData.add(rs.getString("mobile"));
            rowData.add(rs.getString("course_enquiry"));
            enquiryData.add(rowData);
        }
        rs.close();
        stmt.close();

    } catch (ClassNotFoundException e) {
        message = "MySQL JDBC Driver not found!";
        e.printStackTrace();
    } catch (SQLException e) {
        message = "Database error: " + e.getMessage();
        e.printStackTrace();
    } finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Enquiries</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            background-color: #f4f4f4;
            margin: 0;
            padding-top: 20px;
            box-sizing: border-box;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 80%;
            overflow-x: auto;
            margin-bottom: 20px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 15px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        .action-buttons {
            white-space: nowrap;
        }
        .delete-button {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 0.9em;
            transition: background-color 0.3s ease;
        }
        .delete-button:hover {
            background-color: #c82333;
        }
        .message {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .error-message {
            text-align: center;
            color: red;
            font-weight: bold;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Manage Enquiries</h2>

        <% if (!message.isEmpty()) { %>
            <p class="<%= message.contains("Failed") ? "error-message" : "message" %>"><%= message %></p>
        <% } %>

        <% if (!enquiryData.isEmpty()) { %>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Course Enquiry</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (List<String> row : enquiryData) { %>
                        <tr>
                            <td><%= row.get(0) %></td>
                            <td><%= row.get(1) %></td>
                            <td><%= row.get(2) %></td>
                            <td><%= row.get(3) %></td>
                            <td><%= row.get(4) %></td>
                            <td><%= row.get(5) %></td>
                            <td class="action-buttons">
                                <form method="post" style="display: inline;">
                                    <input type="hidden" name="deleteId" value="<%= row.get(0) %>">
                                    <button type="submit" class="delete-button" onclick="return confirm('Are you sure you want to delete this enquiry?')">Delete</button>
                                </form>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } else { %>
            <p>No enquiry data available.</p>
        <% } %>
    </div>

</body>
</html>