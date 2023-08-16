<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>

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
<%--    <link rel="shortcut icon" href="../image/logo.png" type="image/x-icon">--%>
    <title>Them Dong SP</title>
</head>
<body>

<div class="container" style="height: 500px;">
    <h3>Them Dong SP</h3>
    <p>
         Khong Them <a href="/dong-sp/hien-thi" style="text-decoration: none" class="btn btn-danger">Ve Trang Chu</a><br>
    </p>
    <form:form action="/dong-sp/add" method="post" modelAttribute="addDongSP"
               onsubmit="if(!confirm('Ban Muon Them?')){
                            return false
                        }else{
                            alert('Them Thanh Cong');
                        }">
        <div class="form-group row">
            <form:label path="tenDongSP" class="col-sm-2 col-form-label">Ten Dong SP:</form:label>
            <div class="col-sm-10">
                <input type="text" name="tenDongSP" class="form-control" value="${addDongSP.tenDongSP}" placeholder="Nhap Ten Dong SP"/>
                <form:errors path="tenDongSP"/><br>
            </div>
        </div>
        <br>

        <form:button class="btn btn-primary" type="reset">Lam Moi</form:button>
        <form:button class="btn btn-primary" onsubmit="" type="submit">Them</form:button>
    </form:form>
</div>

</body>
</html>
