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

    <title>Chi Tiet San Pham</title>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container">
    <h3 style="text-align: center">CHI TIET SAN PHAM</h3>
    <p> <a href="/ctsp/view-add" style="text-decoration: none" class="btn btn-danger">Add
        </a> </p>
    <table class="table table-bordered table-active container">
        <thead class="table-info">
        <tr>
            <td>STT</td>
            <td>Ten San Pham</td>
            <td>Ten Nha San Xuat</td>
            <td>Ten Mau Sac</td>
            <td>Ten Dong San Pham</td>
            <td>Nam Bao Hanh</td>
            <td>Mo Ta</td>
            <td>So Luong Ton</td>
            <td>Gia Nhap</td>
            <td>Gia Ban</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listChiTietSP}" var="ctsp" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${ctsp.sanPham.tenSanPham}</td>
                <td>${ctsp.nsx.tenNSX}</td>
                <td>${ctsp.mauSac.tenMS}</td>
                <td>${ctsp.dongSP.tenDongSP}</td>
                <td>${ctsp.namBh}</td>
                <td>${ctsp.moTa}</td>
                <td>${ctsp.soLuongTon}</td>
                <td>${ctsp.giaNhap}</td>
                <td>${ctsp.giaBan}</td>
                <td>
                    <a href="/ctsp/detail/${ctsp.idCTSP}" class="btn btn-primary">Detail</a>
                    <a href="/ctsp/delete/${ctsp.idCTSP}" class="btn btn-primary"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
