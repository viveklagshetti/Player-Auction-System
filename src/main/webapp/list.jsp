<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Player List</title>
    </head>
    <body>
        <h1>Player List</h1>
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Category</th>
                <th>Player Pic</th>
                <th>Status</th>
            </tr>
            <c:forEach items="${listUser}" var="player">
                <tr>
                    <td><c:out value="${player.id}" ></c:out></td>
                    <td><c:out value="${player.firstname}" ></c:out></td>
                    <td><c:out value="${player.lastname}" ></c:out></td>
                    <td><c:out value="${player.category}" ></c:out></td>
                    <td><c:out value="${player.status}" ></c:out></td>
                    </tr>
            </c:forEach>
        </table>
    </body>
</html>
