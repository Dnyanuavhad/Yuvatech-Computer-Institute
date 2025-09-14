<%@ page import="java.sql., java.util., javax.mail., javax.mail.internet." %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Send Email</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    String dbUrl = "jdbc:mysql://localhost:3306/emailapp";
    String dbUser = "root";         // change if needed
    String dbPass = "";             // change if needed

    if (email != null && message != null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

            // 1. Check and create table if not exists
            Statement st = conn.createStatement();
            st.executeUpdate("CREATE TABLE IF NOT EXISTS messages (" +
                    "id INT AUTO_INCREMENT PRIMARY KEY," +
                    "email VARCHAR(255) NOT NULL," +
                    "message TEXT NOT NULL," +
                    "sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP" +
                    ")");

            // 2. Insert into DB
            PreparedStatement ps = conn.prepareStatement("INSERT INTO messages(email, message) VALUES (?, ?)");
            ps.setString(1, email);
            ps.setString(2, message);
            ps.executeUpdate();
            ps.close();

            // 3. Send email
            final String senderEmail = "your@gmail.com";     // replace
            final String senderPass = "yourapppassword";     // use app password

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");

            Session session = Session.getInstance(props, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(senderEmail, senderPass);
                }
            });

            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(senderEmail));
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
            msg.setSubject("Message from JSP App");
            msg.setText(message);
            Transport.send(msg);

            out.println("<p>Email sent and saved successfully!</p>");
            conn.close();
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    }
%>

<h2>Send Message</h2>
<form method="post">
    Email: <input type="email" name="email" required><br><br>
    Message:<br>
    <textarea name="message" rows="10" cols="40" required></textarea><br><br>
    <input type="submit" value="Send">
</form>
</body>
</html>