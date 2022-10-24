<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>
    <table border="1">
        <caption>List with meals</caption>
        <tr>
            <th>dateTime</th>
            <th>description</th>
            <th>calories</th>
            <th>excess</th>
        </tr>
    <c:forEach var="mealTo" items="${mealsTo}">
        <tr>
            <td><time datetime=${mealTo.dateTime} /> </td>
            <td>${mealTo.description}</td>
            <td>${mealTo.calories}</td>
            <td>${mealTo.excess}</td>
        </tr>
    </c:forEach>
    </table>
</h2>
</body>
</html>