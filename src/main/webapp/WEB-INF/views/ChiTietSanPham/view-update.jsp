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

    <title>Cap Nhat Chi Tiet San Pham</title>
</head>
<body>

<div class="container" style="height: 1200px;">
    <h3>Cap Nhat Chi Tiet San Pham</h3>
    <p>
        Ban Khong Muon Cap Nhat Nua: <a href="/ctsp/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve
        Trang Chu</a><br>
    </p>
    <form:form action="/ctsp/update" method="post" modelAttribute="detailChiTietSP"
               onsubmit="if(!confirm('Ban Muon Cap Nhat?')){
                            return false
                        }else{
                            alert('Cap Nhat Thanh Cong');
                        }">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Id San Pham Chi Tiet</label>
            <div class="col-sm-10">
                    ${detailChiTietSP.idCTSP}<br>
                <input type="hidden" name="idCTSP" class="form-control" value="${detailChiTietSP.idCTSP}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">San Pham</label>
            <div class="col-sm-10">
                <select name="sanPham" class="form-control">
                    <c:forEach items="${listSanPham}" var="cbbSanPham">
                        <option value="${cbbSanPham.idSanPham}" ${detailChiTietSP.sanPham.idSanPham == cbbSanPham.idSanPham ? "selected" : ""}>${cbbSanPham.tenSanPham}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Nha San Xuat</label>
            <div class="col-sm-10">
                <select name="nsx" class="form-control">
                    <c:forEach items="${listNSX}" var="cbbNSX">
                        <option value="${cbbNSX.idNSX}" ${detailChiTietSP.nsx.idNSX == cbbNSX.idNSX ? "selected" : ""}>${cbbNSX.tenNSX}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Mau Sac</label>
            <div class="col-sm-10">
                <select name="mauSac" class="form-control">
                    <c:forEach items="${listMS}" var="cbbMauSac">
                        <option value="${cbbMauSac.idMS}" ${detailChiTietSP.mauSac.idMS == cbbMauSac.idMS ? "selected" : ""}>${cbbMauSac.tenMS}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Dong San Pham</label>
            <div class="col-sm-10">
                <select name="dongSP" class="form-control">
                    <c:forEach items="${listDongSP}" var="cbbDongSP">
                        <option value="${cbbDongSP.idDongSP}" ${detailChiTietSP.dongSP.idDongSP == cbbDongSP.idDongSP ? "selected" : ""}>${cbbDongSP.tenDongSP}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Nam Bao Hanh</label>
            <div class="col-sm-10">
                <input type="text" name="namBh" class="form-control" value="${detailChiTietSP.namBh}"/>
                <form:errors path="namBh"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Mo Ta</label>
            <div class="col-sm-10">
                <input type="text" name="moTa" class="form-control" value="${detailChiTietSP.moTa}">
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">So Luong Ton Kho</label>
            <div class="col-sm-10">
                <input type="text" name="soLuongTon" class="form-control" value="${detailChiTietSP.soLuongTon}"/>
                <form:errors path="soLuongTon"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Gia Nhap</label>
            <div class="col-sm-10">
                <input type="text" name="giaNhap" class="form-control" value="${detailChiTietSP.giaNhap}"/>
                <form:errors path="giaNhap"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Gia Ban</label>
            <div class="col-sm-10">
                <input type="text" name="giaBan" class="form-control" value="${detailChiTietSP.giaBan}"/>
                <form:errors path="giaBan"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-success" onsubmit="" type="submit">Cap Nhat Chi Tiet</form:button>
    </form:form>
</div>

</body>
</html>
