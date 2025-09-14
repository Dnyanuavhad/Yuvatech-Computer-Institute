<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Database Connection Details
    String url = "jdbc:mysql://localhost:3306/user_database";

    String user = "root"; // Change if using a different MySQL user
    String pass = ""; // Change if using a MySQL password

    Connection conn = null;
    String message = "";

    try {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, pass);

        // Check if the 'users' table exists, and if not, create it
        String checkTableQuery = "SHOW TABLES LIKE 'users'";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(checkTableQuery);

        if (!rs.next()) {
            // If table does not exist, create it
            String createTableQuery = "CREATE TABLE users ("
                + "id INT AUTO_INCREMENT PRIMARY KEY, "
                + "first_name VARCHAR(50), "
                + "last_name VARCHAR(50), "
                + "email VARCHAR(100) UNIQUE, "
                + "password VARCHAR(255))";
            stmt.executeUpdate(createTableQuery);
        }

        // Handle form submission
        if (request.getParameter("submit") != null) {
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirm_password");
            String terms = request.getParameter("terms");

            if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty()) {
                message = "All fields are required!";
            } else if (!password.equals(confirmPassword)) {
                message = "Passwords do not match!";
            } else if (terms == null) {
                message = "You must agree to the terms and conditions!";
            } else {
                // Insert user into database
                String query = "INSERT INTO users (first_name, last_name, email, password) VALUES (?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(query);
                pstmt.setString(1, firstName);
                pstmt.setString(2, lastName);
                pstmt.setString(3, email);
                pstmt.setString(4, password); // Store hashed password in production

                int rows = pstmt.executeUpdate();
                if (rows > 0) {
                    message = "Registration successful!";
                } else {
                    message = "Registration failed!";
                }
            }
        }
    } catch (Exception e) {
        message = "Database connection error: " + e.getMessage();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px;
        }
        input, button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #28a745;
            color: white;
            border: none;
        }
        .message {
            text-align: center;
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 style="text-align:center;">Register</h2>
    
    <% if (!message.isEmpty()) { %>
        <script>alert("<%= message %>");</script>
    <% } %>

    <form method="post">
        <input type="text" name="first_name" placeholder="First Name" required>
        <input type="text" name="last_name" placeholder="Last Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="password" name="confirm_password" placeholder="Confirm Password" required>
        <label><input type="checkbox" name="terms"> I agree to the terms and conditions</label>
        <button type="submit" name="submit">Register</button>
    </form>
</div>

</body>
</html>
