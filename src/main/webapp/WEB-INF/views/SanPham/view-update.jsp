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
    <title>Cap Nhat San Pham</title>
</head>
<body>

<div class="container" style="height: 630px;">
    <h3>Cap Nhat San Pham</h3>
    <p>
     <a href="/san-pham/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve
        Trang Chu</a><br>
    </p>
    <form:form action="/san-pham/update" method="post" modelAttribute="detailSanPham"
               onsubmit="if(!confirm('Ban Muon Cap Nhat?')){
                            return false
                        }else{
                            alert('Cap Nhat Thanh Cong');
                        }">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Id</label>
            <div class="col-sm-10">
                    ${detailSanPham.idSanPham}<br>
                <input type="hidden" name="idSanPham" class="form-control" value="${detailSanPham.idSanPham}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ma</label>
            <div class="col-sm-10">
                    ${detailSanPham.maSanPham}
                <input type="hidden" name="maSanPham" class="form-control" value="${detailSanPham.maSanPham}"/>
            </div>
        </div>
        <br>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten</label>
            <div class="col-sm-10">
                <input type="text" name="tenSanPham" class="form-control" value="${detailSanPham.tenSanPham}"/>
                <form:errors path="tenSanPham"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-success" onsubmit="" type="submit">Cap Nhat San Pham</form:button>
    </form:form>
</div>

</body>
</html>
