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
    <title>Cap Nhat Chuc Vu</title>
</head>
<body>

<div class="container" style="height: 630px;">
    <h3>Cap Nhat Chuc Vu</h3>
    <p>
        Ban Khong Muon Cap Nhat Nua: <a href="/chuc-vu/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve
        Trang Chu</a><br>
    </p>
    <form action="/chuc-vu/update" method="post"
          onsubmit="if(!confirm('Ban Muon Cap Nhat?')){
                            return false
                        }else{
                            alert('Cap Nhat Thanh Cong');
                        }">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Id</label>
            <div class="col-sm-10">
                ${detailChucVu.idChucVu}<br>
                <input type="hidden" name="idChucVu" class="form-control" value="${detailChucVu.idChucVu}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ma</label>
            <div class="col-sm-10">
                ${detailChucVu.maChucVu}
                <input type="hidden" name="maChucVu" class="form-control" value="${detailChucVu.maChucVu}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Ten</label>
            <div class="col-sm-10">
                <input type="text" name="tenChucVu" class="form-control" value="${detailChucVu.tenChucVu}"/>
                <form:errors path="tenChucVu"/><br>
            </div>
        </div>
        <button class="btn btn-success" onsubmit="" type="submit">Cap Nhat Chuc Vu</button>
    </form>
</div>

</body>
</html>
