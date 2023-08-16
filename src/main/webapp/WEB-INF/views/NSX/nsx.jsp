<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>NSX</title>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container">
    <h3 style="text-align: center">QUAN LÝ NSX</h3>
    <form action="/nsx/search" method="post">
        <h4>Tim Kiem Nha San Xuat</h4>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">TenNSX:</label>
            <div class="col-sm-8">
                <input type="text" name="tenNSX" class="form-control" placeholder="Search"/><br>
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success" type="submit">Search</button>
                <br>
            </div>
        </div>
    </form>
    <p>  <a href="/nsx/view-add" style="text-decoration: none" class="btn btn-danger">Add</a> </p>
    <table class="table table-bordered table-active">
        <thead class="table-info">
        <tr>
            <td>STT</td>
            <td>Ma Nha San Xuat</td>
            <td>Ten Nha San Xuat</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listnsx}" var="nsx" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${nsx.maNSX}</td>
                <td>${nsx.tenNSX}</td>
                <td>
                    <a href="/nsx/detail/${nsx.idNSX}" class="btn btn-primary">Detail</a>
                    <a href="/nsx/delete/${nsx.idNSX}" class="btn btn-primary"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
