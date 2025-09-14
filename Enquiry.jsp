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

        // Handle form submission
        if (request.getParameter("submitEnquiry") != null) {
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String courseEnquiry = request.getParameter("course_enquiry");
            String terms = request.getParameter("terms");

            if (firstName == null || firstName.trim().isEmpty() ||
                lastName == null || lastName.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                mobile == null || mobile.trim().isEmpty() ||
                courseEnquiry == null || courseEnquiry.trim().isEmpty()) {
                message = "All fields are required!";
            } else if (terms == null) {
                message = "You must agree to the terms and conditions!";
            } else {
                // Insert user into database
                String query = "INSERT INTO enquiry (first_name, last_name, email, mobile, course_enquiry) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(query);
                pstmt.setString(1, firstName);
                pstmt.setString(2, lastName);
                pstmt.setString(3, email);
                pstmt.setString(4, mobile);
                pstmt.setString(5, courseEnquiry);

                int rows = pstmt.executeUpdate();
                if (rows > 0) {
                    message = "Enquiry submitted successfully!";
                } else {
                    message = "Failed to submit enquiry!";
                }
                pstmt.close();
            }
        }

        // Fetch data from the enquiry table
        if (request.getParameter("showData") != null) {
            String query = "SELECT first_name, last_name, email, mobile, course_enquiry FROM enquiry";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                List<String> rowData = new ArrayList<>();
                rowData.add(rs.getString("first_name"));
                rowData.add(rs.getString("last_name"));
                rowData.add(rs.getString("email"));
                rowData.add(rs.getString("mobile"));
                rowData.add(rs.getString("course_enquiry"));
                enquiryData.add(rowData);
            }
            rs.close();
            stmt.close();
        }

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
    <title>Enquire Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column; /* Arrange items vertically */
            justify-content: flex-start; /* Align items at the top */
            align-items: center;
            min-height: 100vh; /* Ensure full viewport height */
            background-color: #f4f4f4;
            margin: 0;
            padding-top: 20px; /* Add some top padding */
            box-sizing: border-box; /* Include padding and border in element's total width and height */
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin-bottom: 20px; /* Add space below the form container */
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            font-size: 0.9em;
            color: #555;
        }
        input[type="checkbox"] {
            display: inline-block;
            width: auto;
            margin-right: 5px;
        }
        button {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 1em;
        }
        button:hover {
            background-color: #0056b3;
        }
        .message {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-top: 10px;
        }
        .data-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            width: 80%; /* Adjust width as needed */
            overflow-x: auto; /* Enable horizontal scrolling for large tables */
        }
        .data-container h3 {
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
    </style>
</head>
<body>

<div class="container">
    <h2>ENQUIRE US</h2>

    <% if (!message.isEmpty()) { %>
        <div class="message"><%= message %></div>
    <% } %>

    <form method="post">
        <input type="text" name="first_name" placeholder="First Name" required>
        <input type="text" name="last_name" placeholder="Last Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="number" name="mobile" placeholder="Mobile Number" required>
        <input type="text" name="course_enquiry" placeholder="Course of Interest" required>
        <label><input type="checkbox" name="terms" required> I agree to the terms and conditions</label>
        <button type="submit" name="submitEnquiry">Submit Enquiry</button>
    </form>
</div>

</body>
</html>