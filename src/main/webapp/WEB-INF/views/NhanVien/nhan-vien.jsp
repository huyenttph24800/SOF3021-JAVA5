<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Nhan Vien</title>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container">
    <h3 style="text-align: center">QUAN LY NHAN VIEN</h3>
    <form action="/nhan-vien/search" method="post">
        <h5>Tim Kiem Nhan Vien</h5>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten Nhan Vien:</label>
            <div class="col-sm-8">
                <input type="text" name="tenNhanVien" class="form-control" placeholder="Search"/><br>
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success" type="submit">Search</button>
                <br>
            </div>
        </div>
    </form>
    <p> <a href="/nhan-vien/view-add" style="text-decoration: none" class="btn btn-danger">Add</a> </p>
    <table class="table table-bordered table-active container">
        <thead class="table-dark">
        <tr>
            <td>STT</td>
            <td>Ma</td>
            <td>Ho Va Ten</td>
            <td>Gioi tinh</td>
            <td>Ngay sinh</td>
            <td>Dia chi</td>
            <td>Sdt</td>
            <td>Cua Hang</td>
            <td>Chuc Vu</td>
            <td>Trang thai</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listNV}" var="nhanVien" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${nhanVien.maNhanVien}</td>
                <td>${nhanVien.hoNhanVien} ${nhanVien.tenDemNhanVien} ${nhanVien.tenNhanVien}</td>
                <td>${nhanVien.gioiTinh == true ? "Nam" : "Nu"}</td>
                <td>${nhanVien.ngaySinh}</td>
                <td>${nhanVien.diaChi}</td>
                <td>${nhanVien.sdt}</td>
                <td>${nhanVien.cuaHang.tenCuaHang}</td>
                <td>${nhanVien.chucVu.tenChucVu}</td>
                <td>${nhanVien.trangThai == 0 ? "Dang Di Lam" : "Da Nghi"}</td>
                <td>
                    <a href="/nhan-vien/detail/${nhanVien.idNhanVien}" class="btn btn-primary">Detail</a>
                    <a href="/nhan-vien/delete/${nhanVien.idNhanVien}" class="btn btn-primary"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
