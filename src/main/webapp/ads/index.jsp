<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jaimemoncada
  Date: 6/8/17
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
    <ul>
    <c:forEach var = "ad" items = "${ads}" >
        <li>${ad.title}</li>
    </c:forEach>
    </ul>
</head>
<body>

</body>
</html>
