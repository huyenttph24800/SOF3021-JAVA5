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

<div class="container">
    <h3>Danh Sach San Pham Chi Tiet - Add Cho Hoa Don</h3>
    <table class="table table-bordered table-active container">
        <thead class="table-dark">
        <tr>
            <td>STT</td>
            <td>Ten San Pham</td>
            <td>So Luong Ton</td>
            <td>Gia Ban</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listSanPhamAddToCart}" var="ctsp" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${ctsp.sanPham.tenSanPham}</td>
                <td>${ctsp.soLuongTon}</td>
                <td>${ctsp.giaBan}</td>
                <td>
                    <a href="/hoa-don-chi-tiet/addtocart/${ctsp.idCTSP}">Add To Cart</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
