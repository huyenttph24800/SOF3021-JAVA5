<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Hoa Don</title>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container">
    <h3>Quan Ly Hoa Don</h3>
    <form action="/hoa-don/search" method="post">
        <h4>Tim Kiem Hoa Don</h4>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ma Hoa Don:</label>
            <div class="col-sm-8">
                <input type="text" name="maHoaDon" class="form-control" placeholder="Nhap Ma Hoa Don Can Tim"/><br>
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success" type="submit">Tim Kiem</button>
                <br>
            </div>
        </div>
    </form>
    <p><a href="/hoa-don/view-add" style="text-decoration: none" class="btn btn-danger">Tao Hoa Don</a></p>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Ma Hoa Don</th>
            <th scope="col">Ho Va Ten Khach Hang</th>
            <th scope="col">Ho Va Ten Nhan Vien</th>
            <th scope="col">Ngay Tao</th>
            <th scope="col">Ten Nguoi Nhan</th>
            <th scope="col">Dia Chi</th>
            <th scope="col">SDT</th>
            <th scope="col">Tinh Trang</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listHoaDon}" var="hoaDon" varStatus="i">
            <tr>
                <th>${i.index + 1}</th>
                <td>
                    <a href="hoa-don-chi-tiet/hien-thi/${hoaDon.idHoaDon}"
                       style="text-decoration: none" class="btn btn-primary">${hoaDon.maHoaDon}</a>
                </td>
                <td>${hoaDon.khachHang.hoKhachHang} ${hoaDon.khachHang.tenDemKhachHang} ${hoaDon.khachHang.tenKhachHang}</td>
                <td>${hoaDon.nhanVien.hoNhanVien} ${hoaDon.nhanVien.tenDemNhanVien} ${hoaDon.nhanVien.tenNhanVien}</td>
                <td>${hoaDon.ngayTao}</td>
                <td>${hoaDon.tenNguoiNhan}</td>
                <td>${hoaDon.diaChi}</td>
                <td>${hoaDon.sdt}</td>
                <td>${hoaDon.trangThaiHoaDon()}</td>
                <td>
                    <a href="hoa-don/delete/${hoaDon.idHoaDon}"
                       onclick="if(!confirm('Ban Muon Huy Hoa Don?')){return false}else{alert('Huy Thanh Cong');}">Huy
                        Hoa Don</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
