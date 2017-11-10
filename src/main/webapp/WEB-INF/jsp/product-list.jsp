<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <link>
</head>
<body>

    <form:form modelAttribute="searchForm">
        <form:input path="searchText" />
        <input type="submit" value="Search" />
    </form:form>

<br>
    <table border="1" cellpadding="7" cellspacing="1">
        <tr>
            <td>id</td>
            <td>title</td>
            <td>description</td>
        </tr>
    <c:forEach items="${products}" var="prod">
        <tr>
            <td>${prod.id}</td>
            <td>${prod.title}</td>
            <td>${prod.description}</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
