<%@page import="java.sql.*"%>
<%@page import="com.connection.SqlConnectionProvide"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>

<html>
<head>
<link rel="stylesheet" href="../css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>

	<div style="color: white; text-align: center; font-size: 30px;">
		Send Message to Customers <i class='fas fa-comment-alt'></i>
	</div>
	<hr>
	<%
	String email2 = session.getAttribute("email").toString();
	String user_email = request.getParameter("u_email");
	String msg = request.getParameter("msg");
	if ("success".equals(msg)) {
	%>
	<h3 style="text-align: center; color: yellow;">Message
		successfully sent. Our team will contact you soon!</h3>
	<%
	}
	if ("wrong".equals(msg)) {
	%>
	<h3 style="text-align: center;">Some thing Went Wrong! Try Again!</h3>
	<%
	}
	%>
	<form action="sendMessageAction.jsp?u_mail=<%out.println(user_email); %>" method="post">
		<input class="input-style" type="text" name="Subject"
			placeholder="Subject" required />
		<hr>
		<textarea class="input-style" name="body"
			placeholder="Write your message" required>
	</textarea>
		<hr>
		<button class="button">
			Send <i class="far fa-arrow-alt-circle-right"></i>
		</button>
	</form>

	<br>
	<br>
	<br>
</body>
</html>