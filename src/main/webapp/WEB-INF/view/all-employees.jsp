<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ru" xml:lang="ru">
<head>
    <style>
        h3 {
            color: burlywood;
            font-style: italic;
        }
        body {
            background: lightslategrey;
        }
    </style>
    <meta charset="utf-8">
    <link href="">
    <title>AllEmployees</title>
</head>
<div align="center">
    <body>
    <h3>Все работники</h3>
    <br>
    <table>
        <tr>
            <th>Имя</th>
            <th>Фамилия</th>
            <th>Департамент</th>
            <th>Зарплата</th>
            <th>Операции</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name = "empId" value = "${emp.id}"/>
            </c:url>
            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name = "empId" value = "${emp.id}"/>
            </c:url>

            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>
                    <input type="button" value="Update"
                    onclick="window.location.href = '${updateButton}'"/>

                    <input type="button" value="Delete"
                           onclick="window.location.href = '${deleteButton}'"/>
                </td>
            </tr>
        </c:forEach>

    </table>
    <br>
    <input type="button" value="Add"
           onclick="window.location.href = 'addNewEmployee'">
    </body>
</div>
</html>