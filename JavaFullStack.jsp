<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MYSQL</title>
    <style>
        body {
            font-family: 'poppins', cambria;
            margin: 0;
            padding: 0;
            background-color: #eef2f5;
            color: #333;
        }

        header {
            background-color: #ffffff;
            color: rgb(0, 0, 0);
            padding: 15px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            height: 60px;
            width: 60px;
            margin-right: 10px;
        }

        .logo h1 {
            margin-left: 20px;
            font-size: 25px;
        }

        nav a {
            background-color: #ffffff;
            color: black;
            font-size: 20px;
            text-decoration: none;
            margin-left: 15px;
        }

        nav a.active, nav a:hover {
            border-bottom: 2px solid black;
            transition: color 0.3s ease, border-bottom 0.3s ease;
        
        }

        main {
            padding: 30px;
        }

        .course h2 {
            color: #2c3e50;
        }

        footer {
            background-color: #ffffff;
            color: rgb(0, 0, 0);
            text-align: center;
            padding: 15px;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="./java.png" alt="Logo">
            <h1>MYSQL</h1>
        </div>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light bg-light shadow-xl">
            <a href="./yuvatech.jsp">Home</a>
        </nav>
    </header>

    <main>
        <section class="course">
            <h2>MYSQL</h2>
            <p>This course introduces you to Java, a versatile and powerful programming language used in web, mobile, and enterprise applications.</p>
            <ul>
                <li>Core Java syntax and semantics</li>
                <li>Object-Oriented Programming (OOP)</li>
                <li>Exception handling</li>
                <li>File I/O and JDBC basics</li>
            </ul>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 YuvaTech. All rights reserved.</p>
    </footer>
    
</body>
</html>