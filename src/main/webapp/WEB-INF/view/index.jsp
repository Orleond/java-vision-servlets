<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello from Mr. Orleond!</h1>
<h2>Все пользователи</h2>
<c:forEach var="user" items="${requestScope.users}">
    <ul>

        <li>Имя: <c:out value="${user.name}"/></li>

        <li>Возраст: <c:out value="${user.age}"/></li>

        <form method="post" action="<c:url value='/delete'/>">
            <input type="number" hidden name="id" value="${user.id}" />
            <input type="submit" name="delete" value="Удалить"/>
        </form>

        <form method="get" action="<c:url value='/update'/>">
            <input type="number" hidden name="id" value="${user.id}" />
            <input type="submit" value="Редактированть"/>
        </form>
    </ul>
    <hr />

</c:forEach>
<h2>Создание нового пользователя</h2><br>
<form action="<c:url value='/add_user'/>" method="post">
    <label><input type="text" name="name"></label>Имя<br>
    <label><input type="number" name="age"></label>Возраст<br>
    <input type="submit" value="OK" name="OK">
</form>
</body>
</html>
