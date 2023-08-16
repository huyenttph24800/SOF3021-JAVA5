<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Them Khach Hang</title>
</head>
<body>

<div class="container" style="height: 1080px;">
    <h3>Them Khach Hang</h3>
    <p>
 <a href="/khach-hang/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang Chu</a><br>
    </p>
    <form:form action="/khach-hang/add" method="post" modelAttribute="addKhachHang"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">
        <div class="form-group row">
            <form:label path="hoKhachHang" class="col-sm-2 col-form-label">Ho Khach Hang: </form:label>
            <div class="col-sm-10">
                <input type="text" name="hoKhachHang" value="${addKhachHang.hoKhachHang}" class="form-control"
                       placeholder="Nhap Ho Khach Hang"/>
                <form:errors path="hoKhachHang" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="tenDemKhachHang" class="col-sm-2 col-form-label">Ten Dem Khach Hang: </form:label>
            <div class="col-sm-10">
                <input type="text" name="tenDemKhachHang" value="${addKhachHang.tenDemKhachHang}" class="form-control"
                       placeholder="Nhap Ten Dem Khach Hang"/>
                <form:errors path="tenDemKhachHang" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="tenKhachHang" class="col-sm-2 col-form-label">Ten Khach Hang: </form:label>
            <div class="col-sm-10">
                <input type="text" name="tenKhachHang" value="${addKhachHang.tenKhachHang}" class="form-control"
                       placeholder="Nhap Ten Khach Hang"/>
                <form:errors path="tenKhachHang" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="ngaySinh" class="col-sm-2 col-form-label">Ngay Sinh: </form:label>
            <div class="col-sm-10">
                <input type="date" name="ngaySinh" value="${addKhachHang.ngaySinh}" class="form-control"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="sdt" class="col-sm-2 col-form-label">So Dien Thoai: </form:label>
            <div class="col-sm-10">
                <input type="text" name="sdt" value="${addKhachHang.sdt}" class="form-control"
                       placeholder="Nhap So Dien Thoai Khach Hang"/>
                <form:errors path="sdt" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="diaChi" class="col-sm-2 col-form-label">Dia Chi: </form:label>
            <div class="col-sm-10">
                <input type="text" name="diaChi" value="${addKhachHang.diaChi}" class="form-control"
                       placeholder="Nhap Dia Chi Khach Hang"/>
                <form:errors path="diaChi" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="thanhPho" class="col-sm-2 col-form-label">Thanh Pho: </form:label>
            <div class="col-sm-10">
                <input type="text" name="thanhPho" value="${addKhachHang.thanhPho}" class="form-control"
                       placeholder="Nhap Thanh Pho Khach Hang O"/>
                <form:errors path="thanhPho" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="quocGia" class="col-sm-2 col-form-label">Quoc Gia: </form:label>
            <div class="col-sm-10">
                <input type="text" name="quocGia" value="${addKhachHang.quocGia}" class="form-control"
                       placeholder="Nhap Quoc Gia Khach Hang O"/>
                <form:errors path="quocGia" cssClass="errors"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-primary" onsubmit="" type="submit">Them Khach Hang</form:button>
    </form:form>
</div>
<br>


</body>
</html>
