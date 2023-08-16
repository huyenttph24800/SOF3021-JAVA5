<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%--    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Them Cua Hang</title>
</head>
<body>
<div class="container" style="height: 500px;">
    <h3>Them Cua Hang</h3>
    <p>
         <a href="/cua-hang/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang
        Chu</a><br>
    </p>
    <form:form action="/cua-hang/add" method="post" modelAttribute="addCuaHang"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">
        <div class="form-group row">
            <form:label path="tenCuaHang" class="col-sm-2 col-form-label">Ten Cua Hang:</form:label>
            <div class="col-sm-10">
                <input type="text" name="tenCuaHang" class="form-control" value="${addCuaHang.tenCuaHang}"
                       placeholder="Nhap Ten Cua Hang"/>
                <form:errors path="tenCuaHang"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="diaChi" class="col-sm-2 col-form-label">Dia Chi:</form:label>
            <div class="col-sm-10">
                <input type="text" name="diaChi" class="form-control" value="${addCuaHang.diaChi}"
                       placeholder="Nhap Dia Chi"/>
                <form:errors path="diaChi"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="thanhPho" class="col-sm-2 col-form-label">Thanh Pho:</form:label>
            <div class="col-sm-10">
                <input type="text" name="thanhPho" class="form-control" value="${addCuaHang.thanhPho}"
                       placeholder="Nhap Thanh Pho"/>
                <form:errors path="thanhPho"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="quocGia" class="col-sm-2 col-form-label">Quoc Gia:</form:label>
            <div class="col-sm-10">
                <input type="text" name="quocGia" class="form-control" value="${addCuaHang.quocGia}"
                       placeholder="Nhap Quoc Gia"/>
                <form:errors path="quocGia"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-success" onsubmit="" type="submit">Them Cua Hang</form:button>
    </form:form>
</div>

</body>
</html>
