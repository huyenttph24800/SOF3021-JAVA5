
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container">
    <h3 style="text-align: center; text-decoration-color: darkred" >QUAN LY CUA HANG</h3>
    <form action="/cua-hang/search" method="post">
        <h4>Tim Kiem Cua Hang</h4>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten Cua Hang:</label>
            <div class="col-sm-8">
                <input type="text" name="tenCuaHang" class="form-control" placeholder="Nhap Ten Cua Hang Can Tim"/><br>
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success" type="submit">Search</button>
                <br>
            </div>
        </div>
    </form>
    <a href="/cua-hang/view-add" class="btn btn-danger">Add</a> </p>
    <table class="table table-bordered table-active">
        <thead class="table-info">
        <tr>
            <td>STT</td>
            <td>Ma Cua Hang</td>
            <td>Ten Cua Hang</td>
            <td>Dia Chi</td>
            <td>Thanh Pho</td>
            <td>Quoc Gia</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listCH}" var="cuaHang" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${cuaHang.maCuaHang}</td>
                <td>${cuaHang.tenCuaHang}</td>
                <td>${cuaHang.diaChi}</td>
                <td>${cuaHang.thanhPho}</td>
                <td>${cuaHang.quocGia}</td>
                <td>
                    <a href="/cua-hang/detail/${cuaHang.idCuaHang}" class="btn btn-primary">Detail</a>
                    <a href="/cua-hang/delete/${cuaHang.idCuaHang}" class="btn btn-primary"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
