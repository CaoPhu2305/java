<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Homepage </title>
        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <!-- <link href="/client/css/bootstrap.min.css" rel="stylesheet"> -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
        <!-- Template Stylesheet -->
        <link href="/client/css/style.css" rel="stylesheet">
    </head>
   
    <body>
        <section class="vh-100 position-relative overflow-hidden">
        <!-- Hình nền mờ -->
        <div style="
            background-image: url('/images/avatar/iu_huit.jpg');
            background-size: cover;
            background-position: center;
            filter: blur(4px);
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            z-index: 1;
        ">
        </div>

        <!-- Form nằm trên -->
        <div class="container py-5 h-100 position-relative" style="z-index: 2;">
            <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5 mx-auto">
                <div class="card" style="border-radius: 1rem; background-color: rgba(255, 255, 255, 0.5);">
                <div class="card-body p-4 p-lg-5 text-black">
                    <form>
                    <div class="d-flex align-items-center mb-3 pb-1">
                        <span class="h1 fw-bold mb-0" style="color: blue;">HUIT</span>
                    </div>
                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Đăng nhập</h5>
                    <div class="form-outline mb-4">
                        <input type="email" class="form-control form-control-lg" />
                        <label class="form-label">Tài Khoản</label>
                    </div>
                    <div class="form-outline mb-4">
                        <input type="password" class="form-control form-control-lg" />
                        <label class="form-label">Mật Khẩu</label>
                    </div>
                        <div class="pt-1 mb-4">
                        <button class="btn btn-lg btn-block" style="background-color: #007bff; color: white;" type="button">Login</button>
                        </div>
                    </form>
                </div>
                </div>
            </div>
            </div>
        </div>
        </section>

    </body>
</html>
