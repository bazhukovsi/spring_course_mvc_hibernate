<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ru" xml:lang="ru">
<head>
    <style type="text/css">
        h3 {
            color: burlywood;
            font-style: italic;
        }
        body {
            background: lightslategrey;
        }
        table {
            border-collapse: separate;
            border: solid 2px blue;
            border-spacing: 5px 10px;
        }
        td {
            padding: 0px 5px;
            border: solid 3px blue;
        }
    </style>
    <meta charset="utf-8">
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
        </tr>
        <c:forEach var="emp" items="${allEmps}">
            <tr>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
            </tr>
        </c:forEach>

    </table>

    </body>
</div>
</html>