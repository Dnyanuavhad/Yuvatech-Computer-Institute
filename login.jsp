<%@ page import="java.sql.*" %>
<%
    String dbURL = "jdbc:mysql://localhost:3306/user_database";
    String dbUser = "root"; // update if needed
    String dbPass = "";     // update if needed

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String message = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        stmt = conn.createStatement();

        String createTable = "CREATE TABLE IF NOT EXISTS login (" +
        "email VARCHAR(100) PRIMARY KEY, " +
        "password VARCHAR(100))";
        stmt.executeUpdate(createTable);

        rs = stmt.executeQuery("SELECT * FROM login WHERE email='admin@gmail.com'");
        if (!rs.next()) {
            stmt.executeUpdate("INSERT INTO login (email, password) VALUES ('admin@gmail.com', 'admin123')");
        }

        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            PreparedStatement ps = conn.prepareStatement("SELECT * FROM login WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("profile.jsp");
                return;
            } else {
                message = "Invalid email or password.";
            }

            ps.close();
        }

    } catch (Exception e) {
        message = "Error: " + e.getMessage();
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (Exception ex) {
            message += " Cleanup error: " + ex.getMessage();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Poppins',Cambria ;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-box {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
            width: 300px;
            text-align: center;
        }
        .login-box input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .login-box input[type=submit] {
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }
        .login-box input[type=submit]:hover {
            background-color: #0056b3;
        }
        .message {
            margin-top: 15px;
            color: red;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Login</h2>
        <form method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
        <div class="message"><%= message %></div>
    </div>
</body>
</html>