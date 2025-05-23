<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Login</title>

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

    <!-- Icons & Bootstrap -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

    <!-- Custom CSS -->
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
        z-index: 1;">
    </div>

    <!-- Form nằm trên -->
    <div class="container h-100 position-relative" style="z-index: 2;">
        <div class="row h-100 justify-content-center align-items-center">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card" style="border-radius: 1rem; background-color: rgba(255, 255, 255, 0.8);">
                    <div class="card-body p-4 p-lg-5 text-black">
                        <div class="text-center mb-4">
                            <span class="h1 fw-bold" style="color: blue;">HUIT</span>
                        </div>
                        <h5 class="fw-normal mb-3 pb-3 text-center" style="letter-spacing: 1px;">Đăng nhập</h5>
                        <c:if test="${param.error != null}">
                            <div class="my-2" style="color: red;">
                                Mật khẩu hoặc tài khoản không chính xác
                            </div>
                        </c:if>
                        <form method="post" action="/login">
                            <div class="form-outline mb-4">
                                <input type="text" class="form-control form-control-lg" name="username" required />
                                <label class="form-label">Tài Khoản</label>
                            </div>

                            <div class="form-outline mb-4">
                                <input type="password" class="form-control form-control-lg" name="password" required />
                                <label class="form-label">Mật Khẩu</label>
                            </div>

                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                            <div class="pt-1 mb-4 d-grid">
                                <button class="btn btn-lg btn-primary" type="submit">Đăng nhập</button>
                            </div>
                        </form>
                    </div> <!-- card-body -->
                </div> <!-- card -->
            </div> <!-- col -->
        </div> <!-- row -->
    </div> <!-- container -->
</section>

</body>
</html>
