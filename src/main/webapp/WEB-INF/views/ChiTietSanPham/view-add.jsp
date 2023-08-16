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

    <title>Them San Pham Chi Tiet</title>
</head>
<body>

<div class="container" style="height: 800px;">
    <h3>Them San Pham</h3>
    <p>
         <a href="/ctsp/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang
        Chu</a><br>
    </p>
    <form:form action="/ctsp/add" method="post" modelAttribute="addCTSP"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">

        <div class="form-group row">
            <form:label path="sanPham" class="col-sm-2 col-form-label"> Ten San Pham: </form:label>
            <div class="col-sm-6">
                <select name="sanPham" ${addCTSP.sanPham} class="form-control">
                    <c:forEach items="${listSanPham}" var="cbbSanPham">
                        <option value="${cbbSanPham.idSanPham}">${cbbSanPham.tenSanPham}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-4">
                <p>
                    Danh Sach San Pham:
                    <a href="/san-pham/hien-thi" style="text-decoration: none" class="btn btn-primary">Xem Tai Day</a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="nsx" class="col-sm-2 col-form-label"> Ten NSX: </form:label>
            <div class="col-sm-6">
                <select name="nsx" ${addCTSP.nsx} class="form-control">
                    <c:forEach items="${listNSX}" var="cbbNSX">
                        <option value="${cbbNSX.idNSX}">${cbbNSX.tenNSX}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-4">
                <p>
                    Danh Sach Nha San Xuat:
                    <a href="/nsx/hien-thi" style="text-decoration: none" class="btn btn-primary">Xem Tai Day</a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="mauSac" class="col-sm-2 col-form-label"> Ten Mau Sac: </form:label>
            <div class="col-sm-6">
                <select name="mauSac" ${addCTSP.mauSac} class="form-control">
                    <c:forEach items="${listMS}" var="cbbMauSac">
                        <option value="${cbbMauSac.idMS}">${cbbMauSac.tenMS}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-4">
                <p>
                    Danh Sach Mau Sac:
                    <a href="/mau-sac/hien-thi" style="text-decoration: none" class="btn btn-primary">Xem Tai Day</a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="dongSP" class="col-sm-2 col-form-label"> Ten Dong San Pham: </form:label>
            <div class="col-sm-6">
                <select name="dongSP" ${addCTSP.dongSP} class="form-control">
                    <c:forEach items="${listDongSP}" var="cbbDongSP">
                        <option value="${cbbDongSP.idDongSP}">${cbbDongSP.tenDongSP}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-sm-4">
                <p>
                    Danh Sach Dong San Pham:
                    <a href="/dong-sp/hien-thi" style="text-decoration: none" class="btn btn-primary">Xem Tai Day</a>
                </p>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="namBh" class="col-sm-2 col-form-label">Nam Bao Hanh:</form:label>
            <div class="col-sm-10">
                <input type="text" name="namBh" class="form-control" value="${addCTSP.namBh}"
                       placeholder="Nhap Nam Bao Hanh"/>
                <form:errors path="namBh"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="moTa" class="col-sm-2 col-form-label">Mo Ta:</form:label>
            <div class="col-sm-10">
                <textarea type="text" name="moTa" class="form-control" value="${addCTSP.moTa}"
                          placeholder="Nhap Mo Ta San Pham"></textarea>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="soLuongTon" class="col-sm-2 col-form-label">So Luong Ton:</form:label>
            <div class="col-sm-10">
                <input type="text" name="soLuongTon" class="form-control" value="${addCTSP.soLuongTon}"
                       placeholder="Nhap So Luong Cua San Pham"/>
                <form:errors path="soLuongTon"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="giaNhap" class="col-sm-2 col-form-label">Gia Nhap:</form:label>
            <div class="col-sm-10">
                <input type="text" name="giaNhap" value="${addCTSP.giaNhap}" class="form-control"
                       placeholder="Nhap Gia Nhap Vào Cua San Pham"/>
                <form:errors path="giaNhap"/><br>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <form:label path="giaBan" class="col-sm-2 col-form-label">Gia Ban:</form:label>
            <div class="col-sm-10">
                <input type="text" name="giaBan" class="form-control" value="${addCTSP.giaBan}"
                       placeholder="Nhap Gia Ban Của San Pham"/>
                <form:errors path="giaBan"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-success" onsubmit="" type="submit">Them </form:button>
    </form:form>
</div>

</body>
</html>
