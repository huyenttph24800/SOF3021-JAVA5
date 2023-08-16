<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Them San Pham</title>
</head>
<body>

<div class="container" style="height: 410px;">
    <h3>Them San Pham</h3>
    <p>
        <a href="/san-pham/hien-thi" style="text-decoration: none">Ve Trang
        Chu</a><br>
    </p>
    <form:form action="/san-pham/add" method="post" modelAttribute="addSanPham"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">
        <div class="form-group row">
            <form:label path="tenSanPham" class="col-sm-2 col-form-label">Ten San Pham</form:label>
            <div class="col-sm-10">
                <input type="text" name="tenSanPham" value="${addSanPham.tenSanPham}" class="form-control"
                       placeholder="Nhap Ten San Pham"/>
                <form:errors path="tenSanPham" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-primary" onsubmit="" type="submit">Them San Pham</form:button>
    </form:form>
</div>
<br>

</body>
</html>
