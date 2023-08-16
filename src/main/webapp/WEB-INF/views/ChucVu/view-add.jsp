<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<%--    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">--%>
    <title>Them Chuc Vu</title>
</head>
<body>

<div class="container" style="height: 500px;">
    <h3>Them Chuc Vu</h3>
    <p>
        Ban Khong Muon Them Nua: <a href="/chuc-vu/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang
        Chu</a><br>
    </p>
    <form:form action="/chuc-vu/add" method="post" modelAttribute="addChucVu"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">
        <div class="form-group row">
            <form:label path="tenChucVu" class="col-sm-2 col-form-label">Ten Chuc Vu:</form:label>
            <div class="col-sm-10">
                <input type="text" name="tenChucVu" class="form-control" value="${addChucVu.tenChucVu}" placeholder="Nhap Ten Chuc Vu"/>
                <form:errors path="tenChucVu"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-success" onsubmit="" type="submit">Them Chuc Vu</form:button>
    </form:form>
</div>

</body>
</html>
