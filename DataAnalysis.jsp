<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MYSQL</title>
<style>
/* navbar style */

nav {
    font-family: 'poppins', cambria;
    position: fixed;
    /* box-shadow: 0 4px 8px rgba(0, 0, 0, 0.518); */
}
#fullnavbar{
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.581);
}
nav a{
text-decoration: none;
}

nav a:hover {
border-bottom: 2px solid black;
padding:5px ;
transition: color 0.3s ease, border-bottom 0.3s ease;
}
.navbar-nav {
margin-left: 1150px;
font-size: 20px;
padding-left: 180px;
}
nav ul {
list-style: none;
display: flex;
gap: 10px;
padding: 0;
margin: 0 auto;
}
#slidedown{
    padding: 20px;
    padding-top: 100px;
}
footer {
            background-color: #ffffff;
            color: rgb(0, 0, 0);
            text-align: center;
            padding: 15px;
            width: 100%;
            bottom: 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.665);
        }
        h1{
            margin-right: 1250px;
        }
        #mysql{
            margin-right: 200px;
        }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light bg-light shadow-xl" id="fullnavbar">
        <img src="./mysql.png" alt="Home" style="height: 50px;">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<h2 class="course" id="mysql">Data Analysis</h2>
<nav class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav mr-auto">
    <li class="nav-item active">
    <a class="nav-link" href="./yuvatech.jsp">Home <span class="sr-only">(current)</span></a>
    </li>
    </ul>
</div>
</nav>

</nav>
    <main>
        <section class="course" id="slidedown">
            <h2>MySQL Syllabus</h2>

<p>1. Introduction to Databases and MySQL</p>
<ul>
<li>What is a database?</li>

<li>Relational vs. Non-relational databases</li>

<li>Overview of MySQL</li>

<li>Installing MySQL and MySQL Workbench</li>

<li>MySQL Server Architecture</li>
</ul>


<p>2. Database Design Basics</p>
<ul>
<li>Data models (ER diagrams)</li>

<li>Normalization (1NF, 2NF, 3NF)</li>

<li>Primary and Foreign keys</li>

<li>Relationships (one-to-one, one-to-many, many-to-many)</li>
</ul>


<p>3. SQL Basics</p>
<ul>
<li>Creating databases and tables</li>

<li>Data types in MySQL</li>

<li>Inserting data (INSERT)</li>

<li>Reading data (SELECT)</li>

<li>Filtering with WHERE</li>

<li>Sorting with ORDER BY</li>

<li>Limiting results with LIMIT</li>
</ul>



<p>4. SQL Operators and Clauses</p>
<ul>
<li>Logical operators (AND, OR, NOT)</li>

<li>Comparison operators (=, !=, >, <, IN, BETWEEN, LIKE)</li>

<li>Aliases using AS</li>

<li>Aggregate functions (SUM, AVG, MAX, MIN, COUNT)</li>
<li>Grouping data with GROUP BY and filtering with HAVING</li>

</ul>


<p>5. Table Relationships and Joins</p>
<ul>
<li>Foreign keys and referential integrity</li>

<li>Inner join</li>

<li>Left join</li>

<li>Right join</li>

<li>Cross join</li>

<li>Self join</li>
</ul>



<p>6. Data Modification</p>
<ul>
<li>UPDATE and DELETE statements</li>

<li>TRUNCATE vs DELETE</li>

<li>Using transactions for multiple modifications</li>
</ul>


<p>7. Constraints and Indexes</p>
<ul>
<li>Primary key, Unique, Not Null</li>

<li>Default values</li>

<li>Auto Increment</li>

<li>Foreign Key Constraints</li>

<li>Index creation and usage</li>
</ul>


<p>8. Views and Aliases</p>
<ul>
<li>Creating and using views</li>

<li>Advantages of views</li>

<li>Updatable views</li>

<li>Using table and column aliases</li>
</ul>


<p>9. User Management and Security</p>
<ul>
<li>Creating users</li>

<li>Granting and revoking privileges</li>

<li>Password management</li>

<li>Role-based access control</li>
</ul>


<p>10. Exporting and Importing Data</p>
<ul>
<li>Using mysqldump</li>

<li>Importing .sql files</li>

<li>Exporting query results</li>

<li>Backing up and restoring databases</li>
</ul>


<p>11. Basic Stored Programs (Intro to Advanced Concepts)</p>
<ul>
<li>Intro to stored procedures</li>

<li>Using simple functions</li>

<li>Introduction to triggers</li>
</ul>
        </section>

        <section class="course" id="slidedown">
            <h2>Advanced MySQL Syllabus</h2>

<p>1. Advanced SQL Queries</p>
<ul>
<li>Complex joins (INNER, OUTER, SELF)</li>

<li>Subqueries (correlated and non-correlated)</li>

<li>Common Table Expressions (CTEs)</li>

<li>Window Functions (RANK, DENSE_RANK, ROW_NUMBER, etc.)</li>

<li>Recursive Queries</li>

<li>Full-text search</li>
</ul>


<p>2. Indexing and Performance Optimization</p>
<ul>
<li>Types of indexes (B-tree, Hash, Fulltext, Spatial)</li>

<li>Indexing strategies and best practices</li>

<li>Query optimization techniques</li>

<li>EXPLAIN and ANALYZE statements</li>

<li>Query profiling</li>
</ul>


<p>3. Stored Programs</p>
<ul>
<li>Stored Procedures</li>

<li>Functions</li>

<li>Triggers</li>

<li>Cursors</li>

<li>Error Handling (DECLARE, SIGNAL, RESIGNAL)</li>
</ul>



<p>4. Transactions and Concurrency Control</p>
<ul>
<li>ACID properties</li>

<li>Transaction isolation levels (READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, SERIALIZABLE)</li>

<li>Locking (shared vs. exclusive locks)</li>

<li>>Deadlocks and handling</li>
</ul>


<p>5. Advanced Data Types and Functions</p>
<ul>
<li>JSON Data Type and Functions</li>

<li>Spatial Data Types (Geometry, Point, etc.)</li>

<li>User-defined variables</li>

<li>Dynamic SQL</li>
</ul>


<p>6. Security and Access Control</p>
<ul>
<li>User roles and privileges</li>

<li>Securing data (encryption, SSL)</li>

<li>Audit logs</li>

<li>SQL injection prevention</li>
</ul>


<p>7. Replication and High Availability</p>
<ul>
<li>Types of replication (asynchronous, semi-sync, group replication)</li>

<li>Configuring master-slave and master-master replication</li>

<li>Failover and load balancing</li>

<li>Monitoring replication status</li>
</ul>


<p>8. Backup and Recovery</p>
<ul>
<li>Logical and physical backups</li>

<li>mysqldump, mysqlpump, mysqlhotcopy</li>

<li>Point-in-time recovery</li>

<li>Binary log-based recovery</li>
</ul>


<p>9. Partitioning and Sharding</p>
<ul>
<li>Horizontal vs. vertical partitioning</li>

<li>Partitioning strategies (range, list, hash, key)</li>

<li>Introduction to sharding and tools</li>
</ul>


<p>10. MySQL Performance Tuning and Monitoring</p>
<ul>
<li>Tuning MySQL server parameters (my.cnf)</li>

<li>Slow query log</li>

<li>Performance Schema</li>

<li>Monitoring tools (MySQL Workbench, Percona Toolkit, etc.)</li>
</ul>


<p>11. MySQL with NoSQL Features</p>
<ul>
<li>Document Store</li>

<li>X DevAPI</li>

<li>MySQL Shell</li>
</ul>


<p>12. Migration and Integration</p>
<ul>
<li>Data migration strategies</li>

<li>Integration with other platforms (Python, PHP, Java, etc.)</li>

<li>ETL tools and MySQL</li>
</ul>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 YuvaTech. All rights reserved.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>  
</body>
</html>