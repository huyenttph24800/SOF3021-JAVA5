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
    <title>SHOPAlibaba-Tao Hoa Don</title>
</head>
<body>

<div class="container" style="height: 800px;">
    <h3>Tao Hoa Don</h3>
    <p>
        <a href="hoa-don/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang
        Chu</a><br>
    </p>
    <form:form action="/hoa-don/add" method="post" modelAttribute="addHoaDon"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">

        <div class="form-group row">
            <form:label path="nhanVien" class="col-sm-2 col-form-label"> Ten Nhan Vien: </form:label>
            <div class="col-sm-6">
                <select name="nhanVien" ${addHoaDon.nhanVien} class="form-control">
                    <c:forEach items="${listNV}" var="cbbNhanVien">
                        <option value="${cbbNhanVien.idNhanVien}">${cbbNhanVien.tenNhanVien}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-4">
                <p>
                    Ban Muon Xem Danh Sach Nhan Vien:
                    <a href="/nhan-vien/hien-thi" style="text-decoration: none" class="btn btn-primary">Xem Danh Sách</a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="khachHang" class="col-sm-2 col-form-label"> Ten Khach Hang: </form:label>
            <div class="col-sm-6">
                <select name="khachHang" ${addHoaDon.khachHang} class="form-control">
                    <c:forEach items="${listKH}" var="cbbKhachHang">
                        <option value="${cbbKhachHang.idKhachHang}">${cbbKhachHang.tenKhachHang}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-4">
                <p>
                   Xem Danh Sach Khach Hang:
                    <a href="/khach-hang/hien-thi" style="text-decoration: none" class="btn btn-primary">Xem </a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="tenNguoiNhan" class="col-sm-2 col-form-label">Ten Nguoi Nhan:</form:label>
            <div class="col-sm-10">
                <input type="text" name="tenNguoiNhan" value="${addHoaDon.tenNguoiNhan}" class="form-control"
                       placeholder="Nhap Ten Nguoi Nhan"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="diaChi" class="col-sm-2 col-form-label">Dia Chi:</form:label>
            <div class="col-sm-10">
                <input type="text" name="diaChi" value="${addHoaDon.diaChi}" class="form-control"
                       placeholder="Nhap Dia Chi"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="sdt" class="col-sm-2 col-form-label">SDT:</form:label>
            <div class="col-sm-10">
                <input type="text" name="sdt" value="${addHoaDon.sdt}" class="form-control"
                       placeholder="Nhap So Dien Thoai"/>
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-success" onsubmit="" type="submit">Tao Hoa Don</form:button>
    </form:form>
</div>

</body>
</html>
