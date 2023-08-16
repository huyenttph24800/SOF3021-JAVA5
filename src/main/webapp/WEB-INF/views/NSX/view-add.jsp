<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Them Nha San Xuat</title>
</head>
<body>

<div class="container" style="height: 500px;">
    <h3>Them Nha San Xuat</h3>
    <p>
      <a href="/nsx/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang
        Chu</a><br>
    </p>
    <form:form action="/nsx/add" method="post" modelAttribute="addNSX"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">

        <div class="form-group row">
            <form:label path="tenNSX" class="col-sm-2 col-form-label">Ten Nha San Xuat</form:label>
            <div class="col-sm-10">
                <form:input path="tenNSX"  class="form-control" placeholder="Nhap Ten Nha San Xuat" /><br>
                <form:errors path="tenNSX"/><br>
            </div>
        </div>
        <form:button class="btn btn-primary" style="text-decoration: none" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-primary"  style="text-decoration: none" onsubmit="" type="submit">Them </form:button>
    </form:form>
</div>

</body>
</html>
