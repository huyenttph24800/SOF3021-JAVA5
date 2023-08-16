<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Mau Sac</title>
</head>
<body>
<%@include file="../common/header.jsp" %>
<div class="container">
<%--    <h3>Màu sắc</h3>--%>
<%--    <form action="/mau-sac/add" method="post">--%>
<%--        <div class="form-group row">--%>
<%--            <label class="col-sm-2 col-form-label">Mã</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input class="form-control" type="text" name="ma"><br>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="form-group row">--%>
<%--            <label class="col-sm-2 col-form-label">Tên</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input class="form-control" type="text" name="tenMS"><br>--%>
<%--            </div>--%>
<%--        </div>--%>

        <h3 style="text-align: center">QUAN LY MAU SAC</h3>
        <form action="/mau-sac/search" method="post">
            <h4>Tim Kiem Mau Sac</h4>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Ten Mau Sac:</label>
                <div class="col-sm-8">
                    <input type="text" name="tenMS" class="form-control" placeholder="Search"/><br>
                </div>
                <div class="col-sm-2">
                    <button class="btn btn-success" type="submit">Search</button>
                    <br>
                </div>
            </div>
        </form>
        <p> <a href="/mau-sac/view-add" style="text-decoration: none" class="btn btn-danger">Add</a> </p>
    </form>

    <table class="table table-bordered table-active">
        <thead class="table-info">
        <tr>
            <td>ID</td>
            <td>Mã</td>
            <td>Tên</td>
            <td>Action</td>
        </tr>
        </thead>
        <tbody class="table-hover">
        <c:forEach items="${listMS}" var="ms" varStatus="i">
            <tr>
                <td>${i.index + 1}</td>
                <td>${ms.maMS}</td>
                <td>${ms.tenMS}</td>
                <td>
                    <a href="/Mau-sac/detail/${ms.idMS}" class="btn btn-primary">Detail</a>
                    <a href="/mau-sac/delete/${ms.idMS}" class="btn btn-primary"
                       onclick="if(!confirm('Ban Muon Xoa?')){return false}else{alert('Xoa Thanh Cong');}">Delete</a>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
