<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Cap Nhat Nhan Vien</title>
</head>
<body>

<div class="container" style="height: 1200px;">
    <h3>Cap Nhat Nhan Vien</h3>
    <p>
        <a href="/nhan-vien/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang Chu</a><br>
    </p>
    <form:form action="/nhan-vien/update" method="post" modelAttribute="detailNhanVien"
               onsubmit="if(!confirm('Ban Muon Cap Nhat?')){
                            return false
                        }else{
                            alert('Cap Nhat Thanh Cong');
                        }">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Id Nhan Vien</label>
            <div class="col-sm-10">
                    ${detailNhanVien.idNhanVien}<br>
                <input type="hidden" name="idNhanVien" class="form-control" value="${detailNhanVien.idNhanVien}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ma Nhan Vien</label>
            <div class="col-sm-10">
                    ${detailNhanVien.maNhanVien}
                <input type="hidden" name="maNhanVien" class="form-control" value="${detailNhanVien.maNhanVien}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ho Nhan Vien</label>
            <div class="col-sm-10">
                <input type="text" name="hoNhanVien" class="form-control" value="${detailNhanVien.hoNhanVien}"/>
                <form:errors path="hoNhanVien"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten Dem Nhan Vien</label>
            <div class="col-sm-10">
                <input type="text" name="tenDemNhanVien" class="form-control" value="${detailNhanVien.tenDemNhanVien}"/>
                <form:errors path="tenDemNhanVien"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten Nhan Vien</label>
            <div class="col-sm-10">
                <input type="text" name="tenNhanVien" class="form-control" value="${detailNhanVien.tenNhanVien}"/>
                <form:errors path="tenNhanVien"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Gioi Tinh</label>
            <div class="col-sm-10">
                <input type="radio" name="gioiTinh" value="true" ${detailNhanVien.gioiTinh == true ? "checked" : ""}/>Nam
                <input type="radio" name="gioiTinh" value="false" ${detailNhanVien.gioiTinh == false ? "checked" : ""}/>Nu
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ngay Sinh</label>
            <div class="col-sm-10">
                <input type="date" name="ngaySinh" class="form-control" value="${detailNhanVien.ngaySinh}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Dia Chi</label>
            <div class="col-sm-10">
                <input type="text" name="diaChi" class="form-control" value="${detailNhanVien.diaChi}"/>
                <form:errors path="diaChi"/><br>
            </div>
        </div>
        <br>

        <input type="hidden" name="passWord" value="${detailNhanVien.passWord}">

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">SDT</label>
            <div class="col-sm-10">
                <input type="text" name="sdt" class="form-control" value="${detailNhanVien.sdt}"/>
                <form:errors path="sdt"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Cua Hang</label>
            <div class="col-sm-10">
                <select name="cuaHang" class="form-control">
                    <option value="">Chon Cua Hang</option>
                    <c:forEach items="${listCH}" var="cbbCuaHang">
                        <option value="${cbbCuaHang.idCuaHang}" ${detailNhanVien.cuaHang.idCuaHang == cbbCuaHang.idCuaHang ? "selected" : ""}>${cbbCuaHang.tenCuaHang}</option>
                    </c:forEach>
                </select>
                <form:errors path="cuaHang"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Chuc Vu</label>
            <div class="col-sm-10">
                <select name="chucVu" class="form-control">
                    <option value="">Chon Chuc Vu</option>
                    <c:forEach items="${listCV}" var="cbbChucVu">
                        <option value="${cbbChucVu.idChucVu}" ${detailNhanVien.chucVu.idChucVu == cbbChucVu.idChucVu ? "selected" : ""}>${cbbChucVu.tenChucVu}</option>
                    </c:forEach>
                </select>
                <form:errors path="chucVu"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Trang Thai</label>
            <div class="col-sm-10">
                <input type="radio" name="trangThai" value="0" ${detailNhanVien.trangThai == 0 ? "checked" : ""}/>Dang
                Di Lam
                <input type="radio" name="trangThai" value="1" ${detailNhanVien.trangThai == 1 ? "checked" : ""}/>Da
                Nghi
                <form:errors path="hoNhanVien"/><br>
            </div>
        </div>
        <br>
        <form:button class="btn btn-success" type="submit">Cap Nhat</form:button>
        <%--        <form:button class="" onsubmit="" type="submit">Cap Nhat Nhan Vien</form:button>--%>
    </form:form>
</div>

</body>
</html>
