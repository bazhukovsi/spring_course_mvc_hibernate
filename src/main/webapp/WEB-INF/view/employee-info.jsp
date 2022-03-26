<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    </style>
    <meta charset="utf-8">
    <title>AllEmployees</title>
</head>
<div align="center">
    <body>
    <h3>Информация о работнике</h3>
    <br>
    <form:form action="saveEmployee" modelAttribute="employee">
        <br><br>
        <form:hidden path="id"/>
        Имя:<form:input path="name"/>
        <br><br>
        Фамилия:<form:input path="surname"/>
        <br><br>
        Департамент:<form:input path="department"/>
        <br><br>
        Зарплата:<form:input path="salary"/>
        <form:errors path="salary"/>
        <br><br>
        <input type="submit" value="OK">
    </form:form>
    <br>
    </body>
</div>
</html>