<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <title>Document</title>
</head>
<body>
<form:form method="POST" action="/user/saveUser" modelAttribute="user">
    <table>
        <tr>
            <td><form:label path="firstName">First Name:</form:label></td>
            <td><form:input path="firstName" /></td>
        </tr>
        <tr>
            <td><form:label path="lastName">Last Name:</form:label></td>
            <td><form:input path="lastName" /></td>
        </tr>
        <tr>
            <td><form:label path="email">Email:</form:label></td>
            <td><form:input path="email" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Save" /></td>
        </tr>
    </table>
</form:form>
</body>
</html>
