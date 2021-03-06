<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <link>
</head>
<body>

    <form:form  align="center" modelAttribute="searchForm">
        <form:input path="searchText" />
        <input type="submit" value="Search" />
    </form:form>
    <br>
    <table align="center" border="1" cellpadding="7" cellspacing="1">
        <tr align="center">
            <td>id</td>
            <td>title</td>
            <td>description</td>
            <td>image</td>
            <td>cost</td>
            <td>balance</td>
        </tr>
    <c:forEach items="${products}" var="prod">
        <tr align="center">
            <td>${prod.id}</td>
            <td>${prod.title}</td>
            <td>${prod.description}</td>
            <td><img src="/img/${prod.image}" height=20%></td>
            <td>${prod.cost}</td>
            <td>${prod.balance}</td>
        </tr>
    </c:forEach>
    </table>
    <br>
    <form name="adding" modelAttribute="addForm">
        <table align="center" cellpadding="7" cellspacing="1">
            <caption><b>Adding products</b></caption>
            <tr>
                <td align="right">title</td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td align="right">description</td>
                <td><input type="text" name="description"></td>
            </tr>
            <tr>
                <td align="right">image url</td>
                <td><input type="text" name="image"></td>
            </tr>
            <tr>
                <td align="right">cost</td>
                <td><input type="text" name="cost"></td>
            </tr>
            <tr>
                <td></td>
                <td align="right"><input type="reset" value="Cancel"><input type="submit" value="Add"></td>
            </tr>
        </table>
        <br>
    </form>

</body>
</html>
