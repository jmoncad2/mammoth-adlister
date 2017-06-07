<%--
  Created by IntelliJ IDEA.
  User: jaimemoncada
  Date: 6/7/17
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
</head>
<body>
<form method="post">
    Username:<input type="text" name="user">
    Password:<input type="password" name="pass">
    <input type="submit" value="Submit">
    <%
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        if (username != null && password != null) {
            if (username.equals("admin") && password.equals("password")) {
            %>
                <jsp:forward page="profile.jsp"/>
            <%
            } else {
            %>
                <jsp:forward page="error.jsp"/>
            <%
            }
        }
    %>
</form>
</body>
</html>
