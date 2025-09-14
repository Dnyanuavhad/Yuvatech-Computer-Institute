<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #fff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="radio"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 14px;
        }
        input[type="radio"] {
            width: auto;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            border: none;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .gender-group {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .gender-group input {
            width: auto;
        }
        .message {
            text-align: center;
            font-size: 18px;
            color: #4CAF50;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
        .back-link a {
            color: #4CAF50;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Registration Form</h2>

        <% 
            // Initialize variables for form data and error message
            String username = "";
            String email = "";
            String password = "";
            String gender = "";
            String message = "";

            // Database connection setup
            String dbURL = "jdbc:mysql://localhost:3306/user_registration"; // Update with your DB info
            String dbUser = "root"; // Update with your DB user
            String dbPassword = ""; // Update with your DB password
            Connection connection = null;
            Statement statement = null;
            PreparedStatement preparedStatement = null;

            try {
                // Load the JDBC driver for MySQL
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish the connection
                connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Check if the 'users' table exists; if not, create it
                statement = connection.createStatement();
                String checkTableQuery = "SHOW TABLES LIKE 'users'";
                ResultSet rs = statement.executeQuery(checkTableQuery);
                
                // If the table doesn't exist, create it
                if (!rs.next()) {
                    String createTableQuery = "CREATE TABLE users (" +
                        "id INT AUTO_INCREMENT PRIMARY KEY, " +
                        "username VARCHAR(50) NOT NULL, " +
                        "email VARCHAR(100) NOT NULL, " +
                        "password VARCHAR(100) NOT NULL, " +
                        "gender VARCHAR(10) NOT NULL" +
                    ")";
                    statement.executeUpdate(createTableQuery);
                    message = "Table created successfully!";
                }

                // Check if the form was submitted
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    // Retrieve form data
                    username = request.getParameter("username");
                    email = request.getParameter("email");
                    password = request.getParameter("password");
                    gender = request.getParameter("gender");

                    // SQL query to insert data into the table
                    String insertSQL = "INSERT INTO users (username, email, password, gender) VALUES (?, ?, ?, ?)";
                    preparedStatement = connection.prepareStatement(insertSQL);
                    preparedStatement.setString(1, username);
                    preparedStatement.setString(2, email);
                    preparedStatement.setString(3, password);
                    preparedStatement.setString(4, gender);

                    // Execute the insert query
                    int result = preparedStatement.executeUpdate();

                    // Check if insertion was successful
                    if (result > 0) {
                        message = "Registration Successful!";
                    } else {
                        message = "Registration failed.";
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                message = "Error: " + e.getMessage();
            } finally {
                // Close database connections
                try {
                    if (preparedStatement != null) preparedStatement.close();
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                } catch (SQLException se) {
                    se.printStackTrace();
                }
            }
        %>

        <!-- Registration form -->
        <form action="hello.jsp" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="<%= username %>" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= email %>" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="form-group gender-group">
                <label>Gender:</label>
                <label for="male">
                    <input type="radio" id="male" name="gender" value="Male" <%= "Male".equals(gender) ? "checked" : "" %>> Male
                </label>
                <label for="female">
                    <input type="radio" id="female" name="gender" value="Female" <%= "Female".equals(gender) ? "checked" : "" %>> Female
                </label>
            </div>

            <div class="form-group">
                <input type="submit" value="Register">
            </div>
        </form>

        <!-- Display message after form submission -->
        <div class="message">
            <%= message %>
        </div>

    </div>

</body>
</html>
