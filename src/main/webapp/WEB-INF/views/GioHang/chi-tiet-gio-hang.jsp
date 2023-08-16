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
    <title>Them Chi Tiet Gio Hang</title>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container" style="height: 500px;">
    <h3>Them Chi Tiet Gio Hang</h3>
    <p>
         <a href="/gio-hang/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang
        Chu</a><br>
    </p>
    <p><a href="/gio-hang-chi-tiet/view-add-san-pham" style="text-decoration: none" class="btn btn-danger">Them San Pham</a> </p>
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
        <c:forEach items="${listGioHangChiTietById}" var="gioHangChiTiet" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${gioHangChiTiet.idGioHangChiTiet.chiTietSP.sanPham.tenSanPham}</td>
                <td>${gioHangChiTiet.soLuong}</td>
                <td>${gioHangChiTiet.donGia}</td>
                <td>${gioHangChiTiet.thanhTien()}</td>
                <td>
                    <a href="/gio-hang-chi-tiet/delete/${gioHangChiTiet.idGioHangChiTiet.chiTietSP.sanPham.tenSanPham}"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
