<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%--    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Cap Nhat Cua Hang</title>
</head>
<body>
<div class="container" style="height: 630px;">
    <h3>Cap Nhat Cua Hang</h3>
    <p>
         <a href="/cua-hang/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve
        Trang Chu</a><br>
    </p>
    <form action="/cua-hang/update" method="post"
          onsubmit="if(!confirm('Ban Muon Cap Nhat?')){
                            return false
                        }else{
                            alert('Cap Nhat Thanh Cong');
                        }">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Id</label>
            <div class="col-sm-10">
                ${detailCuaHang.idCuaHang}<br>
                <input type="hidden" name="idCuaHang" class="form-control" value="${detailCuaHang.idCuaHang}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ma</label>
            <div class="col-sm-10">
                ${detailCuaHang.maCuaHang}
                <input type="hidden" name="maCuaHang" class="form-control" value="${detailCuaHang.maCuaHang}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten</label>
            <div class="col-sm-10">
                <input type="text" name="tenCuaHang" class="form-control" value="${detailCuaHang.tenCuaHang}"/>
                <form:errors path="tenCuaHang"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Dia Chi</label>
            <div class="col-sm-10">
                <input type="text" name="diaChi" class="form-control" value="${detailCuaHang.diaChi}"/>
                <form:errors path="diaChi"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Thanh Pho</label>
            <div class="col-sm-10">
                <input type="text" name="thanhPho" class="form-control" value="${detailCuaHang.thanhPho}"/>
                <form:errors path="thanhPho"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Quoc Gia</label>
            <div class="col-sm-10">
                <input type="text" name="quocGia" class="form-control" value="${detailCuaHang.quocGia}"/>
                <form:errors path="quocGia"/><br>
            </div>
        </div>
        <br>

        <button class="btn btn-success" onsubmit="" type="submit">Cap Nhat Cua Hang</button>
    </form>
</div>

</body>
</html>
