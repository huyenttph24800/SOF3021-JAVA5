<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <%--    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Cap Nhat Khach Hang</title>
</head>
<body>

<div class="container" style="height: 1200px;">
    <h3>Cap Nhat Khach Hang</h3>
    <p>
         <a href="/khach-hang/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve
        Trang Chu</a><br>
    </p>
    <form:form action="/khach-hang/update" method="post" modelAttribute="detailKhachHang"
               onsubmit="if(!confirm('Ban Muon Cap Nhat?')){
                            return false
                        }else{
                            alert('Cap Nhat Thanh Cong');
                        }">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Id Khach Hang</label>
            <div class="col-sm-10">
                    ${detailKhachHang.idKhachHang}<br>
                <input type="hidden" name="idKhachHang" class="form-control" value="${detailKhachHang.idKhachHang}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ma Khach Hang</label>
            <div class="col-sm-10">
                    ${detailKhachHang.maKhachHang}
                <input type="hidden" name="maKhachHang" class="form-control" value="${detailKhachHang.maKhachHang}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ho Khach Hang</label>
            <div class="col-sm-10">
                <input type="text" name="hoKhachHang" class="form-control" value="${detailKhachHang.hoKhachHang}"/>
                <form:errors path="hoKhachHang"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten Dem Khach Hang</label>
            <div class="col-sm-10">
                <input type="text" name="tenDemKhachHang" class="form-control"
                       value="${detailKhachHang.tenDemKhachHang}"/>
                <form:errors path="tenDemKhachHang"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten Khach Hang</label>
            <div class="col-sm-10">
                <input type="text" name="tenKhachHang" class="form-control" value="${detailKhachHang.tenKhachHang}"/>
                <form:errors path="tenKhachHang"/><br>
            </div>
        </div>
        <br>

<%--        <div class="form-group row">--%>
<%--            <label class="col-sm-2 col-form-label">Gioi Tinh</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="radio" name="gioiTinh" value="true" ${detailKhachHang.gioiTinh == true ? "checked" : ""}/>Nam--%>
<%--                <input type="radio" name="gioiTinh"--%>
<%--                       value="false" ${detailKhachHang.gioiTinh == false ? "checked" : ""}/>Nu--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <br>--%>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ngay Sinh</label>
            <div class="col-sm-10">
                <input type="date" name="ngaySinh" class="form-control" value="${detailKhachHang.ngaySinh}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">SDT</label>
            <div class="col-sm-10">
                <input type="text" name="sdt" class="form-control" value="${detailKhachHang.sdt}"/>
                <form:errors path="sdt"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Dia Chi</label>
            <div class="col-sm-10">
                <input type="text" name="diaChi" class="form-control" value="${detailKhachHang.diaChi}"/>
                <form:errors path="diaChi"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Thanh Pho</label>
            <div class="col-sm-10">
                <input type="text" name="thanhPho" class="form-control" value="${detailKhachHang.thanhPho}"/>
                <form:errors path="thanhPho"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Quoc Gia</label>
            <div class="col-sm-10">
                <input type="text" name="quocGia" class="form-control" value="${detailKhachHang.quocGia}"/>
                <form:errors path="quocGia"/><br>
            </div>
        </div>
        <br>

<%--        <div class="form-group row">--%>
<%--            <label class="col-sm-2 col-form-label">UserName</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                    ${detailKhachHang.userName}--%>
<%--                <input type="hidden" name="userName" class="form-control" value="${detailKhachHang.userName}"/>--%>
<%--                <form:errors path="userName"/><br>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <br>--%>

<%--        <div class="form-group row">--%>
<%--            <label class="col-sm-2 col-form-label">PassWord</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                    *********--%>
<%--                <input type="hidden" name="passWord" class="form-control" value="${detailKhachHang.passWord}"/>--%>
<%--                <form:errors path="passWord"/><br>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <br>--%>

        <form:button class="btn btn-success" onsubmit="" type="submit">Cap Nhat Khach Hang</form:button>
    </form:form>
</div>

</body>
</html>
