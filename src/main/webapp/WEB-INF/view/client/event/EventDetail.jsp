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
                 <!-- <link href="/client/css/bootstrap.min.css" rel="stylesheet"> -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
        <!-- Template Stylesheet -->

        <!-- Template Stylesheet -->
        <link href="/client/css/style.css" rel="stylesheet">
    </head>
   
        <body>

        <!-- Spinner Start -->

        <!-- Spinner End -->


        <jsp:include page="../layout/header.jsp" />

        <!-- Product Detail Start -->
        <div class="container-fluid py-4 mt-0 bg-light">
            <div class="container py-4">
                <div class="row g-5 mt-3 align-items-center">
                    <!-- Image Section -->
                    <div class="col-lg-6  ">
                        <div class="border rounded overflow-hidden shadow-sm bg-white p-3">
                            <img src="/client/img/fruite-item-5.jpg" class="img-fluid w-100 rounded-3" alt="Broccoli Image">
                        </div>
                    </div>

                    <!-- Product Info Section -->
                    <div class="col-lg-6">
                        <div class="card shadow-sm border-0 rounded-4">
                            <div class="card-body">
                                <a href="#" class="btn btn-primary" >
                                    Đăng Ký 
                                </a>

                                <ul class="list-group list-group-flush fs-5">
                                    <li class="list-group-item"><strong class="text-primary">Điểm rèn luyện:</strong> 10 điểm</li>
                                    <li class="list-group-item"><strong class="text-primary">Địa điểm tổ chức:</strong> Hội trường A, Trường Đại học ABC</li>
                                    <li class="list-group-item"><strong class="text-primary">Mô tả ngắn:</strong> Buổi chia sẻ kiến thức về dinh dưỡng từ rau củ</li>
                                    <li class="list-group-item"><strong class="text-primary">Số lượng tham gia:</strong> 50 sinh viên</li>
                                    <li class="list-group-item"><strong class="text-primary">Ngày kết thúc:</strong> 30/05/2025</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Description Section -->
                <div class="mt-5">
                    <div class="card shadow-lg border-0 rounded-4">
                        <div class="card-body p-4">
                            <h4 class="card-title mb-3 text-primary">Chi Tiết</h4>
                            <p class="card-text text-justify fs-5">
                                Rau củ là món quà quý giá mà thiên nhiên ban tặng cho con người. Mỗi loại rau củ đều mang một màu sắc và hương vị 
                                riêng biệt, tạo nên sự phong phú cho bữa ăn hằng ngày. Cà rốt với màu cam rực rỡ, vị ngọt dịu và giòn tan; cải xanh 
                                thì tươi mát, hơi đắng nhẹ nhưng lại rất bổ dưỡng. Khoai tây tròn trĩnh, vỏ ngoài sần sùi nhưng bên trong bở mềm, thơm.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Detail End -->

        <!-- Footer Start -->

        <jsp:include page="../layout/footer.jsp"/>

        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/client/js/main.js"></script>
    </body>

</html>
