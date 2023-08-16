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
    <title>Them Nhan Vien</title>
</head>
<body>

<div class="container" style="height: 1140px;">
    <h3>Them Nhan Vien</h3>
    <p>
       <a href="/nhan-vien/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang
        Chu</a><br>
    </p>
    <form:form action="/nhan-vien/add" method="post" modelAttribute="addNhanVien"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">
        <div class="form-group row">
            <form:label path="hoNhanVien" class="col-sm-2 col-form-label">Ho Nhan Vien:</form:label>
            <div class="col-sm-10">
                <input type="text" name="hoNhanVien" class="form-control" value="${addNhanVien.hoNhanVien}" placeholder="Nhap Ho Nhan Vien"/>
                <form:errors path="hoNhanVien"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="tenDemNhanVien" class="col-sm-2 col-form-label">Ten Dem Nhan Vien:</form:label>
            <div class="col-sm-10">
                <input type="text" name="tenDemNhanVien" class="form-control" value="${addNhanVien.tenDemNhanVien}" placeholder="Nhap Ten Dem Nhan Vien"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="tenNhanVien" class="col-sm-2 col-form-label">Ten Nhan Vien:</form:label>
            <div class="col-sm-10">
                <input type="text" name="tenNhanVien" class="form-control" value="${addNhanVien.tenNhanVien}" placeholder="Nhap Ten Nhan Vien"/>
                <form:errors path="tenNhanVien"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="gioiTinh" class="col-sm-2 col-form-label">Gioi Tinh:</form:label>
            <div class="col-sm-10">
                <input type="radio" name="gioiTinh" value="true" ${addNhanVien.gioiTinh} checked=""/>Nam
                <input type="radio" name="gioiTinh" value="false" ${addNhanVien.gioiTinh}/>Nu
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="ngaySinh" class="col-sm-2 col-form-label">Ngay Thang Nam Sinh:</form:label>
            <div class="col-sm-10">
                <input type="date" name="ngaySinh" value="${addNhanVien.ngaySinh}" class="form-control"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="diaChi" class="col-sm-2 col-form-label">Dia Chi:</form:label>
            <div class="col-sm-10">
                <input type="text" name="diaChi" class="form-control" value="${addNhanVien.diaChi}" placeholder="Nhap Dia Chi Nhan Vien"/>
                <form:errors path="diaChi"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="sdt" class="col-sm-2 col-form-label">SDT:</form:label>
            <div class="col-sm-10">
                <input type="text" name="sdt" class="form-control" value="${addNhanVien.sdt}" placeholder="Nhap SDT Nhan Vien"/>
                <form:errors path="sdt"/>
            </div>
        </div>
        <br>

<%--        <div class="form-group row">--%>
<%--            <form:label path="userName" class="col-sm-2 col-form-label">UserName:</form:label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="text" name="userName" class="form-control" value="${addNhanVien.userName}" placeholder="Nhap UserName Nhan Vien"/>--%>
<%--                <form:errors path="userName"/>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <br>--%>

        <div class="form-group row">
            <form:label path="passWord" class="col-sm-2 col-form-label">PassWord:</form:label>
            <div class="col-sm-10">
                <input type="password" name="passWord" class="form-control" value="${addNhanVien.passWord}" placeholder="Nhap PassWord Nhan Vien"/>
                <form:errors path="passWord"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="cuaHang" class="col-sm-2 col-form-label">Ten Cua Hang:</form:label>
            <div class="col-sm-6">
                <select name="cuaHang" ${addNhanVien.cuaHang} class="form-control">
                    <option value="">Chon Cua Hang</option>
                    <c:forEach items="${listCH}" var="cbbCuaHang">
                        <option value="${cbbCuaHang.idCuaHang}">${cbbCuaHang.tenCuaHang}</option>
                    </c:forEach>
                </select>
                <form:errors path="cuaHang"/><br>
            </div>
            <div class="col-sm-4">
                <p>
                    Danh Sach Cua Hang:
                    <a href="/cua-hang/hien-thi" style="text-decoration: none" class="btn btn-danger">Xem Cua Hang</a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="chucVu" class="col-sm-2 col-form-label"> Ten Chuc Vu: </form:label>
            <div class="col-sm-6">
                <select name="chucVu" ${addNhanVien.chucVu} class="form-control">
                    <option value="">Chon Chuc Vu</option>
                    <c:forEach items="${listCV}" var="cbbChucVu">
                        <option value="${cbbChucVu.idChucVu}">${cbbChucVu.tenChucVu}</option>
                    </c:forEach>
                </select>
                <form:errors path="chucVu"/><br>
            </div>
            <div class="col-sm-4">
                <p>
                     Danh Sach Chuc Vu:
                    <a href="/chuc-vu/hien-thi" style="text-decoration: none" class="btn btn-danger">Xem Chuc Vu</a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="trangThai" class="col-sm-2 col-form-label">Trang Thai: </form:label>
            <div class="col-sm-10">
                <input type="radio" name="trangThai" value="0" ${addNhanVien.trangThai} checked=""/>Dang Di Lam
                <input type="radio" name="trangThai" value="1" ${addNhanVien.trangThai}/>Da Nghi
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-success" onsubmit="" type="submit">Them Nhan Vien</form:button>
    </form:form>
</div>

</body>
</html>
