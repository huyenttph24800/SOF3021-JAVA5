<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Khach Hang</title>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container">
    <h3 style="text-align: center">QUAN LY KHACH HANG</h3>
    <form action="/khach-hang/search" method="post">
        <h5>Tim Kiem Khach Hang</h5>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten Khach Hang:</label>
            <div class="col-sm-8">
                <input type="text" name="tenKhachHang" class="form-control" placeholder="Search"/><br>
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success" type="submit">Search</button>
                <br>
            </div>
        </div>
    </form>
    <p>
        <a href="/khach-hang/view-add"  class="btn btn-danger">Add</a> </p>
    <table class="table table-bordered table-active">
        <thead class="table-info">
        <tr>
            <td>STT</td>
            <td>Ma Khach Hang</td>
            <td>Ho Va Ten Khach Hang</td>
            <td>Ngay Sinh</td>
            <td>SDT</td>
            <td>Dia Chi</td>
            <td>Thanh Pho</td>
            <td>Quoc Gia</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listKH}" var="khachHang" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${khachHang.maKhachHang}</td>
                <td>${khachHang.hoKhachHang}${khachHang.tenDemKhachHang} ${khachHang.tenKhachHang}</td>
<%--                <td>${khachHang.gioiTinh == true ? "Nam" : "Nu"}</td>--%>
                <td>${khachHang.ngaySinh}</td>
                <td>${khachHang.sdt}</td>
                <td>${khachHang.diaChi}</td>
                <td>${khachHang.thanhPho}</td>
                <td>${khachHang.quocGia}</td>
                <td>
                    <a href="/khach-hang/detail/${khachHang.idKhachHang}" class="btn btn-primary">Detail</a>
                    <a href="/khach-hang/delete/${khachHang.idKhachHang}" class="btn btn-primary"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
