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
    <title>Them Chi Tiet Hoa Don</title>
</head>
<body>

<div class="container" style="height: 500px;">
    <h3>Them Chi Tiet Hoa Don</h3>
    <p>
        <a href="/hoa-don/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang Chu</a><br>
    </p>
    <p>  <a href="/hoa-don-chi-tiet/view-add-sp-gio-hang"
                                                        style="text-decoration: none" class="btn btn-danger">Them San Pham</a> </p>
    <table class="table table-bordered table-active">
        <thead class="table-dark">
        <tr>
            <td>STT</td>
            <td>Ten San Pham</td>
            <td>So Luong</td>
            <td>Don Gia</td>
            <td>Thanh Tien</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listHoaDonChiTietById}" var="hoaDonChiTiet" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${hoaDonChiTiet.idHoaDonChiTiet.chiTietSP.sanPham.tenSanPham}</td>
                <td>${hoaDonChiTiet.soLuong}</td>
                <td>${hoaDonChiTiet.donGia}</td>
                <td>${hoaDonChiTiet.thanhTien()}</td>
                <td>
                    <a href="/hoa-don-chi-tiet/delete/${hoaDonChiTiet.idHoaDonChiTiet.chiTietSP.sanPham.tenSanPham}"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
