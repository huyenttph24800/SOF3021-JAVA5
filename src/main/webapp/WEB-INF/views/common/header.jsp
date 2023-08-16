<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="en">
<head>
    <title>header</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="views/css/style.css">
    <script nonce="b2b378fa-85fb-4a33-a171-44243e7b27e8">(function (w, d) {
        !function (dK, dL, dM, dN) {
            dK[dM] = dK[dM] || {};
            dK[dM].executed = [];
            dK.zaraz = {deferred: [], listeners: []};
            dK.zaraz.q = [];
            dK.zaraz._f = function (dO) {
                return function () {
                    var dP = Array.prototype.slice.call(arguments);
                    dK.zaraz.q.push({m: dO, a: dP})
                }
            };
            for (const dQ of ["track", "set", "debug"]) dK.zaraz[dQ] = dK.zaraz._f(dQ);
            dK.zaraz.init = () => {
                var dR = dL.getElementsByTagName(dN)[0], dS = dL.createElement(dN),
                    dT = dL.getElementsByTagName("title")[0];
                dT && (dK[dM].t = dL.getElementsByTagName("title")[0].text);
                dK[dM].x = Math.random();
                dK[dM].w = dK.screen.width;
                dK[dM].h = dK.screen.height;
                dK[dM].j = dK.innerHeight;
                dK[dM].e = dK.innerWidth;
                dK[dM].l = dK.location.href;
                dK[dM].r = dL.referrer;
                dK[dM].k = dK.screen.colorDepth;
                dK[dM].n = dL.characterSet;
                dK[dM].o = (new Date).getTimezoneOffset();
                if (dK.dataLayer) for (const dX of Object.entries(Object.entries(dataLayer).reduce(((dY, dZ) => ({...dY[1], ...dZ[1]})), {}))) zaraz.set(dX[0], dX[1], {scope: "page"});
                dK[dM].q = [];
                for (; dK.zaraz.q.length;) {
                    const d_ = dK.zaraz.q.shift();
                    dK[dM].q.push(d_)
                }
                dS.defer = !0;
                for (const ea of [localStorage, sessionStorage]) Object.keys(ea || {}).filter((ec => ec.startsWith("_zaraz_"))).forEach((eb => {
                    try {
                        dK[dM]["z_" + eb.slice(7)] = JSON.parse(ea.getItem(eb))
                    } catch {
                        dK[dM]["z_" + eb.slice(7)] = ea.getItem(eb)
                    }
                }));
                dS.referrerPolicy = "origin";
                dS.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(dK[dM])));
                dR.parentNode.insertBefore(dS, dR)
            };
            ["complete", "interactive"].includes(dL.readyState) ? zaraz.init() : dK.addEventListener("DOMContentLoaded", zaraz.init)
        }(w, d, "zarazData", "script");
    })(window, document);</script>
</head>
<body>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
                <h2 class="heading-section">SHOP</h2>
            </div>
        </div>
    </div>
    <div class="container-fluid px-md-5">
        <div class="row justify-content-between">
            <div class="col-md-8 order-md-last">
                <div class="row">
                    <div class="col-md-6 text-center">
                        <a class="navbar-brand" href="index">Logistica <span>Architecture Agency</span></a>
                    </div>
                    <div class="col-md-6 d-md-flex justify-content-end mb-md-0 mb-3">
                        <form action="#" class="searchform order-lg-last">
                            <div class="form-group d-flex">
                                <input type="text" class="form-control pl-3" placeholder="Search">
                                <button type="submit" placeholder="" class="form-control search"><span
                                        class="fa fa-search"></span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex">
                <div class="social-media">
                    <p class="mb-0 d-flex">
                        <a href="#" class="d-flex align-items-center justify-content-center"><span
                                class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                        <a href="#" class="d-flex align-items-center justify-content-center"><span
                                class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                        <a href="#" class="d-flex align-items-center justify-content-center"><span
                                class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                        <a href="#" class="d-flex align-items-center justify-content-center"><span
                                class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                    aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav m-auto">
                    <li class="nav-item active">
                        <a href="/index" class="nav-link">Home</a></li>

                    <li class="nav-item active">
                        <a href="/nhan-vien/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Nhan vien</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/nsx/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">NSX</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/dong-sp/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Dong San Pham</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/chuc-vu/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Chuc Vu</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/cua-hang/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Cua Hang</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/mau-sac/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Mau Sac</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/khach-hang/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Khach Hang</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/ctsp/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">San Pham</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/hoa-don/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Hoa Don</span></a>
                    </li>

                    <li class="nav-item active">
                        <a href="/gio-hang/hien-thi" class="nav-link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Gio Hang</span></a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>

</section>
<script src="/views/js/jquery.min.js"></script>
<script src="/views/js/popper.js"></script>
<script src="/views/js/bootstrap.min.js"></script>
<script src="/views/js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816"
        integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw=="
        data-cf-beacon='{"rayId":"7d4215220bac1fc7","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}'
        crossorigin="anonymous"></script>
</body>
</html>

